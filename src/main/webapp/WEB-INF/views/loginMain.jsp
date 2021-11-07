<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>나의 자산 이야기</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet" href="css/screen/login.css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<script type="text/javascript">
	$(document).ready(function() {
		$('.toggle').on('click', function() {
			$('.container').stop().addClass('active');
		});

		$('.close').on('click', function() {
			$('.container').stop().removeClass('active');
		});

	});
</script>

</head>
<body>
	<!-- 로그인  -->
	<div class="container">
		<div class="row">

			<!-- Mixins-->
			<!-- Pen Title-->
			<div class="pen-title">
				<h1>로그인 해주세요!</h1>
			</div>
			<div class="container">
				<div class="card"></div>
				<div class="card">
					<h1 class="title">Login</h1>
					<form>
						<div class="input-container">
							<input type="text" id="Username" required="required" /> <label for="Username">Username</label>
							<div class="bar"></div>
						</div>
						<div class="input-container">
							<input type="password" id="Password" required="required" /> <label for="Password">Password</label>
							<div class="bar"></div>
						</div>
						<div class="button-container">
							<button>
								<span>Go</span>
							</button>
						</div>
						<div class="footer">
							<a href="#">Forgot your password?</a>
						</div>
					</form>
				</div>
				
				<!-- 등록페이지 -->
				<div class="card alt">
					<div class="toggle"></div>
					<h1 class="title">
						Register
						<div class="close"></div>
					</h1>
					<form>
						<div class="input-container">
							<input type="text" id="Username" required="required" /> <label for="Username">Username</label>
							<div class="bar"></div>
						</div>
						<div class="input-container">
							<input type="password" id="Password" required="required" /> <label for="Password">Password</label>3
							<div class="bar"></div>
						</div>
						<div class="input-container">
							<input type="password" id="Repeat Password" required="required" /> <label for="Repeat Password">Repeat Password</label>
							<div class="bar"></div>
						</div>
						<div class="button-container">
							<button>
								<span>Next</span>
							</button>
						</div>
					</form>
				</div>
			</div>
			<!-- Portfolio-->
			<a id="portfolio" href="http://pkshopy.com/farooqshad/" title="View my portfolio!"><i class="fa fa-link"></i></a>
		</div>
	</div>

</body>
</html>
