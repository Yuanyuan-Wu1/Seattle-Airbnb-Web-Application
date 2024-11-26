package voyage.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import voyage.dal.ListingsDao;
import voyage.dal.PriceCalendarDao;
import voyage.model.Listings;
import voyage.model.ListingsWithMinPrice;
import voyage.model.Messages;
import java.util.stream.Collectors;

/**
 * Servlet implementation class FindListings
 */
@WebServlet("/findlistings")
public class FindListings extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected ListingsDao listingsDao;
	protected PriceCalendarDao priceCalendarDao;

	@Override
	public void init() throws ServletException {
		listingsDao = ListingsDao.getInstance();
		priceCalendarDao = PriceCalendarDao.getInstance();
		
	}


	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 获取 ListingsDao 实例
		ListingsDao listingsDao = ListingsDao.getInstance();

		try {
			// 获取前20个有图片的评分最高的房源
			List<ListingsWithMinPrice> recommendations = listingsDao.getTopRatedListings(20).stream()
					.filter(listing -> listing.getListing().getPictureURL() != null
							&& !listing.getListing().getPictureURL().isEmpty())
					.limit(20)
					.collect(Collectors.toList());

			req.setAttribute("listingsWithMinPrices", recommendations);

			// 添加推荐标题
			Messages messages = new Messages();
			messages.setTitle("Top Rated Listings in Seattle");
			req.setAttribute("messages", messages);

		} catch (SQLException e) {
			e.printStackTrace();
			throw new IOException(e);
		}

		req.getRequestDispatcher("/FindListings.jsp").forward(req, resp);
	}

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Map<String, String> messages = new HashMap<String, String>();
		request.setAttribute("messages", messages);

		List<ListingsWithMinPrice> listingsWithMinPrices = new ArrayList<>();

		String nameKeywords = request.getParameter("listingname");
		if (nameKeywords == null || nameKeywords.trim().isEmpty()) {
			messages.put("success", "Please enter a valid name.");
		} else {
			try {
				// https://stackoverflow.com/questions/14290857/sql-select-where-field-contains-words
				List<Listings> listings = listingsDao.getListingsByNameKeywords(nameKeywords);
				for (Listings lst : listings) {
					double minPrice = priceCalendarDao.getMinPCByListingId(lst.getListingId());
					ListingsWithMinPrice lstWithMP = new ListingsWithMinPrice(lst, minPrice);
					listingsWithMinPrices.add(lstWithMP);
				}
			} catch (SQLException e) {
				e.printStackTrace();
				throw new IOException(e);
			}
			messages.put("success", "Displaying results for " + nameKeywords);
		}
		request.setAttribute("listingsWithMinPrices", listingsWithMinPrices);
		request.getRequestDispatcher("/FindListings.jsp").forward(request, response);
	}

}
