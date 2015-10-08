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
	
}
?>