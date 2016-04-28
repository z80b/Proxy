<!-- <div class="popup-overlay"></div>
<form class="login-form" method="POST" action="/auth">
	<div class="form-item">
		<label for="login">Login</label>
		<input name="login" id="login" type="text" />
	</div>
	<div class="form-item">
		<label for="password">Password</label>
		<input name="password" id="password" type="password"/>
	</div>
	<div class="form-item">
		<input type="submit" value="Login"/>
	</div>
</form> -->
<div class="popup-overlay"></div>
<div class="panel panel-primary login-form">
	<div class="panel-heading">
		<div class="panel-title">Вход в личный кабинет</div>
	</div>
	<div class="panel-body">
		<form class="form-horizontal" role="form"  method="POST" action="/auth">
			<div class="form-group">
				<label for="user-login" class="col-sm-2 control-label">Логин</label>
				<div class="col-sm-10">
					<input name="login" type="text" class="form-control" id="user-login" placeholder="Login">
				</div>
			</div>
			<div class="form-group">
				<label for="user-password" class="col-sm-2 control-label">Пароль</label>
				<div class="col-sm-10">
					<input name="password" type="password" class="form-control" id="user-password" placeholder="Password">
				</div>
			</div>
<!-- 			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<div class="checkbox">
						<label>
							<input type="checkbox"> Запомнить меня
						</label>
					</div>
				</div>
			</div> -->
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-default">Войти</button>
				</div>
			</div>
		</form>
	</div>
</div>