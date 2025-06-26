<div class="container mt-5 mb-5">
	<div class="row">
		
		<div class="col-md-8">
			<div class="card" style="margin-top: 110px">
				<div class="card-header alert-success">
					Invoice Pengembalian Anda
				</div>

				<div class="card-body">
					<table class="table">
						<?php foreach($transaksi as $tr) : ?>
							<tr>
								<th>Merk Mobil</th>
								<td>: </td>
								<td><?php echo $tr->merk ?></td>
							</tr>

							<tr>
								<th>Penyedia</th>
								<td>: </td>
								<td><?php echo $tr->nama_rental ?></td>
							</tr>

							<tr>
								<th>Tanggal Rental</th>
								<td>: </td>
								<td><?php echo $tr->tanggal_rental ?></td>
							</tr>

							<tr>
								<th>Tanggal Kembali</th>
								<td>: </td>
								<td><?php echo $tr->tanggal_kembali ?></td>
							</tr>
                            <tr>
                                <th>Tanggal Dikembalikan</th>
								<td>: </td>
                                <td>
							<?php 
								if($tr->tanggal_pengembalian=="00-00-0000"){
									echo "-";
								}else{
									echo date('Y-m-d', strtotime($tr->tanggal_pengembalian));
								}
							?>
						        </td>
                            </tr>    
                            <tr>
								<th>Biaya denda</th>
								<td>: </td>
								<td><?php echo number_format($tr->denda,0,',','.')?></td>
							</tr>
							<tr>
								<th>Biaya Sewa/Hari</th>
								<td>: </td>
								<td>Rp. <?php echo number_format($tr->harga,0,',','.') ?></td>
							</tr>

							<tr>
								<?php 
									$x = strtotime($tr->tanggal_kembali);
									$y = strtotime($tr->tanggal_rental);
									$jmlHari = abs(($x - $y)/(60*60*24));

								?>
								<th>Jumlah Hari Sewa</th>
								<td>: </td>
								<td><?php echo $jmlHari; ?> Hari</td>
							</tr>

							<tr class="text-success">
								<th>JUMLAH PEMBAYARAN</th>
								<td>: </td>
								<td><button class="btn btn-sm btn-success" disabled="disabled">Rp. <?php echo number_format(($tr->harga * $jmlHari),0,',','.') ?></button></td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td>
									<a href="<?php echo base_url('customer/transaksi/cetak_invoice2/' . $tr->id_rental) ?>" class="btn btn-sm btn-secondary">Print Invoice</a>
								</td>
							</tr>

						<?php endforeach; ?>
					</table>
				</div>
			</div>
		</div>		
		
