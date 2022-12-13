<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Minimalist.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <meta charset="utf-8" />
    <meta name="author" content="templatemo" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;300;400;500;700;900&display=swap" rel="stylesheet" />


    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />


    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css" />
    <link rel="stylesheet" href="assets/css/templatemo-snapx-photography.css" />
    <link rel="stylesheet" href="assets/css/owl.css" />
    <link rel="stylesheet" href="assets/css/animate.css" />
    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />


</head>
<body>
    <form id="form1" runat="server">

        <header class="header-area header-sticky" style="left: 0; right: 0; top: 0">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <nav class="main-nav">
                            <!-- ***** Logo Start ***** -->
                            <a href="index.aspx" class="logo">
                                <img src="assets/images/logo.png" alt="SnapX Photography Template">
                            </a>
                            <!-- ***** Logo End ***** -->
                            <!-- ***** Menu Start ***** -->
                            <ul class="nav">
                                <li><a href="index.aspx" class="active">Home</a></li>
                                <li class="has-sub">
                                    <a href="javascript:void(0)">Photos</a>
                                    <ul class="sub-menu">
                                        <li><a href="contests.html">Contests</a></li>
                                        <li><a href="contest-details.html">Single Contest</a></li>
                                    </ul>
                                </li>
                                <li><a href="categories.html">Categories</a></li>
                                <li><a href="users.html">Users</a></li>
                            </ul>
                            <div class="border-button">
                                <a  href="Sign.aspx" class="sign-in-up"><i class="fa fa-user"></i>Sign In/Up</a>
                            </div>
                            <a class='menu-trigger'>
                                <span>Menu</span>
                            </a>
                            <!-- ***** Menu End ***** -->
                        </nav>
                    </div>
                </div>
            </div>
        </header>


        <!-- ***** Main Banner Area Start ***** -->
    <div class="main-banner">
        <div class="container">
            <div class="row">
                <div class="col-lg-10 offset-lg-1">
                    <div class="header-text">
                        <h2>Enter a world of <em>Photos</em> &amp; Amazing <em>Awards</em></h2>
                        <p>This is a Photography community from all over the world <br />
                                you can experience vibrabnt images from talented photographers.<br />
                                We deliver competetions between talents to provide a beautiful user experience <br />   
                            Enjoy.. the show
                        </p>
                        <div class="buttons">
                            <div class="big-border-button">
                                <a href="contests.html">Explore Contest</a>
                            </div>
                            <div class="icon-button">
                                <a href="https://youtube.com/templatemo" target="_blank"><i class="fa fa-play"></i>Watch Our Video Now</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ***** Main Banner Area End ***** -->


    <section class="featured-items" id="featured-items">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="owl-features owl-carousel" style="position: relative; z-index: 5;">
                        <div class="item">
                            <div class="thumb">
                                <img src="assets/images/featured-01.jpg" alt="">
                                <div class="hover-effect">
                                    <div class="content">
                                        <h4>Walk In The Nature <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><span>(4.5)</span></h4>
                                        <ul>
                                            <li><span>Contest Winner:</span> Vincent Adam</li>
                                            <li><span>Contest Author:</span> Anthony Soft</li>
                                            <li><span>Awards:</span> $1.000 + Camera Nikon</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="thumb">
                                <img src="assets/images/featured-02.jpg" alt="">
                                <div class="hover-effect">
                                    <div class="content">
                                        <h4>Smile In The Nature <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><span>(4.5)</span></h4>
                                        <ul>
                                            <li><span>Contest Winner:</span> Thomas Eddy</li>
                                            <li><span>Contest Author:</span> Anthony Soft</li>
                                            <li><span>Awards:</span> $1,200 + Canon EOS R7</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="thumb">
                                <img src="assets/images/featured-03.jpg" alt="">
                                <div class="hover-effect">
                                    <div class="content">
                                        <h4>Happy In The Nature <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><span>(4.5)</span></h4>
                                        <ul>
                                            <li><span>Contest Winner:</span> Vincent Adam</li>
                                            <li><span>Contest Author:</span> Anthony Soft</li>
                                            <li><span>Awards:</span> $1,800 + Canon EOS R6</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="thumb">
                                <img src="assets/images/featured-01.jpg" alt="">
                                <div class="hover-effect">
                                    <div class="content">
                                        <h4>Walk In The Nature <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><span>(4.5)</span></h4>
                                        <ul>
                                            <li><span>Contest Winner:</span> Thomas Eddy</li>
                                            <li><span>Contest Author:</span> Anthony Soft</li>
                                            <li><span>Awards:</span> $8,400 + Canon EOS R1</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="thumb">
                                <img src="assets/images/featured-02.jpg" alt="">
                                <div class="hover-effect">
                                    <div class="content">
                                        <h4>Run In The Nature <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><span>(4.5)</span></h4>
                                        <ul>
                                            <li><span>Contest Winner:</span> Vincent Adam</li>
                                            <li><span>Contest Author:</span> Anthony Soft</li>
                                            <li><span>Awards:</span> $5,500 + Canon EOS R3</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="thumb">
                                <img src="assets/images/featured-03.jpg" alt="">
                                <div class="hover-effect">
                                    <div class="content">
                                        <h4>Stay In The Nature <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><span>(4.5)</span></h4>
                                        <ul>
                                            <li><span>Contest Winner:</span> Thomas Eddy</li>
                                            <li><span>Contest Author:</span> Anthony Soft</li>
                                            <li><span>Awards:</span> $4,400 + Canon EOS R5</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="thumb">
                                <img src="assets/images/featured-01.jpg" alt="">
                                <div class="hover-effect">
                                    <div class="content">
                                        <h4>Walk In The Nature <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><span>(4.5)</span></h4>
                                        <ul>
                                            <li><span>Contest Winner:</span> Vincent Adam</li>
                                            <li><span>Contest Author:</span> Anthony Soft</li>
                                            <li><span>Awards:</span> $3,800 + Canon EOS R6</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="thumb">
                                <img src="assets/images/featured-02.jpg" alt="">
                                <div class="hover-effect">
                                    <div class="content">
                                        <h4>Shoot In The Nature <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><span>(4.5)</span></h4>
                                        <ul>
                                            <li><span>Contest Winner:</span> Vincent Adam</li>
                                            <li><span>Contest Author:</span> Anthony Soft</li>
                                            <li><span>Awards:</span> $2,400 + Canon EOS R7</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="thumb">
                                <img src="assets/images/featured-03.jpg" alt="">
                                <div class="hover-effect">
                                    <div class="content">
                                        <h4>Fly In The Nature <i class="fa fa-star"></i><i class="fa fa-star"></i><i class="fa fa-star"></i><span>(4.5)</span></h4>
                                        <ul>
                                            <li><span>Contest Winner:</span> Vincent Adam</li>
                                            <li><span>Contest Author:</span> Anthony Soft</li>
                                            <li><span>Awards:</span> $1,200 + Canon EOS R10</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <section class="popular-categories">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-6">
                    <div class="section-heading">
                        <h6>Our Categories</h6>
                        <h4>Check Out <em>Popular</em> Contest <em>Categories</em></h4>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="main-button">
                        <a href="categories.html">Discover All Categories</a>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="popular-item">
                        <div class="top-content">
                            <div class="icon">
                                <img src="assets/images/icon-01.png" alt="">
                            </div>
                            <div class="right">
                                <h4>Nature Pic Contest</h4>
                                <span><em>126</em> Available Contests</span>
                            </div>
                        </div>
                        <div class="thumb">
                            <img src="assets/images/popular-01.png" alt="">
                            <span class="category">Top Contest</span>
                            <span class="likes"><i class="fa fa-heart"></i>256</span>
                        </div>
                        <div class="border-button">
                            <a href="contest-details.html">Browse Nature Pic Contests</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="popular-item">
                        <div class="top-content">
                            <div class="icon">
                                <img src="assets/images/icon-02.png" alt="">
                            </div>
                            <div class="right">
                                <h4>Random Pic Contest</h4>
                                <span><em>116</em> Available Contests</span>
                            </div>
                        </div>
                        <div class="thumb">
                            <img src="assets/images/popular-02.png" alt="">
                            <span class="category">Top Contest</span>
                            <span class="likes"><i class="fa fa-heart"></i>256</span>
                        </div>
                        <div class="border-button">
                            <a href="contest-details.html">Browse Random Pic Contests</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="popular-item">
                        <div class="top-content">
                            <div class="icon">
                                <img src="assets/images/icon-03.png" alt="">
                            </div>
                            <div class="right">
                                <h4>Portrait Pic Contest</h4>
                                <span><em>164</em> Available Contests</span>
                            </div>
                        </div>
                        <div class="thumb">
                            <img src="assets/images/popular-03.png" alt="">
                            <span class="category">Top Contest</span>
                            <span class="likes"><i class="fa fa-heart"></i>256</span>
                        </div>
                        <div class="border-button">
                            <a href="contest-details.html">Browse Portrait Pic Contests</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="popular-item">
                        <div class="top-content">
                            <div class="icon">
                                <img src="assets/images/icon-04.png" alt="">
                            </div>
                            <div class="right">
                                <h4>Space Pic Contest</h4>
                                <span><em>135</em> Available Contests</span>
                            </div>
                        </div>
                        <div class="thumb">
                            <img src="assets/images/popular-04.png" alt="">
                            <span class="category">Top Contest</span>
                            <span class="likes"><i class="fa fa-heart"></i>256</span>
                        </div>
                        <div class="border-button">
                            <a href="contest-details.html">Browse Space Pic Contests</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="closed-contests">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-heading text-center">
                        <h6>Closed Photography Contests</h6>
                        <h4><em>Previous Contests</em> With Handpicked <em>Winners</em></h4>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="owl-features owl-carousel" style="position: relative; z-index: 5;">
                        <div class="item">
                            <div class="closed-item">
                                <div class="thumb">
                                    <img src="assets/images/closed-01.jpg" alt="">
                                    <span class="winner"><em>Winner:</em> Anthony Soft</span>
                                    <span class="price"><em>Award :</em> $1,600</span>
                                </div>
                                <div class="down-content">
                                    <div class="row">
                                        <div class="col-7">
                                            <h4>88 Participants
                                                    <br>
                                                <span>Number Of Artists</span></h4>
                                        </div>
                                        <div class="col-5">
                                            <h4 class="pics">320 Pictures
                                                    <br>
                                                <span>Submited Pics</span></h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="closed-item">
                                <div class="thumb">
                                    <img src="assets/images/closed-02.jpg" alt="">
                                    <span class="winner"><em>Winner:</em> Anthony Soft</span>
                                    <span class="price"><em>Award :</em> $4,200</span>
                                </div>
                                <div class="down-content">
                                    <div class="row">
                                        <div class="col-7">
                                            <h4>96 Participants
                                                    <br>
                                                <span>Number Of Artists</span></h4>
                                        </div>
                                        <div class="col-5">
                                            <h4 class="pics">410 Pictures
                                                    <br>
                                                <span>Submited Pics</span></h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="closed-item">
                                <div class="thumb">
                                    <img src="assets/images/closed-03.jpg" alt="">
                                    <span class="winner"><em>Winner:</em> Anthony Soft</span>
                                    <span class="price"><em>Award :</em> $3,200</span>
                                </div>
                                <div class="down-content">
                                    <div class="row">
                                        <div class="col-7">
                                            <h4>74 Participants
                                                    <br>
                                                <span>Number Of Artists</span></h4>
                                        </div>
                                        <div class="col-5">
                                            <h4 class="pics">284 Pictures
                                                    <br>
                                                <span>Submited Pics</span></h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="border-button text-center">
                        <a href="contests.html">Browse Open Contests</a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="pricing-plans">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-heading text-center">
                        <h6>Our Pricing</h6>
                        <h4>Photography <em>Contest Plans</em> and Price <em>Awards</em></h4>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="pricing-item">
                        <img src="assets/images/pricing-01.jpg" alt="">
                        <h4>Basic Plan</h4>
                        <ul class="first-plan">
                            <li>Lorem Ipsum Dolores Sonte</li>
                            <li>Songe Lorem Ipsum Dol</li>
                            <li>Matrios Venga Heptuss</li>
                            <li>Denim Sriracha Kogi</li>
                            <li>Digital Photography Awards</li>
                        </ul>
                        <span class="price">$25 USD</span>
                        <div class="border-button">
                            <a href="#">Choose This Plan</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="pricing-item">
                        <img src="assets/images/pricing-02.jpg" alt="">
                        <h4>Standard Plan</h4>
                        <ul class="second-plan">
                            <li>Lorem Ipsum Dolores Sonte</li>
                            <li>Songe Lorem Ipsum Dol</li>
                            <li>Matrios Venga Heptuss</li>
                            <li>Denim Sriracha Kogi</li>
                            <li>Digital Photography Awards</li>
                        </ul>
                        <span class="price">$45 USD</span>
                        <div class="border-button">
                            <a href="#">Choose This Plan</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="pricing-item">
                        <img src="assets/images/pricing-03.jpg" alt="">
                        <h4>Advanced Plan</h4>
                        <ul class="third-plan">
                            <li>Lorem Ipsum Dolores Sonte</li>
                            <li>Songe Lorem Ipsum Dol</li>
                            <li>Matrios Venga Heptuss</li>
                            <li>Denim Sriracha Kogi</li>
                            <li>Digital Photography Awards</li>
                        </ul>
                        <span class="price">$85 USD</span>
                        <div class="border-button">
                            <a href="#">Choose This Plan</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <p>
                        Copyright © 2048 <a href="#">SnapX</a> Photo Contest Co., Ltd. All rights reserved. 
          
          Design: <a title="CSS Templates" rel="sponsored" href="https://templatemo.com/page/1" target="_blank">TemplateMo</a>
                    </p>
                </div>
            </div>
        </div>
    </footer>

    <!-- Scripts -->
    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

    <script src="assets/js/isotope.min.js"></script>
    <script src="assets/js/owl-carousel.js"></script>

    <script src="assets/js/tabs.js"></script>
    <script src="assets/js/popup.js"></script>
    <script src="assets/js/custom.js"></script>



    </form>
</body>
</html>
