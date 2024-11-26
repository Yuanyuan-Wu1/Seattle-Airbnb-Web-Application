<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login - Voyage</title>
  <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
  <link rel="stylesheet" href="fontawesome-free-5.12.1-web/css/all.min.css">
  <link rel="stylesheet" href="css/styles.css">
  <style>
    .auth-tabs {
      display: flex;
      justify-content: center;
      gap: 2rem;
      margin-bottom: 2rem;
    }

    .auth-tab {
      cursor: pointer;
      padding: 0.5rem 1rem;
      border-bottom: 2px solid transparent;
      transition: all 0.3s ease;
    }

    .auth-tab.active {
      border-bottom-color: var(--clr-primary-5);
      color: var(--clr-primary-5);
    }

    .auth-form {
      display: none;
      max-width: 400px;
      margin: 0 auto;
    }

    .auth-form.active {
      display: block;
    }

    .form-group {
      margin-bottom: 1.5rem;
    }

    .form-control {
      width: 100%;
      padding: 0.75rem;
      border: 1px solid var(--clr-grey-5);
      border-radius: var(--radius);
      margin-top: 0.5rem;
    }

    .btn-auth {
      width: 100%;
      padding: 0.75rem;
      background: var(--clr-primary-5);
      color: var(--clr-white);
      border: none;
      border-radius: var(--radius);
      cursor: pointer;
      transition: var(--transition);
    }

    .btn-auth:hover {
      background: var(--clr-primary-7);
    }

    .auth-links {
      text-align: center;
      margin-top: 1rem;
    }

    .auth-links a {
      color: var(--clr-primary-5);
      text-decoration: none;
    }

    .error {
      border-color: var(--clr-red-dark);
    }
  </style>
</head>
<body>
<nav class="navbar">
  <div class="nav-center">
    <div class="nav-header">
      <a href="home" class="nav-logo">
        <span class="logo-text">Voyage</span>
        <i class="fas fa-compass logo-icon"></i>
      </a>
      <button type="button" class="nav-toggle" id="nav-toggle" aria-label="Toggle navigation">
        <i class="fas fa-bars"></i>
      </button>
    </div>
    <ul class="nav-links" id="nav-links">
      <li><a href="home" class="nav-link">Home</a></li>
      <li><a href="about" class="nav-link">About</a></li>
      <li><a href="findlistings" class="nav-link">Listings</a></li>
      <li><a href="findusers" class="nav-link active">Login / Sign up</a></li>
    </ul>
  </div>
</nav>

  <div class="auth-container">
    <div class="auth-box">
      <c:if test="${not empty messages.success}">
        <div class="alert alert-success">${messages.success}</div>
      </c:if>
      <div class="auth-tabs">
        <button class="auth-tab active" data-tab="login">Login</button>
        <button class="auth-tab" data-tab="signup">Sign Up</button>
      </div>

    <!-- Login Form -->
      <form class="auth-form active" id="loginForm" action="findusers" method="post">
        <div class="form-group">
          <label for="loginUsername">Username</label>
          <input type="text" class="form-control" id="loginUsername" name="username" required>
        </div>
        <div class="form-group">
          <label for="loginPassword">Password</label>
          <input type="password" class="form-control" id="loginPassword" name="password" required>
        </div>
        <button type="submit" class="btn-auth">Login</button>
        <div class="auth-links">
          <a href="userupdate">Forgot Password?</a>
        </div>
      </form>

    <!-- Sign Up Form -->
      <form class="auth-form" id="signupForm" action="usercreate" method="post">
        <div class="form-group">
          <label for="signupUsername">Username</label>
          <input type="text" class="form-control" id="signupUsername" name="username" required>
        </div>
        <div class="form-group">
          <label for="signupPassword">Password</label>
          <input type="password" class="form-control" id="signupPassword" name="password" required>
        </div>
        <div class="form-group">
          <label for="signupEmail">Email</label>
          <input type="email" class="form-control" id="signupEmail" name="email" required>
        </div>
        <button type="submit" class="btn-auth">Sign Up</button>
      </form>
    </div>
  </div>

<script>
  // 性能优化：使用事件委托
  document.querySelector('.auth-tabs').addEventListener('click', function(e) {
    if (e.target.classList.contains('auth-tab')) {
      // 移除所有active类
      document.querySelectorAll('.auth-tab').forEach(tab => tab.classList.remove('active'));
      document.querySelectorAll('.auth-form').forEach(form => form.classList.remove('active'));

      // 添加active类到当前选中的标签
      e.target.classList.add('active');
      const targetForm = document.getElementById(e.target.dataset.tab + 'Form');
      if (targetForm) {
        targetForm.classList.add('active');
      }
    }
  });

  // 表单验证
  document.querySelectorAll('form').forEach(form => {
    form.addEventListener('submit', function(e) {
      const inputs = form.querySelectorAll('input[required]');
      let isValid = true;

      inputs.forEach(input => {
        if (!input.value.trim()) {
          isValid = false;
          input.classList.add('error');
        } else {
          input.classList.remove('error');
        }
      });

      if (!isValid) {
        e.preventDefault();
        alert('Please fill in all required fields');
      }
    });
  });
  // 成功消息自动消失
  document.addEventListener('DOMContentLoaded', function() {
    const alertElement = document.querySelector('.alert-success');
    if (alertElement) {
      setTimeout(() => {
        alertElement.style.opacity = '0';
        setTimeout(() => alertElement.remove(), 300);
      }, 3000);
    }
  });
</script>
</body>
</html>