<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/18/2022
  Time: 6:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- need catalog list and place list-->
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css" integrity="sha512-NhSC1YmyruXifcj/KFRWoC561YpHpc5Jtzgvbuzx5VozKpWvQ+4nXhPdFgmx8xqexRcpAglTj9sIBWINXa8x5w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="./fonts/fontawesome-free-6.1.0-web/css/all.min.css">
    <link rel="stylesheet" href="./fonts/themify-icons/themify-icons.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans:wght@200;300;400;500;600;700;900&display=swap" rel="stylesheet">


    <link href="./home.css" rel="stylesheet">


    <script src="https://cdn.tailwindcss.com"></script>
    <script>
        tailwind.config = {
            theme: {
                extend: {
                    colors: {
                        orange: '#ff5b00',
                        darkorange: '#e05000'
                    }
                }
            }
        }
    </script>

    <title>Klook</title>
</head>
<body>
<div class="klook-home">

    <%@ include file="header.jsp" %>

    <main class="klook-main">
        <div class="klook-main__header" style="background-image:url('https://res.klook.com/image/upload/fl_lossy.progressive,q_85/c_fill,,w_1920,/v1656398779/web3.0/experiences/category_Things_to_do.jpg');">
            <div class="header-main-container">

                <div class="header-container">
                    <div class="header__title">
                        <h1 class="title__heading">Vui chơi & giải trí</h1>
                        <p class="title__description">Check in điểm tham quan nổi tiếng, khám phá tour và nhiều hơn nữa ở Việt Nam</p>
                    </div>
                    <form method="post" action="search" id="MainForm">
                        <div class="header__search-box rounded-md">

                            <i class="ti-search"></i>

                            <input id="SearchInput" class="focus:outline-none appearance-none w-full text-sm leading-6 text-slate-900
                            rounded-md shadow-sm"
                                   type="text" aria-label="Filter projects" placeholder="Bạn muốn tham gia hoạt động gì ở VIỆT NAM ?">

                            <button type="submit" class="btn hover:bg-darkorange rounded-md bg-orange search-btn">
                                <span>Tìm kiếm</span>
                            </button>
                        </div>
                    </form>

                </div>
            </div>
        </div>

        <div class="klook-main__body">
            <div class="experience-sections body__menu-wrapper" id="SubVerticalMenu">

                <button class="menu__prev-btn swipe__btn btn--disabled">
                    <i class="ti-angle-left"></i>
                </button>

                <div class="body__menu">
                    <div class="body__menu-items">
                        <c:forEach items = "${Catalogs}" var="item">
                            <div class="menu__item hover-effect">
                                <a href="/Web_Project_MVC_war_exploded/cate?id=${item.catalogID}" class="menu__item-link">
                                    <img src="${item.getCatalogImageUrl()}" alt="" class="menu__item-img">
                                    <span>${item.getCatalogName()}</span>
                                </a>
                            </div>
                        </c:forEach>
                    </div>
                </div>

                <button class="menu__next-btn swipe__btn">
                    <i class="ti-angle-right"></i>
                </button>

            </div>

            <div class="experience-sections" id="TopDestination">
                <div class="top-destination__title section-header"><h1>Top điểm du lịch tại VIỆT NAM</h1></div>

                <div class="top-destination-wrapper">
                    <button class="top-destination__prev-btn swipe__btn btn--disabled">
                        <i class="ti-angle-left"></i>
                    </button>
                    <div class="top-destination">
                    <div class="top-destination__items">

                        <c:forEach items = "${Places}" var = "place">
                            <a href="/Web_Project_MVC_war_exploded/city?id=${place.placeID}" class="top-destination__link ">
                                <div class="top-destination__item hover-effect" style="background-image: url('${place.getPlaceImageUrl()}');">
                                    <div class="top-destination__item-cover"></div>
                                    <div class="top-destination__item-text">
                                        <div class="top-destination__item-title">
                                            <p>${place.getPlaceName()}</p>
                                        </div>
                                    </div>
                                </div>
                            </a>

                        </c:forEach>
                    </div>



                    </div>
                    <button class="top-destination__next-btn swipe__btn">
                        <i class="ti-angle-right"></i>
                    </button>

                </div>
            </div>

            <div class="experience-sections" id="ThemeActivity_List">
                <div class="theme-activity__heading section-header">
                    <h1 class="theme-activity__title">Bạn không nên bỏ lỡ</h1>
                </div>

                <div class="theme-activity__body">



                    <div class="theme-activity__category-wrapper">
                        <button class="category-swiper__prev-btn swipe__btn btn--disabled" id="best-seller__prev-btn">
                            <i class="ti-angle-left"></i>
                        </button>
                        <button class="category-swiper__next-btn swipe__btn" id="best-seller__next-btn">
                            <i class="ti-angle-right"></i>
                        </button>
                        <div class="theme-activity__category">

                            <div class="category-info">
                                <div class="category-info__icon">
                                    <img src="https://res.klook.com/image/upload/v1604053241/ued/ttd/recommended%20section/icon_ttd_recommend_bestseller_fill_sxl_colorful.png" alt="">
                                </div>
                                <h1 class="category-info__title" style="color:#FF9D26;">Bán chạy</h1>
                            </div>
                               <div class="category-swiper-wrapper">
                                   <div class="category-swiper">
                                       <div class="category-swiper__items best-seller" id="BestSeller">
                                           <c:forEach items="${Tours}" var="item">
                                               <a href="tour?Id=${item.tourID}" class="category-swiper__item-wrapper" has-tag="${item.policy}" is-discounting="${item.tourOldPrice != null}">
                                                   <div class="category-swiper__item hover-effect">
                                                       <div class="item__heading" style="background-image: url('https://res.klook.com/image/upload/c_fill,w_550,h_308/fl_lossy.progressive,q_85,f_auto/activities/lvnxfcz989rlat8jndf0.webp')"></div>
                                                       <div class="item__body">
                                                           <div class="item__body--top">
                                                               <div class="item__title">
                                                                   <span>${item.tourName}</span>
                                                               </div>
                                                               <div class="item__activity">
                                                                    <span class="item__activity-score">
                                                                        <i class="fa-solid fa-star"></i>
                                                                        <span class="activity-score__rate">4.8</span>
                                                                    </span>
                                                                   <span class="item__activity-review">
                                                                        (
                                                                        <span class="activity-review__number">15K+</span>
                                                                    &nbsp;  đánh giá)
                                                                   </span>
                                                               </div>
                                                           </div>
                                                           <div class="item__body--bottom">
                                                               <div class="item-price-box">
                                                                   <span class="item-price-box__sell-price-box">₫&nbsp
                                                                       <span class="sell-price__value">
                                                                               <fmt:formatNumber type = "number" maxFractionDigits = "0" value = "${item.tourPrice}" />
                                                                       </span>
                                                                   </span>
                                                                   <span class="item-price-box__old-price-box">₫&nbsp
                                                                       <span class="old-price__value">
                                                                               <fmt:formatNumber type = "number" maxFractionDigits = "0" value = "${item.tourOldPrice}" />
                                                                       </span>
                                                                   </span>
                                                               </div>
                                                               <div class="item__tagging-wrapper">
                                                                   <div class="item__tagging">
                                                                       <p>Chính sách đảm bảo về giá</p>
                                                                   </div>
                                                               </div>
                                                           </div>
                                                       </div>
                                                   </div>
                                               </a>
                                           </c:forEach>
                                       </div>

                                   </div>

                               </div>
                           </a>
                        </div>
                    </div>

                    <div class="theme-activity__category-wrapper">
                        <button class="category-swiper__prev-btn swipe__btn btn--disabled" id="book-now__prev-btn">
                            <i class="ti-angle-left"></i>
                        </button>
                        <button class="category-swiper__next-btn swipe__btn" id="book-now__next-btn">
                            <i class="ti-angle-right"></i>
                        </button>
                        <div class="theme-activity__category">

                            <div class="category-info">
                                <div class="category-info__icon">
                                    <img src="https://res.klook.com/image/upload/v1604053242/ued/ttd/recommended%20section/icon_ttd_recommend_recent_available_fill_sxl_colorful.png" alt="">
                                </div>
                                <h1 class="category-info__title" style="color:#4985E6;">Có thể đặt ngay</h1>
                            </div>

                            <div class="category-swiper-wrapper">

                                <div class="category-swiper">
                                    <div class="category-swiper__items best-seller" id="BookNow">
                                        <c:forEach items="${Tours}" var="item">
                                            <a href="tour?Id=${item.tourID}" class="category-swiper__item-wrapper" has-tag="${item.policy}" is-discounting="${item.tourOldPrice != null}">
                                                <div class="category-swiper__item hover-effect">
                                                    <div class="item__heading" style="background-image: url('https://res.klook.com/image/upload/c_fill,w_550,h_308/fl_lossy.progressive,q_85,f_auto/activities/lvnxfcz989rlat8jndf0.webp')"></div>
                                                    <div class="item__body">
                                                        <div class="item__body--top">
                                                            <div class="item__title">
                                                                <span>${item.tourName}</span>
                                                            </div>
                                                            <div class="item__activity">
                                                                    <span class="item__activity-score">
                                                                        <i class="fa-solid fa-star"></i>
                                                                        <span class="activity-score__rate">4.8</span>
                                                                    </span>
                                                                <span class="item__activity-review">
                                                                        (
                                                                        <span class="activity-review__number">15K+</span>
                                                                    &nbsp;  đánh giá)
                                                                   </span>
                                                            </div>
                                                        </div>
                                                        <div class="item__body--bottom">
                                                            <div class="item-price-box">
                                                                   <span class="item-price-box__sell-price-box">₫&nbsp
                                                                       <span class="sell-price__value">
                                                                               <fmt:formatNumber type = "number" maxFractionDigits = "0" value = "${item.tourPrice}" />
                                                                       </span>
                                                                   </span>
                                                                <span class="item-price-box__old-price-box">₫&nbsp
                                                                       <span class="old-price__value">
                                                                               <fmt:formatNumber type = "number" maxFractionDigits = "0" value = "${item.tourOldPrice}" />
                                                                       </span>
                                                                   </span>
                                                            </div>
                                                            <div class="item__tagging-wrapper">
                                                                <div class="item__tagging">
                                                                    <p>Chính sách đảm bảo về giá</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </a>
                                        </c:forEach>


                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>

                    <div class="theme-activity__category-wrapper">
                        <button class="category-swiper__prev-btn swipe__btn btn--disabled " id="new-activity__prev-btn">
                            <i class="ti-angle-left"></i>
                        </button>
                        <button class="category-swiper__next-btn swipe__btn " id="new-activity__next-btn">
                            <i class="ti-angle-right"></i>
                        </button>
                        <div class="theme-activity__category">

                            <div class="category-info">
                                <div class="category-info__icon">
                                    <img src="https://res.klook.com/image/upload/v1604053241/ued/ttd/recommended%20section/icon_ttd_recommend_new_fill_sxl_colorful.png" alt="">
                                </div>
                                <h1 class="category-info__title" style="color:#16AA77;">Hoạt động mới</h1>
                            </div>

                            <div class="category-swiper-wrapper">

                                <div class="category-swiper">
                                    <div class="category-swiper__items best-seller" id="NewActivity">
                                        <c:forEach items="${Tours}" var="item">
                                            <a href="tour?Id=${item.tourID}" class="category-swiper__item-wrapper" has-tag="${item.policy}" is-discounting="${item.tourOldPrice != null}">
                                                <div class="category-swiper__item hover-effect">
                                                    <div class="item__heading" style="background-image: url('https://res.klook.com/image/upload/c_fill,w_550,h_308/fl_lossy.progressive,q_85,f_auto/activities/lvnxfcz989rlat8jndf0.webp')"></div>
                                                    <div class="item__body">
                                                        <div class="item__body--top">
                                                            <div class="item__title">
                                                                <span>${item.tourName}</span>
                                                            </div>
                                                            <div class="item__activity">
                                                                    <span class="item__activity-score">
                                                                        <i class="fa-solid fa-star"></i>
                                                                        <span class="activity-score__rate">4.8</span>
                                                                    </span>
                                                                <span class="item__activity-review">
                                                                        (
                                                                        <span class="activity-review__number">15K+</span>
                                                                    &nbsp;  đánh giá)
                                                                   </span>
                                                            </div>
                                                        </div>
                                                        <div class="item__body--bottom">
                                                            <div class="item-price-box">
                                                                   <span class="item-price-box__sell-price-box">₫&nbsp
                                                                       <span class="sell-price__value">
                                                                               <fmt:formatNumber type = "number" maxFractionDigits = "0" value = "${item.tourPrice}" />
                                                                       </span>
                                                                   </span>
                                                                <span class="item-price-box__old-price-box">₫&nbsp
                                                                       <span class="old-price__value">
                                                                               <fmt:formatNumber type = "number" maxFractionDigits = "0" value = "${item.tourOldPrice}" />
                                                                       </span>
                                                                   </span>
                                                            </div>
                                                            <div class="item__tagging-wrapper">
                                                                <div class="item__tagging">
                                                                    <p>Chính sách đảm bảo về giá</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </a>
                                        </c:forEach>


                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>

                    <div class="theme-activity__category-wrapper">
                        <button class="category-swiper__prev-btn swipe__btn btn--disabled " id="promotion__prev-btn">
                            <i class="ti-angle-left"></i>
                        </button>
                        <button class="category-swiper__next-btn swipe__btn " id="promotion__next-btn">
                            <i class="ti-angle-right"></i>
                        </button>
                        <div class="theme-activity__category">

                            <div class="category-info">
                                <div class="category-info__icon">
                                    <img src="https://res.klook.com/image/upload/v1604053242/ued/ttd/recommended%20section/icon_ttd_recommend_discount_fill_sxl_colorful.png" alt="">
                                </div>
                                <h1 class="category-info__title" style="color:#FF5722;">Ưu đãi hấp dẫn</h1>
                            </div>

                            <div class="category-swiper-wrapper">

                                <div class="category-swiper">
                                    <div class="category-swiper__items best-seller" id="Promotion">
                                        <c:forEach items="${Tours}" var="item">
                                            <a href="tour?Id=${item.tourID}" class="category-swiper__item-wrapper" has-tag="${item.policy}" is-discounting="${item.tourOldPrice != null}">
                                                <div class="category-swiper__item hover-effect">
                                                    <div class="item__heading" style="background-image: url('https://res.klook.com/image/upload/c_fill,w_550,h_308/fl_lossy.progressive,q_85,f_auto/activities/lvnxfcz989rlat8jndf0.webp')"></div>
                                                    <div class="item__body">
                                                        <div class="item__body--top">
                                                            <div class="item__title">
                                                                <span>${item.tourName}</span>
                                                            </div>
                                                            <div class="item__activity">
                                                                    <span class="item__activity-score">
                                                                        <i class="fa-solid fa-star"></i>
                                                                        <span class="activity-score__rate">4.8</span>
                                                                    </span>
                                                                <span class="item__activity-review">
                                                                        (
                                                                        <span class="activity-review__number">15K+</span>
                                                                    &nbsp;  đánh giá)
                                                                   </span>
                                                            </div>
                                                        </div>
                                                        <div class="item__body--bottom">
                                                            <div class="item-price-box">
                                                                   <span class="item-price-box__sell-price-box">₫&nbsp
                                                                       <span class="sell-price__value">
                                                                               <fmt:formatNumber type = "number" maxFractionDigits = "0" value = "${item.tourPrice}" />
                                                                       </span>
                                                                   </span>
                                                                <span class="item-price-box__old-price-box">₫&nbsp
                                                                       <span class="old-price__value">
                                                                               <fmt:formatNumber type = "number" maxFractionDigits = "0" value = "${item.tourOldPrice}" />
                                                                       </span>
                                                                   </span>
                                                            </div>
                                                            <div class="item__tagging-wrapper">
                                                                <div class="item__tagging">
                                                                    <p>Chính sách đảm bảo về giá</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </a>
                                        </c:forEach>


                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>

                    <div class="theme-activity__category-wrapper">
                        <button class="category-swiper__prev-btn swipe__btn btn--disabled " id="dating__prev-btn">
                            <i class="ti-angle-left"></i>
                        </button>
                        <button class="category-swiper__next-btn swipe__btn " id="dating__next-btn">
                            <i class="ti-angle-right"></i>
                        </button>
                        <div class="theme-activity__category">

                            <div class="category-info">
                                <div class="category-info__icon">
                                    <img src="https://res.klook.com/image/upload/v1604053241/ued/ttd/recommended%20section/icon_ttd_recommend_couple_fill_sxl_colorful.png" alt="">
                                </div>
                                <h1 class="category-info__title" style="color:#E64340;">Hẹn hò lý tưởng</h1>
                            </div>

                            <div class="category-swiper-wrapper">

                                <div class="category-swiper">
                                    <div class="category-swiper__items best-seller" id="Dating">
                                        <c:forEach items="${Tours}" var="item">
                                            <a href="tour?Id=${item.tourID}" class="category-swiper__item-wrapper" has-tag="${item.policy}" is-discounting="${item.tourOldPrice != null}">
                                                <div class="category-swiper__item hover-effect">
                                                    <div class="item__heading" style="background-image: url('https://res.klook.com/image/upload/c_fill,w_550,h_308/fl_lossy.progressive,q_85,f_auto/activities/lvnxfcz989rlat8jndf0.webp')"></div>
                                                    <div class="item__body">
                                                        <div class="item__body--top">
                                                            <div class="item__title">
                                                                <span>${item.tourName}</span>
                                                            </div>
                                                            <div class="item__activity">
                                                                    <span class="item__activity-score">
                                                                        <i class="fa-solid fa-star"></i>
                                                                        <span class="activity-score__rate">4.8</span>
                                                                    </span>
                                                                <span class="item__activity-review">
                                                                        (
                                                                        <span class="activity-review__number">15K+</span>
                                                                    &nbsp;  đánh giá)
                                                                   </span>
                                                            </div>
                                                        </div>
                                                        <div class="item__body--bottom">
                                                            <div class="item-price-box">
                                                                   <span class="item-price-box__sell-price-box">₫&nbsp
                                                                       <span class="sell-price__value">
                                                                               <fmt:formatNumber type = "number" maxFractionDigits = "0" value = "${item.tourPrice}" />
                                                                       </span>
                                                                   </span>
                                                                <span class="item-price-box__old-price-box">₫&nbsp
                                                                       <span class="old-price__value">
                                                                               <fmt:formatNumber type = "number" maxFractionDigits = "0" value = "${item.tourOldPrice}" />
                                                                       </span>
                                                                   </span>
                                                            </div>
                                                            <div class="item__tagging-wrapper">
                                                                <div class="item__tagging">
                                                                    <p>Chính sách đảm bảo về giá</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </a>
                                        </c:forEach>


                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>

                    <div class="theme-activity__category-wrapper">
                        <button class="category-swiper__prev-btn swipe__btn btn--disabled " id="children__prev-btn">
                            <i class="ti-angle-left"></i>
                        </button>
                        <button class="category-swiper__next-btn swipe__btn " id="children__next-btn">
                            <i class="ti-angle-right"></i>
                        </button>
                        <div class="theme-activity__category">

                            <div class="category-info">
                                <div class="category-info__icon">
                                    <img src="https://res.klook.com/image/upload/v1604053242/ued/ttd/recommended%20section/icon_ttd_recommend_family_fill_sxl_colorful.png" alt="">
                                </div>
                                <h1 class="category-info__title" style="color:#BE46C2;">Dành cho trẻ em</h1>
                            </div>

                            <div class="category-swiper-wrapper">

                                <div class="category-swiper">
                                    <div class="category-swiper__items best-seller" id="Children">
                                        <c:forEach items="${Tours}" var="item">
                                            <a href="tour?Id=${item.tourID}" class="category-swiper__item-wrapper" has-tag="${item.policy}" is-discounting="${item.tourOldPrice != null}">
                                                <div class="category-swiper__item hover-effect">
                                                    <div class="item__heading" style="background-image: url('https://res.klook.com/image/upload/c_fill,w_550,h_308/fl_lossy.progressive,q_85,f_auto/activities/lvnxfcz989rlat8jndf0.webp')"></div>
                                                    <div class="item__body">
                                                        <div class="item__body--top">
                                                            <div class="item__title">
                                                                <span>${item.tourName}</span>
                                                            </div>
                                                            <div class="item__activity">
                                                                    <span class="item__activity-score">
                                                                        <i class="fa-solid fa-star"></i>
                                                                        <span class="activity-score__rate">4.8</span>
                                                                    </span>
                                                                <span class="item__activity-review">
                                                                        (
                                                                        <span class="activity-review__number">15K+</span>
                                                                    &nbsp;  đánh giá)
                                                                   </span>
                                                            </div>
                                                        </div>
                                                        <div class="item__body--bottom">
                                                            <div class="item-price-box">
                                                                   <span class="item-price-box__sell-price-box">₫&nbsp
                                                                       <span class="sell-price__value">
                                                                               <fmt:formatNumber type = "number" maxFractionDigits = "0" value = "${item.tourPrice}" />
                                                                       </span>
                                                                   </span>
                                                                <span class="item-price-box__old-price-box">₫&nbsp
                                                                       <span class="old-price__value">
                                                                               <fmt:formatNumber type = "number" maxFractionDigits = "0" value = "${item.tourOldPrice}" />
                                                                       </span>
                                                                   </span>
                                                            </div>
                                                            <div class="item__tagging-wrapper">
                                                                <div class="item__tagging">
                                                                    <p>Chính sách đảm bảo về giá</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </a>
                                        </c:forEach>


                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>


                </div>
            </div>
        </div>
    </main>

    <footer class="klook-footer">

    </footer>
</div>
</body>
<script src="./home.js" type="text/javascript"></script>
<script>
    app.startHomePage();
</script>
</html>