
<?php

include 'settings.php';
include 'db.php';
include 'security.php';
//add_comment.php

$connect = new PDO('mysql:host=localhost;dbname=project', 'root', '');

$error = '';
$comment_name = '';
$comment_content = '';
$comment_uid = $_POST["comment_uid"];
$comment_productId = $_POST["comment_productId"];

if(empty($_POST["comment_name"]))
{
 $error .= '<label class="text-error">نام خود را وارد نکرده اید</label>';
}
else
{
 $comment_name = $_POST["comment_name"];
}

if(empty($_POST["comment_content"]))
{
 $error .= '<label class="text-error">هیچ متنی برای دیدگاه وارد نشده است</label>';
}
else
{
 $comment_content = $_POST["comment_content"];
}

if($error == '')
{
 $query = "
 INSERT INTO tbl_comment 
 (parent_comment_id, comment, comment_sender_name, comment_uid, comment_productId) 
 VALUES (:parent_comment_id, :comment, :comment_sender_name, :comment_uid, :comment_productId)
 ";
 $statement = $connect->prepare($query);
 $statement->execute(
  array(
   ':parent_comment_id' => $_POST["comment_id"],
   ':comment'    => $comment_content,
   ':comment_sender_name' => $comment_name,
   ':comment_uid' => $comment_uid, 
   ':comment_productId' => $comment_productId
	  
  )
 );
 $error = '<label class="text-success">دیدگاه شما با موفقیت ثبت گردید</label>';
}

$data = array(
 'error'  => $error
);

echo json_encode($data);

?>