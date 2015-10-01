<?php
include "fungsions.php";
include "csstable.php";
?>
<div class="tg-wrap"><table class="tg">
  <tr>
    <th class="tg-baqh">No</th>
    <th class="tg-baqh">Proses</th>
    <th class="tg-baqh">keterangan</th>
  </tr>
<?php
if(isset($_POST['submit']))
{
	$namakapal=$_POST['submit'];
	$jeniskapal=fjeniskapal($namakapal);
	floadproses($jeniskapal);
	echo $_POST['submit'];
}
?>
</table></div>