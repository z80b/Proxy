<table class="table table-striped">
	<thead>
		<tr class="info">
			<th>#</th>
			<th>Fam</th>
			<th>Name</th>
			<th>Patron</th>
			<th>Birth</th>
			<th>Region</th>
			<th>Stat</th>
		</tr>
	</thead>
	<tbody>
		<?php foreach ($data as $key => $item): ?>
		<tr>
			<td><?=$offset + $key + 1?></td>
			<td><?=$item['fam']?></td>
			<td><?=$item['name']?></td>
			<td><?=$item['patron']?></td>
			<td><?=$item['date_birth']?></td>
			<td><?=$item['region']?></td>
			<td><?=$item['request_ok'] ? 'ok' : '-'?></td>
		</tr>
		<?php endforeach; ?>
	</tbody>
</table>
