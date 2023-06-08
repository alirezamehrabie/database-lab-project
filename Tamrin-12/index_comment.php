<?php

?>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>

	<h2>دیدگاه شما</h2>
	<p>لطفاً دیدگاه خود را از استفادۀ این محصول به اشتراک بگذارید</p>
  
   <form method="POST" id="comment_form">
	   <input type="text" value="<?php echo $comment_uid ?>" hidden name="comment_uid">
	   <input type="text" value="<?php echo $comment_productId ?>" hidden name="comment_productId">
    <div class="form-group">
     <input type="text" name="comment_name" id="comment_name" class="form-control" placeholder="نام خود را وارد کنید" />
		
    </div>
    <div class="form-group">
     <textarea name="comment_content" id="comment_content" class="form-control" placeholder="دیدگاه خود را بنویسید" rows="5"></textarea>
    </div>
    <div class="form-group">
     <input type="hidden" name="comment_id" id="comment_id" value="0" />
     <input type="submit" name="submit" id="submit" class="btn btn-info" value="ارسال پیام" />
		
    </div>
	   <div id="comment_message"></div>
   </form>
   
   
   <div id="display_comment"></div>




<script>
$(document).ready(function(){
 
 $('#comment_form').on('submit', function(event){
  event.preventDefault();
  var form_data = $(this).serialize();
  $.ajax({
   url:"add_comment.php",
   method:"POST",
   data:form_data,
   dataType:"JSON",
   success:function(data)
   {
    if(data.error != '')
    {
     $('#comment_form')[0].reset();
     $('#comment_message').html(data.error);
     $('#comment_id').val('0');
     load_comment();
    }
   }
  })
 });

 load_comment();

 function load_comment()
 {
  $.ajax({
   url:"fetch_comment.php",
   method:"POST",
   success:function(data)
   {
    $('#display_comment').html(data);
   }
  })
 }

 $(document).on('click', '.reply', function(){
  var comment_id = $(this).attr("id");
  $('#comment_id').val(comment_id);
  $('#comment_name').focus();
 });
 
});
</script>

