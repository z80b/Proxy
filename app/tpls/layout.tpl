<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title><?=$title?></title>
	<?php echo $head_content;?>
</head>
<body class="b-page">
	<div class="b-panel b-panel--fullscreen">
		<div class="b-panel__header">
			<div class="b-panel__title"><?php echo $title; ?></div>
			<div class="b-panel__header-controls b-controls">
			<?php if ($is_authorized): ?>
				<a class="b-controls__button" href="/logout">Logout</a>
			<?php else: ?>
				<a class="b-controls__button" href="/login">Login</a>
			<?php endif ?>
			</div>
		</div>
		<div class="b-panel__body"><?php if (isset($body_content)) echo $body_content;?></div>
		<div class="b-panel__footer">
			<?php if (isset($count)): ?>
			<div class="b-panel__footer-stat">
				<?php echo 'Total: '. $count ?>
			</div>
			<?php endif ?>
			<?php if (isset($paginator_content)): ?>
				<div class="b-pager-wrapper">
				<?php echo $paginator_content; ?>
				</div>
			<?php endif ?>
		</div>		
	</div>
	<?php if (isset($popup_content)) echo $popup_content; ?>
</body>
</html>