
<?php if (isset($page) && isset($count)):?>
<ul class="b-pager">
<?php if ($page > 1):?>
	<li class="b-pager__item b-pager__item--first">
		<a
			class="b-pager__href"
			href="/?page=<?php echo $page - 1 ?>">&laquo;</a>
	</li>
<?php endif; ?>
<?php for ($key = 1; $key <= ceil($count / $limit); $key++):?>
	<li class="b-pager__item">
		<a
			class="b-pager__href<?php if ($key == $page) echo ' b-pager__href--active';?>"
			href="/?page=<?php echo $key; ?>"><?php echo $key; ?></a>
	</li>
<?php endfor; ?>
<?php if ($page < ceil($count / $limit)):?>
	<li class="b-pager__item b-pager__item--last">
		<a
			class="b-pager__href"
			href="/?page=<?php echo $page + 1 ?>">&raquo;</a>
	</li>
<?php endif; ?>
</ul>
<?php endif;?>