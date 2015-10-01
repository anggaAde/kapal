<?php
include "database.php";
function floadproses($jeniskapal)
{
	$sqlproses="SELECT * FROM tkapal_proses WHERE `proses_jenis`='$jeniskapal'";
	$rowproses = mysql_query($sqlproses) or die ("sql proses database db_kapal gagal");
	$no = 1;
	while ($proses = mysql_fetch_assoc($rowproses))
	{
		$id = $proses['proses_id'];
		$prosesbuat = $proses['proses_proses'];
		$ket = $proses['proses_ket'];
			  echo "<tr>";
			    echo "<td class=\"tg-baqh\"><a href=\"bahaya.php?id=".$id."\">".$no."</a></td>";
			    echo "<td class=\"tg-dzk6\">".$prosesbuat."</td>";
			    echo "<td class=\"tg-baqh\">".$ket."</td>";
			  echo "</tr>";
		$no++;
	}	
}

function fjeniskapal($namakapal)
{
	$sqlidkapal="SELECT * FROM tkapal_kapal WHERE `kapal_jenis`='$namakapal'";
	$rowidkapal = mysql_query($sqlidkapal) or die ("sql proses database db_kapal gagal");
	$idkapal = mysql_fetch_assoc($rowidkapal);
	$idkapalnya = $idkapal['kapal_id'];
	return $idkapalnya;
}

function floadbahaya($idproses)
{
	$sqlbahaya = "SELECT * FROM tkapal_bahaya WHERE bahaya_proses = '1'";
	$rowbahaya = mysql_query($sqlbahaya) or die ("sql bahaya database db_kapal gagal");
	$no = 1;
	while ($bahaya = mysql_fetch_assoc($rowbahaya))
	{
		$idbahaya = $bahaya['bahaya_id'];
		$bahaya = $bahaya['bahaya_jenisbahaya'];
			  echo "<tr>";
			    echo "<td class=\"tg-baqh\">".$no."</td>";
			    echo "<td class=\"tg-dzk6\">".$bahaya."</td>";
			    echo "<td class=\"tg-baqh\"><input type=\"text\" name = \"p\"></td>";
			    echo "<td class=\"tg-baqh\"><input type=\"text\" name = \"s\"></td>";
			    echo "<td class=\"tg-baqh\"><input type=\"submit\" value = \"hitung\"></td>";
			  echo "</tr>";
		$no++;
	}
}
?>