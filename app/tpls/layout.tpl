<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title><?=$title?></title>
	<?php echo $head_content;?>
</head>
<body>
<div class="page-wrapper">
	<div class="panel panel-primary general-panel">
	<div class="panel-heading">
		<div class="panel-title"><?php echo $title; ?></div>
	</div>
	<div class="panel-body"><?php echo $body_content;?></div>
	<div class="panel-footer"><?php if (isset($count)) echo 'Total: '. $count; ?></div>		
</div>
<?php if (isset($paginator_content)) echo $paginator_content; ?>
</body>
</html>