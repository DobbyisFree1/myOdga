<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="../assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    	대시보드
  </title>
  <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
  <!-- CSS Files -->
  <link href="../assets/css/material-dashboard.css?v=2.1.0" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="../assets/demo/demo.css" rel="stylesheet" />
</head>
<style>
.pic{
	max-width: 100%;
  	height: auto;
  	display: block;
}
th{
	width: 25%;
	/* text-align: center; */
}
.dark-edition .card .card-header-primary:not(.card-header-icon):not(.card-header-text) {
    background: linear-gradient(60deg, #CC2C2A, #E8413E);
    box-shadow: 0 4px 20px 0px rgba(0, 0, 0, 0.14), 0 7px 10px -5px rgba(240, 21, 21, 0.4);
}
.dark-edition .sidebar[data-color="purple"] li.active > a {
    background: linear-gradient(60deg, #CC2C2A, #E8413E); 
    box-shadow: 0 4px 20px 0px rgba(0, 0, 0, 0.14), 0 7px 10px -5px rgba(240, 21, 21, 0.4);
}
.dark-edition .card .card-header-success:not(.card-header-icon):not(.card-header-text){ /* 초록->민트 */
	background: linear-gradient(60deg, #38C18E, #31F279);
}
.dark-edition .card .card-header-success .card-icon{/* 초록->민트 */
	background: linear-gradient(60deg, #38C18E, #31F279);
}
.dark-edition .card .card-header-warning:not(.card-header-icon):not(.card-header-text){ /* 주황->노랑 */
	background: linear-gradient(60deg, #fbb000, #f7b539);
}
.dark-edition .card .card-header-warning .card-icon{ /* 주황->노랑 */
	background: linear-gradient(60deg, #fbb000, #f7b539);
}
.dark-edition .card .card-header-warning .card-icon{/* 주황->노랑 */
	background: linear-gradient(60deg, #fbb000, #f7b539);
}
.dark-edition .card .card-header-info .card-icon{/* 하늘->남색 */
	background: linear-gradient(60deg, #192251, #1d2e64);
	box-shadow: 0 4px 20px 0px rgba(0, 0, 0, 0.14), 0 7px 10px -5px rgba(25, 65, 159, 0.4);
}
.dark-edition .text-primary {
    color: #CC2C2A !important;
}
</style>
<body class="dark-edition">
  <div class="wrapper ">
    <div class="sidebar" data-color="purple" data-background-color="black" data-image="../assets/img/sidebar-2.jpg">
      <!--
        Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"

        Tip 2: you can also add an image using data-image tag
    -->
      <div class="logo"><a href="http://www.creative-tim.com" class="simple-text logo-normal">
          <img src="assets/img/logo/logo_b.png" alt="" style="max-width: 170px;">
        </a></div>
      <div class="sidebar-wrapper">
        <ul class="nav">
          <li class="nav-item active  ">
            <a class="nav-link" href="./dashboard.do">
              <i class="material-icons">dashboard</i>
              <p>대시보드</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="./user.html">
              <i class="material-icons">person</i>
              <p>User Profile</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="./memberList.do">
              <i class="material-icons">tables</i>
              <p>회원 리스트</p>
            </a>
          </li>
          <%-- <li class="nav-item ">
            <a class="nav-link" href="./tables.html?m_id=${LOGINUSER.m_id}">
              <i class="fa fa-heart"></i>
              <p>나의 좋아요</p>
            </a>
          </li> --%>
          <li class="nav-item ">
            <a class="nav-link" href="./typography.html">
              <i class="material-icons">library_books</i>
              <p>Typography</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="./icons.html">
              <i class="material-icons">bubble_chart</i>
              <p>Icons</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="./map.html">
              <i class="material-icons">location_ons</i>
              <p>Maps</p>
            </a>
          </li>
          <li class="nav-item ">
            <a class="nav-link" href="./notifications.html">
              <i class="material-icons">notifications</i>
              <p>Notifications</p>
            </a>
          </li>
          <!-- <li class="nav-item active-pro ">
                <a class="nav-link" href="./upgrade.html">
                    <i class="material-icons">unarchive</i>
                    <p>Upgrade to PRO</p>
                </a>
            </li> -->
        </ul>
      </div>
    </div>
    <div class="main-panel">
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top " id="navigation-example">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <a class="navbar-brand" href="javascript:void(0)"><i class="material-icons">dashboard</i>  관리자 대시보드</a>
          </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation" data-target="#navigation-example">
            <span class="sr-only">Toggle navigation</span>
            <span class="navbar-toggler-icon icon-bar"></span>
            <span class="navbar-toggler-icon icon-bar"></span>
            <span class="navbar-toggler-icon icon-bar"></span>
          </button>          
        </div>
      </nav>
      <!-- End Navbar -->
      <div class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-xl-4 col-lg-12">
              <div class="card card-chart">
                <div class="card-header card-header-success">
                  <!-- <div class="ct-chart" id="dailySalesChart"> --><div id="areachart"></div><!-- </div> -->
                </div>
                <div class="card-body">
                  <h4 class="card-title">선호 지역 TOP 3</h4>
                  <p class="card-category">
                    <span class="text-success"> 1위 ${areaC[0].area}. </span> 플래너에 선택되 지역 수치</p>
                </div>
                <div class="card-footer">
                  <div class="stats">
                    <i class="material-icons">access_time</i> 
                    <fmt:parseDate value="${statistic.newPlanner}" var="newP_date" pattern="yyyy-MM-dd"/>
					<fmt:parseNumber value="${newP_date.time / (1000*60*60*24)}" integerOnly="true" var="upP_date"></fmt:parseNumber>
					<fmt:parseDate value="${statistic.today}" var="now" pattern="yyyy-MM-dd"/>
					<fmt:parseNumber value="${now.time / (1000*60*60*24)}" integerOnly="true" var="nowDate"></fmt:parseNumber>
                    <c:choose>
	                    <c:when test="${(nowDate - upP_date) == 0}">                  
	                    	updated Today
	                   	</c:when>
	                   	<c:otherwise>
	                    	updated ${nowDate - upP_date} days ago
	                    </c:otherwise>
                    </c:choose>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-xl-4 col-lg-12">
              <div class="card card-chart">
                <div class="card-header card-header-warning">
                 <div id="memberchart"></div>
                </div>
                <div class="card-body">
                  <h4 class="card-title">일자 별 회원가입 수</h4>
                  <p class="card-category"><span class="text-success"><i class="fa fa-long-arrow-up"> </i> ${memberC[2].m_rdate}.</span> 일자 별 가입된 회원의 수</p>
                </div>
                <div class="card-footer">
                  <div class="stats">
                    <i class="material-icons">access_time</i>
                    <fmt:parseDate value="${statistic.newMember}" var="newM_date" pattern="yyyy-MM-dd"/>
					<fmt:parseNumber value="${newM_date.time / (1000*60*60*24)}" integerOnly="true" var="upM_date"></fmt:parseNumber>
                    <c:choose>
	                    <c:when test="${(nowDate - upM_date) == 0}">                  
	                    	updated Today
	                   	</c:when>
	                   	<c:otherwise>
	                    	updated ${nowDate - upM_date} days ago
	                    </c:otherwise>
                    </c:choose>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-xl-4 col-lg-12">
              <div class="card card-chart">
                <div class="card-header card-header-danger">
                  <div id="genderchart"></div>
                </div>
                <div class="card-body">
                  <h4 class="card-title">회원 성비 백분율</h4>
                  <p class="card-category"><span class="text-success"><i class="fa fa-long-arrow-up"></i> 남성.</span> </i>가입된 회원의 성별 비율</p>
                </div>
                <div class="card-footer">
                  <div class="stats">
                    <i class="material-icons">access_time</i>
	                    <c:choose>
		                    <c:when test="${(nowDate - upM_date) == 0}">                  
		                    	updated Today
		                   	</c:when>
		                   	<c:otherwise>
		                    	updated ${nowDate - upM_date} days ago
		                    </c:otherwise>
	                    </c:choose>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-xl-3 col-lg-6 col-md-6 col-sm-6">
              <div class="card card-stats">
                <div class="card-header card-header-warning card-header-icon">
                  <div class="card-icon">
                    <i class="material-icons">content_copy</i>
                  </div>
                  <p class="card-category">게시글 수</p>
                  <h3 class="card-title">  ${statistic.boardCnt}
                    <small>개</small>
                  </h3>
                </div>
                <div class="card-footer">
                  <div class="stats">
                    <i class="material-icons">access_time</i>
                    <fmt:parseDate value="${statistic.newBoard}" var="newB_date" pattern="yyyy-MM-dd"/>
					<fmt:parseNumber value="${newB_date.time / (1000*60*60*24)}" integerOnly="true" var="upB_date"></fmt:parseNumber>
                    <c:choose>
	                    <c:when test="${(nowDate - upB_date) == 0}">                  
	                    	updated Today
	                   	</c:when>
	                   	<c:otherwise>
	                    	updated ${nowDate - upB_date} days ago
	                    </c:otherwise>
                    </c:choose>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-xl-3 col-lg-6 col-md-6 col-sm-6">
              <div class="card card-stats">
                <div class="card-header card-header-success card-header-icon">
                  <div class="card-icon">
                    <i class="material-icons">store</i>
                  </div>
                  <p class="card-category">관광정보</p>
                  <h3 class="card-title"> ${statistic.tourCnt} 개</h3>
                </div>
                <div class="card-footer">
                  <div class="stats">
                    <i class="material-icons">access_time</i>	            
		               updated 19 days ago
                  </div>
                </div>
              </div>
            </div>
            <div class="col-xl-3 col-lg-6 col-md-6 col-sm-6">
              <div class="card card-stats">
                <div class="card-header card-header-danger card-header-icon">
                  <div class="card-icon">
                    <i class="material-icons">info_outline</i>
                  </div>
                  <p class="card-category">회원 수</p>
                  <h3 class="card-title">${statistic.memberCnt} 명</h3>
                </div>
                <div class="card-footer">
                  <div class="stats">
                    <i class="material-icons">access_time</i>
	                    <c:choose>
		                    <c:when test="${(nowDate - upM_date) == 0}">                  
		                    	updated Today
		                   	</c:when>
		                   	<c:otherwise>
		                    	updated ${nowDate - upM_date} days ago
		                    </c:otherwise>
	                    </c:choose>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-xl-3 col-lg-6 col-md-6 col-sm-6">
              <div class="card card-stats">
                <div class="card-header card-header-info card-header-icon">
                  <div class="card-icon">                 	
                    <img src="assets/icon/Instagram(3).png" style="padding: 13.5px;" alt="">
                  </div>
                  <p class="card-category">공식 SNS 계정</p>
                  <h3 class="card-title"><a href="https://www.instagram.com/odga__com">Instagram</a></h3>
                </div>
                <div class="card-footer">
                  <div class="stats">
                    <i class="material-icons">update</i> Just Updated
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-6 col-md-12">
              <div class="card">
                <div class="card-header card-header-primary">
                  <h4 class="card-title">관리자 명단</h4>
                  <fmt:formatDate value="${statistic.newAdmin}" var="year" pattern="yyyy"/>
                  <fmt:formatDate value="${statistic.newAdmin}" var="mounth" pattern="MM"/>
                  <fmt:formatDate value="${statistic.newAdmin}" var="day" pattern="dd"/>
                  <p class="card-category"> New employees on ${day}th ${mounth}, ${year}</p>
                </div>
                <div class="card-body table-responsive" style="height: 503px;">
                  <table class="table table-hover">
                    <thead class="text-warning">
                      <th style="width: 10%;">ID</th>
                      <th>이름</th>
                      <th>이메일</th>
                      <th>전화번호</th>
                      <th>성별</th>
                      <th>입사일</th>
                    </thead>
                    <tbody>
                    <c:forEach items="${admin}" var="admin">
                      <tr>
                        <td>${admin.m_id}</td>
                        <td>${admin.m_name}</td>
                        <td>${admin.m_email}</td>
                        <td>${admin.m_phone}</td>
                        <td>${admin.m_gender}</td>
                        <td>${admin.m_rdate}</td>
                      </tr>
                     </c:forEach>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
            <div class="col-lg-6 col-md-12">
              <div class="card">
                <div class="card-header card-header-primary">
                  <h4 class="card-title">선호 관광지 TOP 1</h4>
                  <p class="card-category">플래너에 가장 많이 등재된 관광지</p>
                </div>
                <div class="card-body table-responsive">
                  <table class="table table-hover">
                    <thead class="text-warning">                   
                      <tr><th>관광지ID</th>
                      <td>${bestItem.contentid}</td></tr>
                      <tr><th>주소</th>
                      <c:choose>
                    	<c:when test="${empty bestItem.addr1}">
                    		<td>주소가 없습니다.</td>
                    	</c:when>
                    	<c:otherwise>
                    		<td>${bestItem.addr1}</td>
                    	</c:otherwise>
                    </c:choose> </tr>                      
                      <tr><th>장소명</th>
                      	<c:choose>
	                    	<c:when test="${empty bestItem.title}">
	                      		<td>장소명이 없습니다.</td>
	                    	</c:when>
	                    	<c:otherwise>
	                      		<td>${bestItem.title}</td></tr>
	                      	</c:otherwise>
                    	</c:choose>                
                      <tr><th>이미지</th><td><img class='pic' src='${bestItem.firstimage}'/></td></tr>
                    </thead>

                  </table>
                </div>
              </div>
            </div><!-- 여기 -->
          </div>
        </div>
      </div>
      <footer class="footer">
        <div class="container-fluid">
          <nav class="float-left">
            <ul>
              <li>
                <a href="https://www.creative-tim.com">
                  Creative Tim
                </a>
              </li>
              <li>
                <a href="https://creative-tim.com/presentation">
                  About Us
                </a>
              </li>
              <li>
                <a href="http://blog.creative-tim.com">
                  Blog
                </a>
              </li>
              <li>
                <a href="https://www.creative-tim.com/license">
                  Licenses
                </a>
              </li>
            </ul>
          </nav>
          <div class="copyright float-right" id="date">
            , made with <i class="material-icons">favorite</i> by
            <a href="https://www.creative-tim.com" target="_blank">Creative Tim</a> for a better web.
          </div>
        </div>
      </footer>
      <script>
        const x = new Date().getFullYear();
        let date = document.getElementById('date');
        date.innerHTML = '&copy; ' + x + date.innerHTML;
      </script>
    </div>
  </div>
  <div class="fixed-plugin">
    <div class="dropdown show-dropdown">
      <a href="#" data-toggle="dropdown">
        <i class="fa fa-cog fa-2x"> </i>
      </a>
      <ul class="dropdown-menu">
        <li class="header-title"> Sidebar Filters</li>
        <li class="adjustments-line">
          <a href="javascript:void(0)" class="switch-trigger active-color">
            <div class="badge-colors ml-auto mr-auto">
              <span class="badge filter badge-purple active" data-color="purple"></span>
              <span class="badge filter badge-azure" data-color="azure"></span>
              <span class="badge filter badge-green" data-color="green"></span>
              <span class="badge filter badge-warning" data-color="orange"></span>
              <span class="badge filter badge-danger" data-color="danger"></span>
            </div>
            <div class="clearfix"></div>
          </a>
        </li>
        <li class="header-title">Images</li>
        <li>
          <a class="img-holder switch-trigger" href="javascript:void(0)">
            <img src="../assets/img/sidebar-1.jpg" alt="">
          </a>
        </li>
        <li class="active">
          <a class="img-holder switch-trigger" href="javascript:void(0)">
            <img src="../assets/img/sidebar-2.jpg" alt="">
          </a>
        </li>
        <li>
          <a class="img-holder switch-trigger" href="javascript:void(0)">
            <img src="../assets/img/sidebar-3.jpg" alt="">
          </a>
        </li>
        <li>
          <a class="img-holder switch-trigger" href="javascript:void(0)">
            <img src="../assets/img/sidebar-4.jpg" alt="">
          </a>
        </li>
        <li class="button-container">
          <a href="https://www.creative-tim.com/product/material-dashboard-dark" target="_blank" class="btn btn-primary btn-block">Free Download</a>
        </li>
        <!-- <li class="header-title">Want more components?</li>
            <li class="button-container">
                <a href="https://www.creative-tim.com/product/material-dashboard-pro" target="_blank" class="btn btn-warning btn-block">
                  Get the pro version
                </a>
            </li> -->
        <li class="button-container">
          <a href="https://demos.creative-tim.com/material-dashboard-dark/docs/2.0/getting-started/introduction.html" target="_blank" class="btn btn-default btn-block">
            View Documentation
          </a>
        </li>
        <li class="button-container github-star">
          <a class="github-button" href="https://github.com/creativetimofficial/material-dashboard/tree/dark-edition" data-icon="octicon-star" data-size="large" data-show-count="true" aria-label="Star ntkme/github-buttons on GitHub">Star</a>
        </li>
        <li class="header-title">Thank you for 95 shares!</li>
        <li class="button-container text-center">
          <button id="twitter" class="btn btn-round btn-twitter"><i class="fa fa-twitter"></i> &middot; 45</button>
          <button id="facebook" class="btn btn-round btn-facebook"><i class="fa fa-facebook-f"></i> &middot; 50</button>
          <br>
          <br>
        </li>
      </ul>
    </div>
  </div>
  <!--   Core JS Files   -->
  <script src="../assets/js/core/jquery.min.js"></script>
  <script src="../assets/js/core/popper.min.js"></script>
  <script src="../assets/js/core/bootstrap-material-design.min.js"></script>
  <script src="https://unpkg.com/default-passive-events"></script>
  <script src="../assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
  <!-- Place this tag in your head or just before your close body tag. -->
  <script async defer src="https://buttons.github.io/buttons.js"></script>
  <!--  Google Maps Plugin    -->
  <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
  <!-- Chartist JS -->
  <script src="../assets/js/plugins/chartist.min.js"></script>
  <!--  Notifications Plugin    -->
  <script src="../assets/js/plugins/bootstrap-notify.js"></script>
  <!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="../assets/js/material-dashboard.js?v=2.1.0"></script>
  <!-- Material Dashboard DEMO methods, don't include it in your project! -->
  <script src="../assets/demo/demo.js"></script>
  <script type="text/javascript" src="https://www.google.com/jsapi"></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
  google.charts.load('current', {'packages':['corechart']});
  google.charts.setOnLoadCallback(drawChart1);
  google.charts.setOnLoadCallback(drawChart2);
  google.charts.setOnLoadCallback(drawChart3);

  function drawChart1() { //지역차트
	  
    var data1 = google.visualization.arrayToDataTable([
    	['area', 'count'],
    	['${areaC[0].area}', ${areaC[0].count}],
    	['${areaC[1].area}', ${areaC[1].count}],
    	['${areaC[2].area}', ${areaC[2].count}]
    ]);

    var chart1 = new google.visualization.PieChart(document.getElementById('areachart'));

    chart1.draw(data1, {
    	fontSize: 11,
        curveType : "function"
    });
  }

  function drawChart2() { //회원가입 수 차트
	  
    var data2 = google.visualization.arrayToDataTable([
    	['Date', 'count',{ role: 'style' }],
    	['${memberC[0].m_rdate}', ${memberC[0].count},'#E53F28'],
    	['${memberC[1].m_rdate}', ${memberC[1].count},'#1377E3'],
    	['${memberC[2].m_rdate}', ${memberC[2].count},'#FBA21C']
    ]);

    var chart2 = new google.visualization.ColumnChart(document.getElementById('memberchart'));

    chart2.draw(data2, {
        curveType : "function",
        fontSize: 10,
        legend : 'none',
        bar: {groupWidth: "30%"}
    });
  }
  function drawChart3() { //성비 차트
	  
	    var data3 = google.visualization.arrayToDataTable([
	    	['Gender', 'count',{ role: 'style' }],
	    	['여성', ${genderC[0].femaleCnt},'#FA311E'],
	    	['남성', ${genderC[1].maleCnt},'#0D2567']
	    ]);


	    var chart3 = new google.visualization.PieChart(document.getElementById('genderchart'));

	    chart3.draw(data3, {
	    	fontSize: 12,
	        curveType : "function"
	    });
	  }
</script>
  <script>
    $(document).ready(function() {
      $().ready(function() {
        $sidebar = $('.sidebar');

        $sidebar_img_container = $sidebar.find('.sidebar-background');

        $full_page = $('.full-page');

        $sidebar_responsive = $('body > .navbar-collapse');

        window_width = $(window).width();

        $('.fixed-plugin a').click(function(event) {
          // Alex if we click on switch, stop propagation of the event, so the dropdown will not be hide, otherwise we set the  section active
          if ($(this).hasClass('switch-trigger')) {
            if (event.stopPropagation) {
              event.stopPropagation();
            } else if (window.event) {
              window.event.cancelBubble = true;
            }
          }
        });

        $('.fixed-plugin .active-color span').click(function() {
          $full_page_background = $('.full-page-background');

          $(this).siblings().removeClass('active');
          $(this).addClass('active');

          var new_color = $(this).data('color');

          if ($sidebar.length != 0) {
            $sidebar.attr('data-color', new_color);
          }

          if ($full_page.length != 0) {
            $full_page.attr('filter-color', new_color);
          }

          if ($sidebar_responsive.length != 0) {
            $sidebar_responsive.attr('data-color', new_color);
          }
        });

        $('.fixed-plugin .background-color .badge').click(function() {
          $(this).siblings().removeClass('active');
          $(this).addClass('active');

          var new_color = $(this).data('background-color');

          if ($sidebar.length != 0) {
            $sidebar.attr('data-background-color', new_color);
          }
        });

        $('.fixed-plugin .img-holder').click(function() {
          $full_page_background = $('.full-page-background');

          $(this).parent('li').siblings().removeClass('active');
          $(this).parent('li').addClass('active');


          var new_image = $(this).find("img").attr('src');

          if ($sidebar_img_container.length != 0 && $('.switch-sidebar-image input:checked').length != 0) {
            $sidebar_img_container.fadeOut('fast', function() {
              $sidebar_img_container.css('background-image', 'url("' + new_image + '")');
              $sidebar_img_container.fadeIn('fast');
            });
          }

          if ($full_page_background.length != 0 && $('.switch-sidebar-image input:checked').length != 0) {
            var new_image_full_page = $('.fixed-plugin li.active .img-holder').find('img').data('src');

            $full_page_background.fadeOut('fast', function() {
              $full_page_background.css('background-image', 'url("' + new_image_full_page + '")');
              $full_page_background.fadeIn('fast');
            });
          }

          if ($('.switch-sidebar-image input:checked').length == 0) {
            var new_image = $('.fixed-plugin li.active .img-holder').find("img").attr('src');
            var new_image_full_page = $('.fixed-plugin li.active .img-holder').find('img').data('src');

            $sidebar_img_container.css('background-image', 'url("' + new_image + '")');
            $full_page_background.css('background-image', 'url("' + new_image_full_page + '")');
          }

          if ($sidebar_responsive.length != 0) {
            $sidebar_responsive.css('background-image', 'url("' + new_image + '")');
          }
        });

        $('.switch-sidebar-image input').change(function() {
          $full_page_background = $('.full-page-background');

          $input = $(this);

          if ($input.is(':checked')) {
            if ($sidebar_img_container.length != 0) {
              $sidebar_img_container.fadeIn('fast');
              $sidebar.attr('data-image', '#');
            }

            if ($full_page_background.length != 0) {
              $full_page_background.fadeIn('fast');
              $full_page.attr('data-image', '#');
            }

            background_image = true;
          } else {
            if ($sidebar_img_container.length != 0) {
              $sidebar.removeAttr('data-image');
              $sidebar_img_container.fadeOut('fast');
            }

            if ($full_page_background.length != 0) {
              $full_page.removeAttr('data-image', '#');
              $full_page_background.fadeOut('fast');
            }

            background_image = false;
          }
        });

        $('.switch-sidebar-mini input').change(function() {
          $body = $('body');

          $input = $(this);

          if (md.misc.sidebar_mini_active == true) {
            $('body').removeClass('sidebar-mini');
            md.misc.sidebar_mini_active = false;

            $('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar();

          } else {

            $('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar('destroy');

            setTimeout(function() {
              $('body').addClass('sidebar-mini');

              md.misc.sidebar_mini_active = true;
            }, 300);
          }

          // we simulate the window Resize so the charts will get updated in realtime.
          var simulateWindowResize = setInterval(function() {
            window.dispatchEvent(new Event('resize'));
          }, 180);

          // we stop the simulation of Window Resize after the animations are completed
          setTimeout(function() {
            clearInterval(simulateWindowResize);
          }, 1000);

        });
      });
    });
  </script>
  <script>
    $(document).ready(function() {
      // Javascript method's body can be found in assets/js/demos.js
      md.initDashboardPageCharts();

    });
  </script>
</body>

</html>