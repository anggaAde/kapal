<?
include "database.php";
function loadproses($jeniskapal)
{
	$sqlproses="SELECT * FROM tkapal_proses WHERE `jenis`='$jeniskapal'";
	//$sqlproses="SELECT * FROM tkapal_proses WHERE `jenis`='1'";
	$rowproses = mysql_query($sqlproses) or die ("sql proses database db_kapal gagal");
	$no = 1;
	while ($proses = mysql_fetch_assoc($rowproses))
	{
		$prosesbuat = $proses['proses'];
		$ket = $proses['ket'];
			  echo "<tr>";
			    echo "<td class=\"tg-baqh\">".$no."</td>";
			    echo "<td class=\"tg-dzk6\">".$prosesbuat."</td>";
			    echo "<td class=\"tg-baqh\">".$ket."</td>";
			  echo "</tr>";
		$no++;
	}	
}
?>