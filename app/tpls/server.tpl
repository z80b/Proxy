<table class="table table-striped">
	<thead>
		<tr class="info">
			<th>Variable</th>
			<th>Value</th>
		</tr>
	</thead>
	<tbody>
		<?php foreach ($data as $key => $value): ?>
		<tr>
			<td><?=$key?></td>
			<td><?=$value?></td>
		</tr>
		<?php endforeach; ?>
	</tbody>
</table>