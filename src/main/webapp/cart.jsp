<%@ page import="java.util.Map" %>
<%@ page import="com.wepr.booking.model.Tour_TourBook" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/27/2022
  Time: 2:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="vi">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Giỏ hàng</title>

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css" integrity="sha512-NhSC1YmyruXifcj/KFRWoC561YpHpc5Jtzgvbuzx5VozKpWvQ+4nXhPdFgmx8xqexRcpAglTj9sIBWINXa8x5w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link rel="stylesheet" href="./fonts/fontawesome-free-6.1.0-web/css/all.min.css">
  <link rel="stylesheet" href="./fonts/themify-icons/themify-icons.css">


  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans:wght@200;300;400;500;600;700;900&display=swap" rel="stylesheet">

  <link href="./cart.css" rel="stylesheet">
  <script src="https://cdn.tailwindcss.com"></script>

  <script>
    tailwind.config = {
      theme: {
        extend: {
          colors: {
            orange: '#ff5b00',
            darkorange: '#e05000',
            gray: {
              100: '#f5f5f5',
              200: '',
              300: '#b2b2b2',
              400: '',
              500: '',
              600: '#757575',
              700: '',
              800: '',
              900: '',


            }
          }
        }
      }
    }
  </script>
</head>
<body>
<%@ include file="header.jsp" %>
<main class="klook-cart-main">
  <h1 class="cart-title">Giỏ hàng</h1>
  <div class="cart-content">
    <div class="cart-list-wrapper">
      <div class="cart_operator-bar">
        <label class="cart-list__node" for="AllCheckbox">
          <div class="">
            <i class="fa-solid fa-check input__check-icon"></i>
          </div>
          <input type="checkbox" value ="" id="AllCheckbox" class="appearance-none h-4 w-4 border border-gray-300 hover:border-orange rounded-sm bg-white checked:bg-orange
                        checked:border-orange focus:outline-none transition duration-200">
          <span class="all text">Tất cả</span>
        </label>
        <a href="#" class="delete-all text">Xóa dịch vụ đã chọn</a>
      </div>

      <div class="cart_list">
        <c:forEach items="${userBookTourInfors}" var="userBookTourInfor">

          <div class="cart_item" >
            <div class="cart_item-content">
              <div class="checkbox-grid-item">
                <label class="cart-list__node" for="Item-3">
                  <div class="">
                    <i class="fa-solid fa-check input__check-icon"></i>
                  </div>
                  <input type="checkbox" value ="" id="Item-3" class="appearance-none h-4 w-4 border border-gray-300 hover:border-orange rounded-sm bg-white checked:bg-orange
                                    checked:border-orange focus:outline-none transition duration-200 item-checkbox">
                </label>
              </div>
              <div class="img-grid-item">
                <a href="#">
                  <img src="https://res.klook.com/image/upload/fl_lossy.progressive,q_65,f_auto/c_fill,w_180,h_180/activities/oklw8nrqcrhpxz2bjbpv.webp" alt="" class="shopcart-cover">
                </a>
              </div>
              <div class="info-grid-item">
                <a href="#" class="info-title">${userBookTourInfor.tourName}</a>
                  <%--                <div class="info-description">Loại gói dịch vụ: Vé Vào Cổng + Cano Khứ Hồi</div>--%>
              </div>
              <div class="date-grid-item">
                <div class="date">${userBookTourInfor.dateDepartment}</div>
                <span>(Giờ địa phương)</span>
              </div>
              <div class="guest-grid-item">
                <div class="guest-category">
                  <span class="guest-title">Trẻ em (100 - 139 cm)</span>
                  <input type="number" class="guest-amount children-amount" value="${userBookTourInfor.child}">
                </div>
                <div class="guest-category">
                  <span class="guest-title">Người lớn</span>
                  <input type="number" class="guest-amount adult-amount" value="${userBookTourInfor.adult}">
                </div>
              </div>

            </div>
            <div class="cart_item-footer">
              <div class="footer-operator">
                <a href="#">Sửa</a>
                <a href="#" class="delete-item">Xóa</a>
              </div>
              <div class="footer-price">₫ <span class="item-price">${userBookTourInfor.getTourPrice()}</span></div>
            </div>
          </div>


        </c:forEach>

      </div>
    </div>
    <div class="payment-content">
      <div class="total-amount">
        Tổng cộng (<span id="totalAmountNumber">${userBookTourInfors.size()}</span> Đơn vị)
      </div>
      <div class="total-bill">
        ₫
        <span id="totalPrice">${amount}</span>
      </div>
      <button class="pay-now-btn">Thanh toán ngay</button>
    </div>

  </div>
</main>
</body>
<script src="./home.js" type="text/javascript"></script>
<script>
  app.startCartPage();
</script>
</html>
