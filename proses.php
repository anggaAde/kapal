<?php
include "fungsions.php";

?>
<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;border-color:#ccc;}
.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:0px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#fff;border-top-width:1px;border-bottom-width:1px;}
.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:0px;overflow:hidden;word-break:normal;border-color:#ccc;color:#333;background-color:#f0f0f0;border-top-width:1px;border-bottom-width:1px;}
.tg .tg-baqh{text-align:center;vertical-align:top}
.tg .tg-dzk6{background-color:#f9f9f9;text-align:center;vertical-align:top}
@media screen and (max-width: 767px) {.tg {width: auto !important;}.tg col {width: auto !important;}.tg-wrap {overflow-x: auto;-webkit-overflow-scrolling: touch;}}</style>
<div class="tg-wrap"><table class="tg">
  <tr>
    <th class="tg-baqh">No</th>
    <th class="tg-baqh">Proses</th>
    <th class="tg-baqh">keterangan</th>
  </tr>
<?

if(isset($_POST['submit'])&&$_POST['submit']=='kayu')
{
	$jeniskapal = 1;
	loadproses($jeniskapal);
	echo 'kayu';
}
if(isset($_POST['submit'])&&$_POST['submit']=='baja')
{
	$jeniskapal = 2;
	loadproses($jeniskapal);
	echo 'baja';
}
if(isset($_POST['submit'])&&$_POST['submit']=='fiber')
{
	$jeniskapal = 3;
	loadproses($jeniskapal);
	echo 'fiber';
}
?>
</table></div>