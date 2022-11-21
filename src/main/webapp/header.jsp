<%--
  Created by IntelliJ IDEA.
  User: tpnha
  Date: 11/21/2022
  Time: 2:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Header</title>
</head>
<body>
<header class="klook-header-wrapper">
    <div class="klook-header">
        <nav class="navbar">
            <div class="navbar--left">
                <img class="navbar__logo" src="./img/logo.png">
                <div class="navbar__search-box">
                    <input type="text" class="search-box__input" placeholder="Tìm theo điểm đến, hoạt động">

                    <button class="search-box__btn">
                        <i class="ti-search"></i>
                    </button>

                    <div class="search-box-recommendation-wrapper">
                        <div class="search-box-recommendation">
                            <div class="search-group">
                                <p class="search-box__heading">Lịch sử tìm kiếm</p>
                                <ul class="search-box__list">
                                    <li class="search-box__item">hồ chí minh</li>
                                    <li class="search-box__item">săn mây đà lạt</li>
                                </ul>
                            </div>

                            <div class="search-group">
                                <p class="search-box__heading">Phổ biến nhất</p>
                                <ul class="search-box__list">
                                    <li class="search-box__item">sim thai lan</li>
                                    <li class="search-box__item">thai lan</li>
                                    <li class="search-box__item">seoul</li>
                                    <li class="search-box__item">phuket</li>

                                    <li class="search-box__item">sapa</li>

                                    <li class="search-box__item">bali</li>
                                    <li class="search-box__item">da nang</li>

                                    <li class="search-box__item">ba na hill</li>

                                    <li class="search-box__item">bali</li>
                                </ul>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <div class="navbar--right">
                <div class="navbar-item">
                    <a href="#" class="navbar-link">Mở ứng dụng</a>
                </div>
                <div class="navbar-item">
                    <a href="#" class="navbar-link">Trợ giúp</a>
                </div>
                <div class="navbar-item">
                    <a href="#" class="navbar-link">Xem gần đây</a>
                </div>

                <div>
                    <div class="navbar-item">
                        <a href="#" class="navbar-link">Đăng ký</a>
                    </div>

                    <div class="navbar-item navbar-item--orange">
                        <a href="#" class="navbar-link">Đăng nhập</a>
                    </div>
                </div>

                <div class="navbar-item cart-item">
                    <a href="#" class="navbar-link">Giỏ hàng</a>
                    <div class="navbar-cart-wrapper dropdown-wrapper">
                        <div class="navbar-cart--empty">
                            <img src="./img/cart-svgrepo-com.svg" alt="">
                            <span>Giỏ hàng đang trống</span>
                            <button class="cart-item__btn hover:bg-darkorange">Xem giỏ hàng</button>
                        </div>
                    </div>
                </div>

                <div class="navbar-item">
                    <div class="navbar-user">
                        <img src="https://cf.shopee.vn/file/4aa3f33c6dc594a324f893e1f5224057_tn" alt="" class="navbar-user-img">
                        <div class="navbar-user-option dropdown-wrapper">
                            <ul class="user__option-list">
                                <li class="user__option-item">
                                    <a href="" class="">
                                        Đơn hàng
                                    </a>
                                </li>
                                <li class="user__option-item">
                                    <a href="" class="">
                                        Mã ưu đãi
                                    </a>
                                </li>
                                <li class="user__option-item">
                                    <a href="" class="">
                                        Credit
                                    </a>
                                </li>
                                <li class="user__option-item">
                                    <a href="" class="">
                                        Phiếu quà tặng Klook
                                    </a>
                                </li>
                                <li class="user__option-item">
                                    <a href="" class="">
                                        Yêu thích
                                    </a>
                                </li>
                                <li class="user__option-item">
                                    <a href="" class="">
                                        Đánh giá
                                    </a>
                                </li>
                                <li class="user__option-item">
                                    <a href="" class="">
                                        Tích lũy diểm thưỏng
                                    </a>
                                </li>
                                <li class="user__option-item">
                                    <a href="" class="">
                                        Cài đặt
                                    </a>
                                </li>
                                <li class="user__option-item log-out"><a href="" class="">Đăng xuất</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </nav>
    </div>

</header>
</body>
</html>
