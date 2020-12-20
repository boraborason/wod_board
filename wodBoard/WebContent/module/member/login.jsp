<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
%>
<main id="login-container">
	<div class="container">
		<div class="row">
			<div class="col-12">
				<div class="login-form">
					<form onsubmit="return login();">
						<div class="form-row id-row">
							<input name="id" id="id" type="text" placeholder="ID">
						</div>
						
						<div class="form-row password-row">
							<input name="passowrd" id="password" type="password" placeholder="PASSWORD">
						</div>
						
						<div class="form-row button-row">
							<button type="submit">LOGIN</button>
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
</main>