<?php # index.php # Code for some practice page I guess
$page_title = "Home";

$content['body'] = <<<_END
<div id="board" class="content">
	
</div>
_END;
include('./header.php');
//Body info goes here
echo $content['body'];
include('./footer.php');
?>	