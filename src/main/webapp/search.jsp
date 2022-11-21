<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 11/18/2022
  Time: 7:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
          <!-- <div class="navbar-item">
              <a href="#" class="navbar-link">Đăng ký</a>
          </div> -->

          <!-- <div class="navbar-item navbar-item--orange">
              <a href="#" class="navbar-link">Đăng nhập</a>
          </div> -->

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

            </div>
          </div>

          <div class="tree-list-item" >
            <div class="tree-list-item__title">Danh mục</div>
            <div class="tree-list-item__node-wrapper" id="Category">

            </div>
          </div>
        </div>
        <div class="search-result-container">
          <div class="activity-count">
            <h3 class="activity-count__heading">Tìm thấy <span>...</span> hoạt động</h3>
            <div class="filter-action">
              <div class="experiences-options">
                <!-- <div class="filter-btn filter__price-range">
                    <div class="filter-btn__label">Có thể đặt</div>
                    <div class="filter-btn__action">
                        <i class="fa-solid fa-angle-down"></i>
                        <i class="fa-solid fa-angle-up"></i>

                    </div>
                </div>    -->

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
