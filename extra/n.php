<?php
$random = substr(number_format(time() * rand(),0,'',''),0,10);
echo $random;
?>