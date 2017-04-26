<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title><?=$title?></title>
	<?php echo $head_content;?>
</head>
<body class="b-page">
<div class="b-panel">
	<div class="b-panel__header">
		<div class="b-panel__title"><?php echo $title; ?></div>
	</div>
	<div class="b-panel__body"><?php echo $body_content;?></div>
	<div class="b-panel__footer">
		<?php if (isset($count)) echo 'Total: '. $count; ?>
		<?php if (isset($paginator_content)): ?>
			<div class="b-pager-wrapper">
			<?php echo $paginator_content; ?>
			</div>
		<?php endif ?>
	</div>		
</div>

</body>
</html>