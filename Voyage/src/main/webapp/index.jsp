<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Voyage - Your Personal Airbnb Solution</title>
  <link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
  <link rel="stylesheet" href="fontawesome-free-5.12.1-web/css/all.min.css" />
  <link rel="stylesheet" href="css/styles.css" />
</head>
<body>
<!-- 保持原有导航栏 -->
<nav class="navbar">
  <div class="nav-center">
    <div class="nav-header">
      <a href="home" class="nav-logo">
        <span class="logo-text">Voyage</span>
        <i class="fas fa-compass logo-icon"></i>
      </a>
      <button type="button" class="nav-toggle" id="nav-toggle">
        <i class="fas fa-bars"></i>
      </button>
    </div>
    <ul class="nav-links" id="nav-links">
      <li><a href="home" class="nav-link active">Home</a></li>
      <li><a href="about" class="nav-link">About</a></li>
      <li><a href="findlistings" class="nav-link">Listings</a></li>
      <li><a href="findusers" class="nav-link">Login / Sign up</a></li>
    </ul>
  </div>
</nav>

<!-- 英雄区块 -->
<div class="hero">
  <div class="hero-banner">
    <h1 class="hero-title">Find Your Perfect Stay</h1>
    <p class="hero-text">Discover unique homes and experiences in Seattle</p>
    <div class="hero-buttons">
      <a href="findlistings" class="btn hero-btn">Explore Listings</a>
      <a href="findusers" class="btn hero-btn secondary">Sign Up Now</a>
    </div>
  </div>
</div>

<!-- 特色区块 -->
<section class="features section">
  <div class="section-title">
    <h2>Why Choose <span>Voyage</span></h2>
  </div>
  <div class="features-center section-center">
    <!-- 搜索功能 -->
    <article class="feature">
      <div class="feature-icon">
        <i class="fas fa-search"></i>
      </div>
      <div class="feature-content">
        <h4 class="feature-title">Smart Search</h4>
        <p class="feature-text">Find your perfect stay with our advanced search features</p>
      </div>
    </article>

    <!-- 本地洞察 -->
    <article class="feature">
      <div class="feature-icon">
        <i class="fas fa-map-marked-alt"></i>
      </div>
      <div class="feature-content">
        <h4 class="feature-title">Local Insights</h4>
        <p class="feature-text">Explore Seattle's unique neighborhoods and communities</p>
      </div>
    </article>

    <!-- 评价系统 -->
    <article class="feature">
      <div class="feature-icon">
        <i class="fas fa-star"></i>
      </div>
      <div class="feature-content">
        <h4 class="feature-title">Verified Reviews</h4>
        <p class="feature-text">Make informed decisions with authentic guest reviews</p>
      </div>
    </article>
  </div>
</section>

<!-- 页脚 -->
<footer class="footer">
  <div class="footer-content">
    <div class="footer-section">
      <h4>About Voyage</h4>
      <p>Your trusted platform for finding the perfect Airbnb in Seattle.</p>
    </div>
    <div class="footer-section">
      <h4>Quick Links</h4>
      <ul>
        <li><a href="home">Home</a></li>
        <li><a href="about">About</a></li>
        <li><a href="findlistings">Listings</a></li>
        <li><a href="findusers">Login/Sign Up</a></li>
      </ul>
    </div>
    <div class="footer-section">
      <h4>Contact Us</h4>
      <ul>
        <li><i class="fas fa-envelope"></i> support@voyage.com</li>
        <li><i class="fas fa-phone"></i> (206) 123-4567</li>
        <li><i class="fas fa-map-marker-alt"></i> Seattle, WA</li>
      </ul>
    </div>
    <div class="footer-section">
      <h4>Follow Us</h4>
      <div class="social-links">
        <a href="#"><i class="fab fa-facebook"></i></a>
        <a href="#"><i class="fab fa-twitter"></i></a>
        <a href="#"><i class="fab fa-instagram"></i></a>
        <a href="#"><i class="fab fa-linkedin"></i></a>
      </div>
    </div>
  </div>
  <div class="footer-bottom">
    <p>&copy; 2024 Voyage. All rights reserved.</p>
  </div>
</footer>

<script src="js/app.js"></script>
</body>
</html>