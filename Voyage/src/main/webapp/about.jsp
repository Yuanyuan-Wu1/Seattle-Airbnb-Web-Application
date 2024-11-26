<<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>About - Voyage</title>
  <link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
  <link rel="stylesheet" href="fontawesome-free-5.12.1-web/css/all.min.css" />
  <link rel="stylesheet" href="css/styles.css" />
</head>
<body>
<!-- 导航栏 -->
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
      <li><a href="home" class="nav-link">Home</a></li>
      <li><a href="about" class="nav-link active">About</a></li>
      <li><a href="findlistings" class="nav-link">Listings</a></li>
      <li><a href="findusers" class="nav-link">Login / Sign up</a></li>
    </ul>
  </div>
</nav>

<!-- 关于我们 -->
<section class="section about" id="about">
  <div class="section-title">
    <h2>our <span>story</span></h2>
  </div>

  <div class="section-center about-center">
    <article class="about-img">
      <div class="about-photo-container">
        <img src="./images/about.jpeg" class="about-photo" alt="Seattle view" />
      </div>
    </article>

    <article class="about-info">
      <div class="about-content">
        <h3>Our Mission</h3>
        <p>
          Voyage is your trusted companion in finding the perfect Airbnb in Seattle.
          We understand that every traveler is unique, which is why we've created
          a platform that puts your preferences first.
        </p>

        <h3>What Sets Us Apart</h3>
        <ul class="about-features">
          <li><i class="fas fa-check"></i> Advanced search capabilities</li>
          <li><i class="fas fa-check"></i> Real-time availability</li>
          <li><i class="fas fa-check"></i> Verified guest reviews</li>
          <li><i class="fas fa-check"></i> Local neighborhood insights</li>
        </ul>
      </div>
    </article>
  </div>
</section>

<script src="js/app.js"></script>
</body>
</html>