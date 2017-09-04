<table class="b-table">
	<thead class="b-table__head">
		<tr class="b-table__row">
			<th>#</th>
			<th>Name</th>
			<th>Address</th>
			<th>Region</th>
			<th>Date</th>
			<th>Stat</th>
		</tr>
	</thead>
	<tbody class="b-table__body">
		<?php foreach ($data as $key => $item): ?>
		<tr class="b-table__row">
			<td class="b-table__cell"><?=$offset + $key + 1?></td>
			<td class="b-table__cell"><?=$item['name']?></td>
			<td class="b-table__cell"><?=$item['patron']?></td>
			<td class="b-table__cell"><?=$item['date_birth']?></td>
			<td class="b-table__cell"><?=$item['response_date']?></td>
			<td class="b-table__cell"><?=$item['request_ok'] ? 'ok' : '-'?></td>
		</tr>
		<?php endforeach; ?>
	</tbody>
</table>
