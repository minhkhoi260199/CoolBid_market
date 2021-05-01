<%@ tag language="java" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ attribute name="title" type="java.lang.String" required="true" rtexprvalue="true"%>
<%@ attribute name="content" fragment="true" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Title Page-->
    <title>${title }</title>

    <!-- Fontfaces CSS-->
    <link href="${pageContext.request.contextPath }/resources/css/font-face.css" rel="stylesheet" media="all">
    <link href="${pageContext.request.contextPath }/resources/vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
    <link href="${pageContext.request.contextPath }/resources/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="${pageContext.request.contextPath }/resources/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

    <!-- Bootstrap CSS-->
    <!--  <link href="${pageContext.request.contextPath }/resources/vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all"> -->
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <!-- Vendor CSS-->
    <link href="${pageContext.request.contextPath }/resources/vendor/animsition/animsition.min.css" rel="stylesheet" media="all">
    <link href="${pageContext.request.contextPath }/resources/vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
    <link href="${pageContext.request.contextPath }/resources/vendor/wow/animate.css" rel="stylesheet" media="all">
    <link href="${pageContext.request.contextPath }/resources/vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
    <link href="${pageContext.request.contextPath }/resources/vendor/slick/slick.css" rel="stylesheet" media="all">
    <link href="${pageContext.request.contextPath }/resources/vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="${pageContext.request.contextPath }/resources/vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="${pageContext.request.contextPath }/resources/css/theme.css" rel="stylesheet" media="all">
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/js/select2.full.min.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    
    
    
</head>

<body class="animsition">
    <div class="page-wrapper">
        <!-- PAGE CONTAINER-->
        <div class="page-container" style="padding-left: 0;">
		
			<jsp:invoke fragment="content"></jsp:invoke>
			
		</div>
        <!-- END PAGE CONTAINER-->
    </div>
        <!-- COPYRIGHT-->
    <section class="p-t-60 p-b-20" style="background-color: azure;">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="copyright">
                        <p>© 2021 CoolMarket - Team The Fool</a>.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
            <!-- END COPYRIGHT-->

	<script>
		let intervalListHtml = "";
		let intervalTotalNotification = "";
		function getTotalNotification(checkStatus = 2) {
			$.ajax({
				url: "${pageContext.request.contextPath }/api/notify/totalNotify",
				method: "GET",
				success: function(res) {
					if (checkStatus == 2) {
						intervalGetTotalNotification();
					}
					if (res && res > 0) {
						$("#quantityNotificationHeader").show();
						$("#quantityNotificationHeader").html(res);
					} else {
						$("#quantityNotificationHeader").hide();
						$("#quantityNotificationHeader").html(0);
					}
				}
			});
		}

		function getListNotification(checkStatus = 2) {
			$.ajax({
				url: "${pageContext.request.contextPath }/api/notify/getNotify",
				method: "GET",
				success: function(res) {
					if (res) {
						let totalRecord = res.notifies;
						let idString = "";
						let htmlTitle = "";
						let html = "";
						totalRecord.forEach(function(item, index) {
							if (idString != "") {
								idString += ",";
							}
							idString += item.notify_id;
							let content = item.content;
							html += `
                                <div class="notifi__item itemNotificationToCount">
		                            <div class="bg-c3 img-cir img-40">
		                                <i class="zmdi zmdi-file-text"></i>
		                            </div>
		                            <div class="content">
		                                <p>`+content+`</p>
		                            </div>
		                        </div>
							`;
						});
						let htmlListNotification = $("#listNotification").html();
						html = html + htmlListNotification;
	
						$("#quantityNotificationHeader").hide();
						$("#quantityNotificationHeader").html(0);
						$("#listNotification").html(html);

						if (idString != "") {
							sendtoUpdateNotifyStatus(idString);
						}

						let curretnTotalNotify = $(".itemNotificationToCount").length;
						htmlTitle = `<p>You have `+ curretnTotalNotify +` Notifications</p>`;
						$("#titleQuantityNotificationHeader").html(htmlTitle);
					}

					if (checkStatus == 2) {
						intervalGetListNotification();
					}
					
					if (intervalTotalNotification != "") {
						clearInterval(intervalTotalNotification);
						intervalTotalNotification = "";
					}
				}
			});
		}

		function sendtoUpdateNotifyStatus (idString) {
			let paramData = "";
			if (idString != "") {
				paramData = "?data="+ idString;
			}
			$.ajax({
				url: "${pageContext.request.contextPath }/api/notify/updateNofity" + paramData,
				method: "GET",
				success: function(res) {
					
				}
			});
		}

		function addingNotificationFunciton(idCustom) {
			getListNotification();
		}

		function removeNotificationFunciton(idCustom) {
			$("#listNotification").html("");
			$("#titleQuantityNotificationHeader").attr("data-value", 0);
			$("#titleQuantityNotificationHeader").html(`<p>You have 0 Notifications</p>`);
			getTotalNotification();
			if (intervalListHtml != "") {
				clearInterval(intervalListHtml);
				intervalListHtml = "";
			}
		}
		$(document).ready(function() {
			getTotalNotification();
		})
		
		function intervalGetListNotification() {
			intervalListHtml = setInterval(function(){ 
				getListNotification(1);
			}, 5000);
		}

		function intervalGetTotalNotification() {
			intervalTotalNotification = setInterval(function(){ 
				getTotalNotification(1);
			}, 5000);
		}
		
	</script>
    <!-- Jquery JS-->

    <!-- Bootstrap JS-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.6.0/umd/popper.min.js" integrity="sha512-BmM0/BQlqh02wuK5Gz9yrbe7VyIVwOzD1o40yi1IsTjriX/NGF37NyXHfmFzIlMmoSIBXgqDiG1VNU6kB5dBbA==" crossorigin="anonymous"></script>
     <!--<script src="${pageContext.request.contextPath }/resources/vendor/bootstrap-4.1/popper.min.js"></script> -->
    <!-- <script src="${pageContext.request.contextPath }/resources/vendor/bootstrap-4.1/bootstrap.min.js"></script> -->
    <!-- Latest compiled and minified JavaScript -->   
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <!-- Vendor JS       -->
    <script src="${pageContext.request.contextPath }/resources/vendor/slick/slick.min.js">
    </script>
    <script src="${pageContext.request.contextPath }/resources/vendor/wow/wow.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/vendor/animsition/animsition.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
    </script>
    <script src="${pageContext.request.contextPath }/resources/vendor/counter-up/jquery.waypoints.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/vendor/counter-up/jquery.counterup.min.js">
    </script>
    <script src="${pageContext.request.contextPath }/resources/vendor/circle-progress/circle-progress.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
    <script src="${pageContext.request.contextPath }/resources/vendor/chartjs/Chart.bundle.min.js"></script>

    </script>

    <!-- Main JS-->
    <script src="${pageContext.request.contextPath }/resources/js/main.js"></script>

</body>

</html>
<!-- end document-->
		
