<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
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
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link href="./css/home.css" rel="stylesheet">
    <link rel="stylesheet" href="./detail.css">
    <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
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
        <!--Slider-->
        <div class="main_Slider">
            <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img class="d-block w-100" src="${TourImages.get(0).getTourImageUrl()}" alt="First slide">
                    </div>
                    <c:forEach items = "${TourImages}" var="tourImage">

                          <div class="carousel-item">
                              <img class="d-block w-100" src="${tourImage.getTourImageUrl()}" alt="Second slide">
                          </div>
                    </c:forEach>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
        <!--Information-->
        <div class="row information" style="text-align: justify;">
            <div class="col-7">
                <div class="promotion-system desktop" style="display:flex;justify-content: space-between;align-items: center;">
                    <div class="tagging-wrap middle-style" >
                        <div class="tagging-box">
                            <div class="tagging-tag middle-style">
                                <div class="tagging-tag_custom" style="color:#FF5B00;border-color:#FFF0E5;background-color:rgba(255, 240, 229, 255);border-radius:4px;" >
                                    <!----> <span class="tagging-tag_text" data-v-6a705fbd="">
                                            <span >Chính sách đảm bảo về giá</span>
                                        </span> <!---->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="Tour_Name" name  = "Tour_Name" >
                    "${Tour.getTourName()}"
                </div>
                <div >
                    Hành trình 1 ngày tham quan khu di tích lịch sử Địa Đạo Củ Chi và đồng bằng sông Cửu Long
                </div>
                <div style="width:10px"></div>
                <ul style="list-style-type:circle; font-size: 13px; margin-left: 20px; list-style-type: none">
                  <li>
                        "${Tour.getTourDescription()}"
                    </li>
                </ul>

            </div>
            <div class="col-4">
                <div class="package-content">
                    <div>
                        <div class="price-package">
                                <span class="price-package-selling-price">
                                    <span>đ</span>
                                    <b id = "price">"${Tour.getTourPrice()}"</b>
                                </span>
                        </div>
                    </div>
                    <div class="banner-select-pkg-btn">
                        <button type="button" class="select-btn klk-button klk-button-primary klk-button-block" style="text-align:center; align-items: center;" ><!----> <!----> <span>
                            <span >CÁC GÓI DỊCH VỤ</span>
                        </span>
                        </button>
                    </div>
                </div>
            </div>
        </div>
        <div class="main-service">
            <div class="gap"></div>
            <div class="title">Các gói dịch vụ</div>
            <div class="gap"></div>
            <div class="row service">
                <form class="col-7 service-left">
                    <div>
                        <div style="display: flex; justify-content:space-between; margin-left: 30px;" >
                            <div style="font-size:20px;"><b>Vui lòng chọn gói dịch vụ và số lượng</b> </div>
                            <div>
                                <button class="delete-service">Xóa gói dịch vụ</button>
                            </div>
                        </div>
                        <div class="gap"></div>
                        <div>
                            <div class="label">Xin chọn ngày đi tour</div>
                            <input  class="date_input" type="date">
                        </div>
                        <div class="">
                            <div class="label">Số lượng</div>
                            <div class="main_service_quatity" style ="display:flex; justify-content:space-between;">
                                <div>Người lớn</div>
                                <input type="number" min=0 max = 10 class="input_number" value="1" onchange="Amount()" id ="adultValue">
                            </div>
                            <div class="gap"></div>
                            <div class="main_service_quatity" style ="display:flex; justify-content:space-between;">
                                <div>Trẻ con</div>
                                <input type="number" min=0 max = 10 class="input_number" value="0" onchange="Amount()" id = "childValue">
                            </div>
                            <div class="gap"></div>
                            <div class="main_service_button">
                                <div id ="amount">"${Tour.getTourPrice()}" đ</div>
                                <button>Thêm vào giỏ hàng</button>
                                <button type="submit">Đặt ngay</button>
                            </div>
                            <div> </div>
                        </div>
                    </div>
                </form>
                <div class="col-1"></div>
                <div class="col-3 service-right">
                    <div>Thông tin sản phẩm</div>
                    <h4>Bao gồm</h4>
                    <ul>
                        <li>Hướng dẫn nói - Tiếng Anh</li>
                        <li>Bữa trưa</li>
                        <li>Trung chuyển khứ hồi từ các khách sạn ở trung tâm Quận 1, 3 &amp; 4 đến địa điểm của tour</li>
                        <li>Vào cửa các điểm tham quan</li>
                        <li>Phục vụ bia, trái cây, khăn lạnh, nước suối trên xe</li>
                        <li>Đi thuyền máy</li>
                        <li>Di chuyển bằng thuyền chèo nhỏ</li>
                    </ul>
                    <h4>Không bao gồm</h4>
                    <ul>
                        <li>Chi phí cá nhân khác</li>
                        <li>Tiền típ</li>
                    </ul>
                </div>
            </div>
            <div class="gap"></div>
            <div class="title">ĐÁNH GIÁ GẦN ĐÂY</div>
            <div class="comment_header">
                <p>"${Rate}"/5</p>
                <div class="comment_header_star">
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                    <i class="fa fa-star" aria-hidden="true"></i>
                </div>
            </div>

            <c:forEach items = "${UserTourComments}" var="comment">
            <div class="gap"></div>
            <div class="comment">
                <div class="comment_avt">
                    <div class="comment_avt">
                        <img src="./img/7eda69ae2667e239bb76.jpg" alt="">
                    </div>
                    <div style="display: flex; align-items:center;">
                        <div class="comment_header_star_in_commmet">
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                            <i class="fa fa-star" aria-hidden="true"></i>
                        </div>
                        <div style="margin-left:10px" >Tôi rất hài lòng</div></div>
                    <p>Hướng dẫn viên rất thú vị, hữu ích và hài hước. Ông đã chia sẻ rất nhiều về lịch sử và văn hóa Việt Nam. Chuyến tham quan đồng bằng sông Cửu Long diễn ra tốt đẹp mặc dù trời khá nắng. May mắn là thời tiết vẫn khá tốt. Chuyến đi thuyền nhỏ khá vui vẻ và trải nghiệm tuyệt vời. Các món ăn địa phương và đồ ăn nhẹ rất tuyệt với buổi biểu diễn âm nhạc địa phương. Nhìn chung, đó là một chuyến đi thú vị nhưng nó khá mệt mỏi. Giá trị của đồng tiền.</p>
                </div>
            </div>
            <div class="gap"></d

            </c:forEach>
        </div>
    </main>

    <!--Các gói dịch vụ-->

</body>
<footer class="klook-footer">
    <div class="gap"></div>
</footer>


<script src="./js/home.js" type="text/javascript"></script>
<script>
    function Amount()
    {
        let adultValue = document.getElementById("adultValue").value;
        let childValue = document.getElementById("childValue").value;
        let price = document.getElementById("price").innerHTML.replace('"','');

        let amount = (+price)* (+adultValue) + (+price)* (+childValue)*0.5;
        document.getElementById("amount").innerHTML = amount+"đ";
        console.log(typeof(+price));
    }
</script>
<script>
    app.startHomePage();
</script>
</html>