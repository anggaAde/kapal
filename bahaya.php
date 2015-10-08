<?php
include "fungsions.php";
include "csstable.php";
if (isset($_POST['submit']))
{
	$p = $_POST['p'];
	$s = $_POST['s'];
	$id_bahaya = $_POST['idbahaya'];

	$sqlhitbahaya = "update tkapal_bahaya set `p`='$p', `s`='$s' where `bahaya_id`='$id_bahaya'"; //echo $sqlhitbahaya;
	mysql_query($sqlhitbahaya) or die ("sql hitbahaya database db_kapal gagal");
}
?>
<div class="tg-wrap">
<table class="tg">
  <tr>
    <th class="tg-baqh">No</th>
    <th class="tg-baqh">potensi</th>
    <th class="tg-baqh">R</th>
    <th class="tg-baqh">P</th>
    <th class="tg-baqh">S</th>
  </tr>
<?php
if(isset($_GET['id']))
{
	$idproses = $_GET['id'];
	$sqlbahaya = "SELECT * FROM tkapal_bahaya WHERE bahaya_proses = '$idproses'"; //echo $sqlbahaya;
	$rowbahaya = mysql_query($sqlbahaya) or die ("sql bahaya database db_kapal gagal");
	$no = 1;
	while ($bahaya = mysql_fetch_assoc($rowbahaya))
	{
		$idbahaya = $bahaya['bahaya_id'];
		$bahayajenis = $bahaya['bahaya_jenisbahaya'];
		$p = $bahaya['p'];
		$s = $bahaya['s'];
		$sqlR = "SELECT * FROM tkapal_r WHERE r_p='$p' and r_s='$s'"; //echo $sqlR;
		$rowR = mysql_query($sqlR) or die ("sql R database db_kapal gagal");
		$r = mysql_fetch_assoc($rowR);

				echo "<form action=\"\" method=\"post\">";
				echo "<tr>";
			    echo "<td class=\"tg-baqh\">".$idbahaya."</td>";
			    echo "<td class=\"tg-dzk6\">".$bahayajenis."</td>";
			    echo "<td class=\"tg-dzk6\">".$r['r_r']."</td>";
			    echo "<td class=\"tg-baqh\"><input type=\"text\" name =\"p\"></td>";
			    echo "<td class=\"tg-baqh\"><input type=\"text\" name =\"s\"></td>";
			    echo "<input type=\"hidden\" name=\"idbahaya\" value=\"".$idbahaya."\">";
			    echo "<td class=\"tg-baqh\"><input type=\"submit\" name =\"submit\" value =\"hitung\"></td>";
				echo "</tr>";
				echo "</form>";
		$no++;
	}
}
?>
</table>
</div>