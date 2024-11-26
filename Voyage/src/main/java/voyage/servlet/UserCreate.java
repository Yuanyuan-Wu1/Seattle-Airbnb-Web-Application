package voyage.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import voyage.dal.UsersDao;
import voyage.model.Users;

@WebServlet("/usercreate")
public class UserCreate extends HttpServlet {

	protected UsersDao usersDao;

	@Override
	public void init() throws ServletException {
		usersDao = UsersDao.getInstance();
	}

	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// Map for storing messages.
		Map<String, String> messages = new HashMap<String, String>();
		req.setAttribute("messages", messages);
		// Just render the JSP.
		req.getRequestDispatcher("/UserCreate.jsp").forward(req, resp);
	}

	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// Map for storing messages.
		Map<String, String> messages = new HashMap<String, String>();
		req.setAttribute("messages", messages);

		// Retrieve and validate name.
		String userName = req.getParameter("username");
		String password = req.getParameter("password");
		String email = req.getParameter("email");

		if (userName == null || userName.trim().isEmpty()) {
			messages.put("success", "Invalid UserName");
		} else {
			try {
				Users existingUser = usersDao.getUsersByUserName(userName);
				if (existingUser != null) {
					messages.put("success", "Username already exists. Please choose another one.");
					req.getRequestDispatcher("/FindUsers.jsp").forward(req, resp);
					return;
				}
				Users user = new Users(userName, password, email);
				user = usersDao.create(user);
				messages.put("success", "Successfully created " + userName + ". Please login.");
				req.getSession().setAttribute("messages", messages);
				resp.sendRedirect("findlistings");  // 重定向到页面
				return;
			} catch (SQLException e) {
				messages.put("success", "Failed to create user. Please try again.");
				req.getRequestDispatcher("/FindUsers.jsp").forward(req, resp);
				return;
			}
		}
		req.getRequestDispatcher("/UserCreate.jsp").forward(req, resp);
	}
}
