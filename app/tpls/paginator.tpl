
<?php if (isset($page) && isset($count)):?>
<ul class="pagination">
<?php if ($page > 1):?>
	<li><a href="/?page=<? echo $page - 1?>">&laquo;</a></li>
<?php endif; ?>
<?php for ($key = 1; $key <= ceil($count / $limit); $key++):?>
	<li<?php if ($key == $page) echo ' class="active"';?>>
		<a href="/?page=<?php echo $key; ?>"><?php echo $key; ?></a>
	</li>
<?php endfor; ?>
<?php if ($page < ceil($count / $limit)):?>
	<li><a href="/?page=<?php echo $page + 1 ?>">&raquo;</a></li>
<?php endif; ?>
</ul>
<?php endif;?>