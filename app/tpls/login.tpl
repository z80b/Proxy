<div class="b-dialog__wrapper">
	<div class="b-dialog__wrapper-inner">
		<div class="b-dialog__overlay"></div>
		<div class="b-dialog b-dialog--login">
			<div class="b-dialog__head">
				<div class="b-dialog__title">Вход в личный кабинет</div>
			</div>
			<div class="b-dialog__body">
				<form class="b-form" role="form"  method="POST" action="/auth">
					<div class="b-form__group">
						<label for="user-login" class="b-form__label">Логин</label>
						<div class="col-sm-10">
							<input name="login" type="text" class="b-form__input" id="user-login" placeholder="Login" index="0">
						</div>
					</div>
					<div class="b-form__group">
						<label for="user-password" class="b-form__label">Пароль</label>
						<div class="col-sm-10">
							<input name="password" type="password" class="b-form__input" id="user-password" placeholder="Password">
						</div>
					</div>
					<div class="b-form__group">
						<button type="submit" class="b-form__button">Войти</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>