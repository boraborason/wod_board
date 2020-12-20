<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>
<main id="login-container">
	<header id="login-container-header" class="mod-header">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<h2 class="title">MEMBER</h2>
				</div>
			</div>
		</div>
	</header>
	
	<div id="login-container-content" class="mod-content">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="login-form">
						<form onsubmit="return login(this);">
							<div class="form-row username-row">
								<input name="username" id="username" type="text" placeholder="ID">
							</div>
							
							<div class="form-row password-row">
								<input name="passowrd" id="password" type="password" placeholder="PASSWORD">
							</div>
							
							<div class="form-row button-row">
								<button class="btn" type="submit">LOGIN</button>
							</div>
							
							<div class="form-row other-row">
								<a href="./?mod=member&p=signup">SIGN UP</a>
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
	function login(form) {
		var username = form.username.value;
		var password = form.password.value;
		
		alert("로그인 시도중\nid:"+username+", pw:"+password);
		
		return false;
	}
</script>