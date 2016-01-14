<?php # index.php # Code for some practice page I guess
$page_title = "Home";

$content['body'] = <<<_END
<div class="content">
	<div class="grid">
		<div class="col-1-2"></div>
		<div class="col-1-2"></div>
	</div>
	<div class="grid">
		<div class="col-1-7"></div>
		<div class="col-4-7"></div>
		<div class="col-2-7"></div>
	</div>
	<div class="grid">
		<div class="col-1-5"></div>
		<div class="col-3-10"></div>
		<div class="col-2-5"></div>
		<div class="col-1-10"></div>
	</div>
	<div class="grid">
		<div class="col-2-5"></div>
		<div class="col-1-5"></div>
		<div class="col-2-5"></div>
	</div>
</div>
_END;
include('./header.php');
//Body info goes here
echo $content['body'];
include('./footer.php');
?>	