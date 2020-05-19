<%@ page language="java" contenttype="text/html; charset=UTF-8" pageencoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>画廊</title>
    <!-- Styles -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700|Poppins:400,600" rel="stylesheet">
    <!-- favicon and touch icons -->
    <link rel="shortcut icon" href="assets/images/favicon.ico">
    <!-- Bootstrap -->
    <link href="plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="plugins/slick/slick.css" rel="stylesheet">
    <link href="plugins/slick-nav/slicknav.css" rel="stylesheet">
    <link href="plugins/wow/animate.css" rel="stylesheet">
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <link href="assets/css/theme.css" rel="stylesheet"> </head>

<body class="">
    <div id="page-loader">
        <div class="loaders"> <img src="assets/images/loader/3.gif" alt="First Loader"><img src="assets/images/loader/4.gif" alt="First Loader"> </div>
    </div>
    <header id="site-header">
        <div id="site-header-top">
            <div class="container">
                <div class="row"> </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <figure id="site-logo">
                        <a href="index.jsp"><img src="assets/images/logo.png" alt="Logo"> </a>
                    </figure>
                </div>
                <div class="col-md-6 col-sm-8">
                    <nav id="site-nav" class="nav navbar-default">
                        <ul class="nav navbar-nav">
                            <li><a href="index.jsp">首页</a></li>
                            <li><a href="property-listing.jsp">精准找房</a></li>
                            <li><a href="pricing.jsp">我要问价</a></li>
                            <li><a href="gallery.jsp">画廊</a></li>
                            <li><a href="contact.jsp">联系我们</a></li>
                        </ul>
                    </nav>
                </div>
                <div class="col-md-3 col-sm-4">
                    <div class="contact-in-header clearfix"> <i class="fa fa-mobile"></i><span> 现在立马打电话！ <br/><strong>18709523768</strong>
</span> </div>
                </div>
            </div>
        </div>
    </header>
    <!-- 横幅 -->
    <div id="site-banner" class="text-center clearfix">
        <div class="container">
            <h1 class="title">漫漫画廊</h1>
            <ol class="breadcrumb">
                <li><a href="index.jsp">宜人首页</a></li>
                <li class="active">小屋画廊</li>
            </ol>
        </div>
    </div>
    <div id="blog-listing" class="grid-style">
        <header class="section-header text-center">
            <div class="container">
                <div class="controls text-center pull-left" data-wow-duration="1s"> <span class="control active" data-filter="all">All Types</span> <span class="control" data-filter=".a1"> Apartment</span> <span class="control" data-filter=".a2">Condo</span> <span class="control" data-filter=".a3">Farm</span> <span class="control" data-filter=".a4">Townhouse</span> <span class="control" data-filter=".a5">Villa</span> <span class="control" data-filter=".a6">office</span> </div>
                <div class="pull-right">
                    <p class="pull-left layout-view"> 视图： <i class="fa fa-th selected" data-layout="4"></i> <i class="fa fa-th-large" data-layout="6"></i> </p>
                </div>
            </div>
        </header>
        <div class="container">
            <div class="row">
                <div id="filter-container">
                    <div class='col-md-4 col-sm-6 layout-item-wrap mix a1'>
                        <article class="gallery-item property layout-item clearfix wow slideInUp">
                            <a class="clearfix zoom" href="single-property.html"> <img data-action="zoom" src="assets/images/property/1.jpg" alt="Property Image"> </a> <span class="btn btn-warning btn-sale">for sale</span> </article>
                    </div>
                    <div class='col-md-4 col-sm-6 layout-item-wrap mix a2'>
                        <article class="gallery-item property layout-item clearfix wow slideInUp">
                            <a class="clearfix zoom" href="single-property.html"> <img data-action="zoom" src="assets/images/property/2.jpg" alt="Property Image"></a> <span class="btn btn-warning btn-sale">for sale
	</span> </article>
                    </div>
                    <div class='col-md-4 col-sm-6 layout-item-wrap mix a3'>
                        <article class="gallery-item property layout-item clearfix wow slideInUp">
                            <a class="clearfix zoom" href="single-property.html"><img data-action="zoom" src="assets/images/property/3.jpg" alt="Property Image"></a><span class="btn btn-warning btn-sale">for sale</span></article>
                    </div>
                    <div class='col-md-4 col-sm-6 layout-item-wrap mix a4'>
                        <article class="gallery-item property layout-item clearfix wow slideInUp">
                            <a class="clearfix zoom" href="single-property.html"><img data-action="zoom" src="assets/images/property/4.jpg" alt="Property Image"></a><span class="btn btn-warning btn-sale">for sale</span></article>
                    </div>
                    <div class='col-md-4 col-sm-6 layout-item-wrap mix a5'>
                        <article class="gallery-item property layout-item clearfix wow slideInUp">
                            <a class="clearfix zoom" href="single-property.html"><img data-action="zoom" src="assets/images/property/5.jpg" alt="Property Image"></a><span class="btn btn-warning btn-sale">for sale</span></article>
                    </div>
                    <div class='col-md-4 col-sm-6 layout-item-wrap mix a6'>
                        <article class="gallery-item property layout-item clearfix wow slideInUp">
                            <a class="clearfix zoom" href="single-property.html"><img data-action="zoom" src="assets/images/property/6.jpg" alt="Property Image"></a><span class="btn btn-warning btn-sale">for sale</span></article>
                    </div>
                    <div class='col-md-4 col-sm-6 layout-item-wrap mix a7'>
                        <article class="gallery-item property layout-item clearfix wow slideInUp">
                            <a class="clearfix zoom" href="single-property.html"><img data-action="zoom" src="assets/images/property/7.jpg" alt="Property Image"></a> <span class="btn btn-warning btn-sale">for sale</span></article>
                    </div>
                    <div class='col-md-4 col-sm-6 layout-item-wrap mix a8'>
                        <article class="gallery-item property layout-item clearfix wow slideInUp">
                            <a class="clearfix zoom" href="single-property.html"><img data-action="zoom" src="assets/images/property/8.jpg" alt="Property Image"></a> <span class="btn btn-warning btn-sale">for sale</span> </article>
                    </div>
                    <div class='col-md-4 col-sm-6 layout-item-wrap mix a9'>
                        <article class="gallery-item property layout-item clearfix wow slideInUp">
                            <a class="clearfix zoom" href="single-property.html"> <img data-action="zoom" src="assets/images/property/9.jpg" alt="Property Image"> </a> <span class="btn btn-warning btn-sale">for sale</span> </article>
                    </div>
                </div>
            </div>
            <ul id="pagination" class="text-center clearfix">
                <li class="disabled"><a href="#">Previous</a></li>
                <li><a href="#">1</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">Next</a></li>
            </ul>
        </div>
    </div>
    <footer id="footer">
        <div class="site-footer">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-sm-6">
                        <section class="widget about-widget clearfix">
                            <h4 class="title hide">关于我们</h4>
                            <a class="footer-logo" href="#top"><img src="assets/images/footer-logo.png" alt="Footer Logo"> </a>
                            <p> 本网站历经月余，是一个十分新鲜的网站，本网站提供花式租房信息以及租金推荐。
                                <br/> 本网站所有数据均来自于互联网，如有侵权，请联系我们，我们将在第一时间删除租房消息。
                                <br/> 我们利用百度地图API，十分便于您选择房子。 </p>
                            <ul class="social-icons clearfix">
                                <!-- 分享到推特，脸书，油管链接！ -->
                                <li><a href="#top"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#top"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#top"><i class="fa fa-pinterest"></i></a></li>
                                <li><a href="#top"><i class="fa fa-youtube-play"></i></a></li>
                            </ul>
                        </section>
                    </div>
                    <div class="col-md-4 col-sm-6">
                        <section class="widget twitter-widget clearfix">
                            <h4 class="title">最新消息</h4>
                            <p> 暂无消息！ </p>
                        </section>
                    </div>
                    <div class="col-md-4 col-sm-6">
                        <section class="widget address-widget clearfix">
                            <h4 class="title">联系电话</h4>
                            <ul>
                                <li><i class="fa fa-map-marker"></i> 陕西省西安市碑林区太乙街道</li>
                                <li><i class="fa fa-phone"></i> 18709523768</li>
                                <li><i class="fa fa-envelope"></i> 1716794359@qq.com</li>
                                <li><i class="fa fa-fax"></i> +84 8088 8461</li>
                                <li><i class="fa fa-clock-o"></i> 周一至周六: 9:00 - 18:00</li>
                            </ul>
                        </section>
                    </div>
                </div>
            </div>
        </div>
        <div class="site-footer-bottom">
            <div class="container">
                <p class="copyright pull-left wow slideInRight"> Copyright &copy; 2020宜人租房保留所有权利 </p>
                <nav class="footer-nav pull-right wow slideInLeft">
                    <ul>
                        <li><a href="#top">独人小组Team</a></li>
                        <li><a href="pricing.jsp">定价</a></li>
                        <li><a href="contact.jsp">联系我们</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </footer><a href="#top" id="scroll-top"><i class="fa fa-angle-up"></i></a>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/jquery.migrate.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="plugins/slick-nav/jquery.slicknav.min.js"></script>
    <script src="plugins/slick/slick.min.js"></script>
    <script src="plugins/jquery-ui/jquery-ui.min.js"></script>
    <script src="plugins/tweetie/tweetie.js"></script>
    <script src="plugins/forms/jquery.form.min.js"></script>
    <script src="plugins/forms/jquery.validate.min.js"></script>
    <script src="plugins/modernizr/modernizr.custom.js"></script>
    <script src="plugins/wow/wow.min.js"></script>
    <script src="plugins/zoom/zoom.js"></script>
    <script src="plugins/mixitup/mixitup.min.js"></script>
    <!---<script src="http://ditu.google.cn/maps/api/js?key=AIzaSyD2MtZynhsvwI2B40juK6SifR_OSyj4aBA&libraries=places">
    		</script>--->
    <script src="plugins/whats-nearby/source/WhatsNearby.js"></script>
    <script src="assets/js/theme.js"></script>
</body>

</html>