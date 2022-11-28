<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600;700&display=swap" rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">

    <title>Tour Adminstration</title>
</head>
<body>

<div class="container-xxl position-relative bg-white d-flex p-0" style="margin: auto">
    <!-- Sidebar Start -->
    <div class="sidebar pe-4 pb-3">
        <nav class="navbar bg-light navbar-light">
            <a href="index.html" class="navbar-brand mx-4 mb-3">
                <h3 class="text-primary"><i class="fa fa-hashtag me-2"></i>TOUR</h3>
            </a>
            <div class="d-flex align-items-center ms-4 mb-4">
                <div class="position-relative">
                    <img class="rounded-circle" src="img/user.jpg" alt="" style="width: 40px; height: 40px;">
                    <div class="bg-success rounded-circle border border-2 border-white position-absolute end-0 bottom-0 p-1"></div>
                </div>
                <div class="ms-3">
                    <h6 class="mb-0">Trần Phước Nhân</h6>
                    <span>Admin</span>
                </div>
            </div>
            <div class="nav flex-column navbar-nav w-100  me-4" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                <button class="nav-link nav-item active" id="v-pills-home-tab" data-bs-toggle="pill" data-bs-target="#v-pills-home" type="button" role="tab" aria-controls="v-pills-home" aria-selected="true">Dashboard</button>
                <button class="nav-link nav-item" id="v-pills-profile-tab" data-bs-toggle="pill" data-bs-target="#v-pills-profile" type="button" role="tab" aria-controls="v-pills-profile" aria-selected="false">Users</button>
                <button class="nav-link nav-item" id="v-pills-messages-tab" data-bs-toggle="pill" data-bs-target="#v-pills-messages" type="button" role="tab" aria-controls="v-pills-messages" aria-selected="false">Tours</button>
                <button class="nav-link nav-item" id="v-pills-settings-tab" data-bs-toggle="pill" data-bs-target="#v-pills-settings" type="button" role="tab" aria-controls="v-pills-settings" aria-selected="false">Charts</button>
            </div>
        </nav>
    </div>
    <!-- Sidebar End -->
    <!-- Content Start -->
    <div class="content">
        <!-- Navbar Start -->
        <nav class="navbar navbar-expand bg-light navbar-light sticky-top px-4 py-0">
            <a href="admin.html" class="navbar-brand d-flex d-lg-none me-4">
                <h2 class="text-primary mb-0"><i class="fa fa-hashtag"></i></h2>
            </a>
            <a href="#" class="sidebar-toggler flex-shrink-0">
                <i class="fa fa-bars"></i>
            </a>
            <form class="d-none d-md-flex ms-4">
                <input class="form-control border-0" type="search" placeholder="Search">
            </form>
            <div class="navbar-nav align-items-center ms-auto">

                <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
                        <i class="fa fa-bell me-lg-2"></i>
                        <span class="d-none d-lg-inline-flex">Notificatin</span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-end bg-light border-0 rounded-0 rounded-bottom m-0">
                        <a href="#" class="dropdown-item">
                            <h6 class="fw-normal mb-0">Profile updated</h6>
                            <small>15 minutes ago</small>
                        </a>
                        <hr class="dropdown-divider">
                        <a href="#" class="dropdown-item">
                            <h6 class="fw-normal mb-0">New user added</h6>
                            <small>15 minutes ago</small>
                        </a>
                        <hr class="dropdown-divider">
                        <a href="#" class="dropdown-item">
                            <h6 class="fw-normal mb-0">Password changed</h6>
                            <small>15 minutes ago</small>
                        </a>
                        <hr class="dropdown-divider">
                        <a href="#" class="dropdown-item text-center">See all notifications</a>
                    </div>
                </div>
                <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle d-flex justify-content-center align-items-center" data-bs-toggle="dropdown">
                        <img class="rounded-circle me-lg-2" src="img/user.jpg" alt="" style="width: 40px; height: 40px;">
                        <span class="d-none d-lg-inline-flex ">Tran Phuoc Nhan</span>
                    </a>
                    <div class="dropdown-menu dropdown-menu-end bg-light border-0 rounded-0 rounded-bottom m-0">
                        <a href="#" class="dropdown-item">My Profile</a>
                        <a href="#" class="dropdown-item">Settings</a>
                        <a href="#" class="dropdown-item">Log Out</a>
                    </div>
                </div>
            </div>
        </nav>
        <!-- Navbar End -->

        <div class="tab-content" id="v-pills-tabContent">
            <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
                <!-- Sale & Revenue Start -->
                <div class="container-fluid pt-4 px-4">
                    <div class="row g-4">
                        <div class="col-sm-6 col-xl-3">
                            <div class="bg-light rounded d-flex align-items-center justify-content-between p-4">
                                <i class="fa fa-chart-line fa-3x text-primary"></i>
                                <div class="ms-3">
                                    <p class="mb-2">Total Tour</p>
                                    <h6 class="mb-0">1234</h6>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-xl-3">
                            <div class="bg-light rounded d-flex align-items-center justify-content-between p-4">
                                <i class="fa fa-chart-bar fa-3x text-primary"></i>
                                <div class="ms-3">
                                    <p class="mb-2">Total User</p>
                                    <h6 class="mb-0">1234</h6>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-6 col-xl-3">
                            <div class="bg-light rounded d-flex align-items-center justify-content-between p-4">
                                <i class="fa fa-chart-area fa-3x text-primary"></i>
                                <div class="ms-3">
                                    <p class="mb-2">Today Receipt</p>
                                    <h6 class="mb-0">$1234</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Sale & Revenue End -->


                <!-- Sales Chart Start -->
                <div class="container-fluid pt-4 px-4">
                    <div class="row g-4">
                        <div class="col-sm-12 col-xl-6">
                            <div class="bg-light text-center rounded p-4">
                                <div class="d-flex align-items-center justify-content-between mb-4">
                                    <h6 class="mb-0">Tour Chart</h6>
                                    <a href="">Show All</a>
                                </div>
                                <canvas id="worldwide-sales"></canvas>
                            </div>
                        </div>
                        <div class="col-sm-12 col-xl-6">
                            <div class="bg-light text-center rounded p-4">
                                <div class="d-flex align-items-center justify-content-between mb-4">
                                    <h6 class="mb-0">User Chart</h6>
                                    <a href="">Show All</a>
                                </div>
                                <canvas id="salse-revenue"></canvas>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Sales Chart End -->



                <!-- Recent Sales End -->

            </div>
            <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">
                <div class="table-responsive">
                    <div class="mb-4 me-4 p-4"> USER MANAGER</div>
                    <table class="table text-start align-middle table-bordered table-hover mb-0">
                        <thead>
                        <tr class="text-dark">

                            <th scope="col">Date</th>
                            <th scope="col">User</th>
                            <th scope="col">Tour Name</th>
                            <th scope="col">Total Price</th>
                            <th scope="col">Status</th>
                            <th scope="col">Action</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>

                            <td>01 Jan 2045</td>
                            <td>Trần Phước Nhân</td>
                            <td>Đồng Tháp</td>
                            <td>$123</td>
                            <td>Paid</td>
                            <td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
                        </tr>
                        <tr>

                            <td>01 Jan 2045</td>
                            <td>Trần Phước Nhân</td>
                            <td>Đồng Tháp</td>
                            <td>$123</td>
                            <td>Paid</td>
                            <td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
                        </tr>
                        <tr>

                            <td>01 Jan 2045</td>
                            <td>Trần Phước Nhân</td>
                            <td>Đồng Tháp</td>
                            <td>$123</td>
                            <td>Paid</td>
                            <td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
                        </tr>
                        <tr>

                            <td>01 Jan 2045</td>
                            <td>Trần Phước Nhân</td>
                            <td>Đồng Tháp</td>
                            <td>$123</td>
                            <td>Paid</td>
                            <td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
                        </tr>
                        <tr>

                            <td>01 Jan 2045</td>
                            <td>Trần Phước Nhân</td>
                            <td>Đồng Tháp</td>
                            <td>$123</td>
                            <td>Paid</td>
                            <td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>


            <div class="tab-pane fade" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab">
                <div class="table-responsive">
                    <div class="mb-4 me-4 p-4"> TOUR MANAGER</div>
                    <table class="table text-start align-middle table-bordered table-hover mb-0">
                        <thead>
                        <tr class="text-dark">

                            <th scope="col">Tour Name</th>
                            <th scope="col">Tour Price</th>
                            <th scope="col">Tour Old Price</th>
                            <th scope="col">Policy</th>
                            <th scope="col">Description</th>

                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>Tour Sai Gon</td>
                            <td>1900000</td>
                            <td>2000000</td>
                            <td></td>
                            <td>no description</td>
                            <td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
                        </tr>

                        </tbody>
                    </table>
                </div>
                <div  id="form_Edit">
                    <form>
                        <div class="form-row">
                            <div class="col-md-4 mb-3">
                                <label for="validationDefault01">Tour name</label>
                                <input type="text" class="form-control" id="validationDefault01" placeholder="Tour name" value="Mark" required>
                            </div>
                            <div class="col-md-4 mb-3">
                                <label for="validationDefault02">Tour price</label>
                                <input type="text" class="form-control" id="validationDefault02" placeholder="Tour price" value="Otto" required>
                            </div>
                            <div class="col-md-4 mb-3">
                                <label for="validationDefaultUsername">Tour old price</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text" id="inputGroupPrepend2">@</span>
                                    </div>
                                    <input type="text" class="form-control" id="validationDefaultUsername" placeholder="Tour old price" aria-describedby="inputGroupPrepend2" required>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-md-6 mb-3">
                                <label for="validationDefault03">Description</label>
                                <input type="text" class="form-control" id="validationDefault03" placeholder="Description" required>
                            </div>
                            <div class="col-md-3 mb-3">
                                <label for="validationDefault04">Policy</label>
                                <input type="text" class="form-control" id="validationDefault04" placeholder="Policy" required>
                            </div>
                            <div class="col-md-3 mb-3">
                                <label for="validationDefault05">Schedule</label>
                                <input type="text" class="form-control" id="validationDefault05" placeholder="Schedule" required>
                            </div>
                            <div id="newInputfield">
                                <input type="text" style="margin:10px;" class="form-control" id="newInput" placeholder="Image Url" required>
                            </div>
                        </div>
                        <div style="display:flex; justify-content: space-around;">
                            <button class="btn btn-primary " style="color:orange" onclick="RemoveInputfield()">Remove link image</button>
                            <button class="btn btn-primary " style="color:orange" onclick="AddInputfield()">Add link image</button>
                            <button class="btn btn-primary " type="submit" style="color:orange">Edit</button>
                            <button class="btn btn-primary" type="submit" style="color:orange">Add</button>
                        </div>
                    </form>

                </div>

            </div>
            <div class="tab-pane fade" id="v-pills-settings" role="tabpanel" aria-labelledby="v-pills-settings-tab">
                <div class="table-responsive">
                    <table class="table text-start align-middle table-bordered table-hover mb-0">
                        <thead>
                        <tr class="text-dark">

                            <th scope="col">Date</th>
                            <th scope="col">User</th>
                            <th scope="col">Tour Name</th>
                            <th scope="col">Total Price</th>
                            <th scope="col">Status</th>
                            <th scope="col">Action</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>

                            <td>01 Jan 2045</td>
                            <td>Trần Phước Nhân</td>
                            <td>Đồng Tháp</td>
                            <td>$123</td>
                            <td>Paid</td>
                            <td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
                        </tr>
                        <tr>

                            <td>01 Jan 2045</td>
                            <td>Trần Phước Nhân</td>
                            <td>Đồng Tháp</td>
                            <td>$123</td>
                            <td>Paid</td>
                            <td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
                        </tr>
                        <tr>

                            <td>01 Jan 2045</td>
                            <td>Trần Phước Nhân</td>
                            <td>Đồng Tháp</td>
                            <td>$123</td>
                            <td>Paid</td>
                            <td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
                        </tr>
                        <tr>

                            <td>01 Jan 2045</td>
                            <td>Trần Phước Nhân</td>
                            <td>Đồng Tháp</td>
                            <td>$123</td>
                            <td>Paid</td>
                            <td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
                        </tr>
                        <tr>

                            <td>01 Jan 2045</td>
                            <td>Trần Phước Nhân</td>
                            <td>Đồng Tháp</td>
                            <td>$123</td>
                            <td>Paid</td>
                            <td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
                        </tr>
                        </tbody>
                    </table>
                </div>

            </div>
        </div>
    </div>
</body>

<!-- JavaScript Libraries -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="lib/chart/chart.min.js"></script>
<script src="lib/easing/easing.min.js"></script>
<script src="lib/waypoints/waypoints.min.js"></script>
<script src="lib/owlcarousel/owl.carousel.min.js"></script>
<script src="lib/tempusdominus/js/moment.min.js"></script>
<script src="lib/tempusdominus/js/moment-timezone.min.js"></script>
<script src="lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>



<!-- Template Javascript -->
<script src="js/main.js"></script>
<script src="https://cdn.tailwindcss.com"></script>
<script>
    tailwind.config = {
        theme: {
            extend: {
                colors: {
                    clifford: "#da373d",
                },
            },
        },
    };
</script>
<script>
    function AddInputfield(){
        let newInput = document.createElement('input');
        newInput.type = 'text';
        newInput.style = 'margin: 10px';
        newInput.placeholder = 'Image Url'
        newInput.classList.add('form-control');
        newInput.classList.add('new-input');
        newInput.name = "Image_Url";

        let newInputField = document.getElementById("newInputfield");
        newInputField.appendChild(newInput);

    }
    function RemoveInputfield(){
        let newInputList = document.querySelector('.new-input');
        let newInputField = document.getElementById("newInputfield");
        newInputField.removeChild(newInputList)
    }
</script>
</html>