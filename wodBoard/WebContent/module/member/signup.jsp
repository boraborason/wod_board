<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>
<main id="signup-container">
	<header id="signup-container-header" class="mod-header">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<h2 class="title">MEMBER</h2>
				</div>
			</div>
		</div>
	</header>
	
	<div id="signup-container-content" class="mod-content">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="signup-form">
						<form onsubmit="return signup(this);">
							<div class="form-row username-row">
								<input name="username" id="username" type="text" placeholder="ID">
							</div>
							
							<div class="form-row password-row">
								<input name="passowrd" id="password" type="password" placeholder="PASSWORD">
							</div>
							
							<div class="form-row email-row">
								<input name="email" id="email" type="email" placeholder="E-MAIL">
							</div>
							
							<div class="form-row button-row">
								<button class="btn" type="submit">SIGN UP</button>
							</div>
							
							<div class="form-row other-row">
								<a href="./?mod=member&p=login">LOGIN</a>
								<a href="./?mod=member&p=password-lost">PASSWORD FORGOT</a>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</main>

<script>
	function signup(form) {
		var username = form.username.value;
		var password = form.password.value;
		var email = form.email.value;
		
		alert("회원가입 시도중\nid:" + username + ", pw:" + password + ", email:" + email);
		
		return false;
	}
</script>