<?php
include "fungsions.php";
include "csstable.php";
?>
<div class="tg-wrap"><table class="tg">
  <tr>
    <th class="tg-baqh">No</th>
    <th class="tg-baqh">potensi</th>
    <th class="tg-baqh">R</th>
  </tr>
<?php
if(isset($_GET['id']))
{
	$idproses = $_GET['id'];
	floadbahaya($idproses);
}
?>
</table></div>