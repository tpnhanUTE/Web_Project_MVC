<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/18/2022
  Time: 7:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html lang="vi">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Top Công viên & công viên nước tại VN</title>

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css" integrity="sha512-NhSC1YmyruXifcj/KFRWoC561YpHpc5Jtzgvbuzx5VozKpWvQ+4nXhPdFgmx8xqexRcpAglTj9sIBWINXa8x5w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link rel="stylesheet" href="./fonts/fontawesome-free-6.1.0-web/css/all.min.css">
  <link rel="stylesheet" href="./fonts/themify-icons/themify-icons.css">


  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans:wght@200;300;400;500;600;700;900&display=swap" rel="stylesheet">

  <link href="./search.css" rel="stylesheet">

  <script src="https://cdn.tailwindcss.com"></script>
  <script src="https://cdn.jsdelivr.net/npm/litepicker/dist/litepicker.js"></script>

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
<div class="klook-home">
  <%@ include file="header.jsp" %>

  <main class="klook-main">
    <div class="klook-main__header">


      <div class="header__background">
        <img class="header-banner-img" src="https://res.klook.com/image/upload/fl_lossy.progressive,q_85/c_fill,w_1920,h_300/v1606978266/ued/ttd/banner/ttd_veritcal_page_banner_experiences.jpg" alt="">
      </div>

      <div class="header__title">
        <h1 class="title__heading">Vui chơi & giải trí</h1>
        <p class="title__description">Khám phá các điểm tham quan nổi tiếng, tour và nhiều hơn nữa</p>
      </div>
    </div>
    <div class="klook-main__body" >

      <nav class="flex py-4" aria-label="Breadcrumb">
        <ol class="inline-flex items-center space-x-1 md:space-x-3">
          <li class="inline-flex items-center">
            <a href="#" class="inline-flex items-center text-sm font-light text-gray-600 hover:opacity-90 ">
              Trang chủ
            </a>
          </li>
          <li aria-current="page">
            <div class="flex items-center">
              <svg class="w-6 h-6 text-gray-600" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M7.293 14.707a1 1 0 010-1.414L10.586 10 7.293 6.707a1 1 0 011.414-1.414l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0z" clip-rule="evenodd"></path></svg>
              <span class="ml-1 text-sm font-light text-gray-600 md:ml-2 opacity-80">Vui chơi & giải trí</span>
            </div>
          </li>
        </ol>
      </nav>

      <div class="klook-main-content">
        <div class="destination-category-tree bg-white">
          <div class="tree-list-item" >
            <div class="tree-list-item__title">Đã chọn</div>
            <ul class="tree-list-item__node-wrapper" id="Selected">

            </ul>

            <button class="clear-selection-btn">Clear Selection</button>
          </div>

          <div class="tree-list-item" >
            <div class="tree-list-item__title">Điểm đến</div>
            <div class="tree-list-item__node-wrapper" id="Destination">
              <c:forEach items="${destinationItems}" var="desItem">
                <label class="tree-list-item__node" for="DesCheckBox-${desItem.placeID}">
                  <div class="input__check-icon">
                    <i class="fa-solid fa-check input__check-icon"></i>
                  </div>

                  <c:if test="${desHtmlID == desItem.placeID}">
                    <input type="checkbox" checked id="DesCheckBox-${desItem.placeID}" class="appearance-none h-4 w-4 border border-gray-300 hover:border-orange rounded-sm bg-white checked:bg-orange
                  checked:border-orange focus:outline-none transition duration-200 mt-1 mr-2">
                  </c:if>
                  <c:if test="${desHtmlID != desItem.placeID}">
                    <input type="checkbox" id="DesCheckBox-${desItem.placeID}" class="appearance-none h-4 w-4 border border-gray-300 hover:border-orange rounded-sm bg-white checked:bg-orange
                  checked:border-orange focus:outline-none transition duration-200 mt-1 mr-2">
                  </c:if>
                  <span>${desItem.placeName}</span>
                </label>

              </c:forEach>
            </div>
          </div>

          <div class="tree-list-item" >
            <div class="tree-list-item__title">Danh mục</div>
            <div class="tree-list-item__node-wrapper" id="Category">
              <c:forEach items="${categoryItems}" var="cateItem">
                <label class="tree-list-item__node" for="CategoryCheckBox-${cateItem.catalogID}">
                  <div class="input__check-icon">
                    <i class="fa-solid fa-check input__check-icon"></i>
                  </div>
                  <c:if test="${cateHtmlID == cateItem.catalogID}">
                    <input type="checkbox" checked  id="CategoryCheckBox-${cateItem.catalogID}" class="appearance-none h-4 w-4 border border-gray-300 hover:border-orange rounded-sm bg-white checked:bg-orange
                checked:border-orange focus:outline-none transition duration-200 mt-1 mr-2">
                  </c:if>
                  <c:if test="${cateHtmlID != cateItem.catalogID}">
                    <input type="checkbox"  id="CategoryCheckBox-${cateItem.catalogID}" class="appearance-none h-4 w-4 border border-gray-300 hover:border-orange rounded-sm bg-white checked:bg-orange
                checked:border-orange focus:outline-none transition duration-200 mt-1 mr-2">
                  </c:if>
                  <span>${cateItem.catalogName}</span>
                </label>
              </c:forEach>
            </div>
          </div>
        </div>
        <div class="search-result-container">
          <div class="activity-count">
            <h3 class="activity-count__heading">Tìm thấy <span>...</span> hoạt động</h3>
            <div class="filter-action">
              <div class="experiences-options">
                <input type="text" id="litepicker" placeholder="Có thể đặt"/>
                <div class="filter-btn filter__price-range" id="PriceFilter">
                  <div class="filter-btn__label">Mức giá</div>
                  <div class="filter-btn__action">
                    <i class="fa-solid fa-angle-down"></i>
                    <i class="fa-solid fa-angle-up"></i>

                  </div>
                  <div class="filter-option dropdown-wrapper">
                    <!-- <div class="label">
                        <span>₫303797 - ₫1860760</span>
                    </div> -->
                    <!-- <input type="range" class="slider"> -->

                    <div class="label">
                      <span>₫</span>
                      <span id="range1">
                                                    0
                                                </span>
                      <span> &dash; </span>
                      <span>₫</span>
                      <span id="range2">
                                                    500000
                                                </span>
                    </div>
                    <div class="price-range-container">
                      <div class="slider-track"></div>
                      <input type="range" min="0" max="5000000" value="0" id="slider-1" >
                      <input type="range" min="0" max="5000000" value="500000" id="slider-2" >
                    </div>

                    <div class="control">
                      <button class="btn btn--text btn--small" id="ResetBtn">Đặt lại</button>
                      <button class="btn btn--primary btn--small" id="AcceptBtn">Đồng ý</button>

                    </div>
                  </div>
                </div>

              </div>

              <div class="sort-option">
                <span class="sort-by">Sắp xếp theo</span>
                <div class="filter-btn" id="SortBySuggestion">
                  <div class="filter-btn__label">Klook đề xuất</div>
                  <div class="filter-btn__action">
                    <i class="fa-solid fa-angle-down"></i>
                    <i class="fa-solid fa-angle-up"></i>
                  </div>

                  <div class="filter-option dropdown-wrapper">
                    <ul class="filter__option-list">
                      <li class="filter__option-item filter__option--active">
                        <a href="" class="">
                          Klook đề xuất
                        </a>
                      </li>
                      <li class="filter__option-item">
                        <a href="" class="">
                          Đặt nhiều nhất
                        </a>
                      </li>
                      <li class="filter__option-item">
                        <a href="" class="">
                          Đánh giá cao nhất
                        </a>
                      </li>
                      <li class="filter__option-item">
                        <a href="" class="">
                          Giá (thấp đến cao)
                        </a>
                      </li>
                      <li class="filter__option-item">
                        <a href="" class="">
                          Dịch vụ mới nổi bật
                        </a>
                      </li>
                    </ul>
                  </div>
                </div>

              </div>
            </div>
          </div>

          <div class="search-result-list" id="SearchList">
            <c:forEach items="${tourList}" var="item">
<<<<<<< HEAD
              <a href="tour?Id=${item.tourID}" place-data="${item.place.placeID}" class="category-swiper__item-wrapper" has-tag="${item.policy}" is-discounting="${item.tourOldPrice != null}">
=======
              <a href="tour?Id=${item.tourID}" class="category-swiper__item-wrapper" has-tag="${item.policy}" is-discounting="${item.tourOldPrice != null}">
>>>>>>> parent of 0c569df (Auxiliary commit to revert individual files from 053903a8fb9b6436193cc22356d708a8265e097c)
                <div class="category-swiper__item hover-effect">

                  <div class="item__heading" style="background-image: url('${item.defaultImage}')">
                  </div>
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
                                    &nbsp;đánh giá)
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
  </main>
</div>

</body>
<script src="./home.js" type="text/javascript"></script>
<script>
  app.startSearchPage();

  const picker = new Litepicker({
    element: document.getElementById('litepicker'),
    singleMode: false,
    tooltipText: {
      one: 'night',
      other: 'nights'
    },
    tooltipNumber: (totalDays) => {
      return totalDays - 1;
    }
  })
</script>

</html>
