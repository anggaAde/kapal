<?php
include "database.php";
?>
<html>
<head></head>
<body>
<form method="POST" action="proses.php">
	<?php
	$sqlkapal="SELECT * FROM tkapal_kapal";
	$rowkapal= mysql_query($sqlkapal) or die ("sql kapal database db_kapal gagal");
	while ($kapal = mysql_fetch_assoc($rowkapal))
		{ ?>
			<input name="submit" type="submit" value="<?php echo $kapal['kapal_jenis'];?>">
			<?php
		}
	?>

</form>
</body>
</html>