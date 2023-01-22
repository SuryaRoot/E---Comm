
<?php
$search = @$_POST['search'];
$cat_item = @$_POST['cat_item'];
$item_ns = @$_POST['item_ns'];

?>
<script type="text/javascript">
    $(document).ready(function(){
  
  $('.claimedRight').each(function (f) {

      var newstr = $(this).text().substring(0,55);
      $(this).text(newstr);

    });
})

</script>
<div class="container">
    <div class="row">

        <?php


        $select_all_item = "SELECT * FROM products tm LEFT JOIN category tx on tm.category_id = tx.id WHERE slug LIKE '%$search%'";
    

        $item_result = mysqli_query($conn, $select_all_item);

        $post_count = mysqli_num_rows($item_result);

        if($post_count === 0){
            echo "<h2><center>No Result</h2>";
        }
        while($row = mysqli_fetch_assoc($item_result)){
          $item_catys = $row['cat_slug'];
          
          $item_cat = $row['category_id'];
          $item_des = $row['description'];
          $item_price = $row['price'];
          $item_img = $row['photo'];
          $item_name = $row['name'];

        if ($cat_item === 'all') {
            $set_valu = 0;
          }
          else{
             $set_valu = 1;
          }

          if($cat_item === $item_catys){
        ?>
        <div class="col-md-4">
              <div class="thumbnail">
                <img src="http://tech.firstpost.com/wp-content/uploads/2014/09/Apple_iPhone6_Reuters.jpg" alt="" class="img-responsive">
                <div class="caption">
                  <h4 class="pull-right">$ <?php echo"{$item_price}" ?></h4>
                  <h4><a href="#"><?php echo"{$item_name}" ?></a></h4>


<span class="claimedRight" maxlength="100"><?php echo"{$item_des}" ?> </span>

                </div>
                <div class="ratings">
                  <p>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                     (15 reviews)
                  </p>
                </div>
                <div class="space-ten"></div>
                <div class="btn-ground text-center">
                    <form class='navbar-form navbar-left' action='viewpage.php' method='post'>
                    <input type='hidden' value='<?php echo"{$item_name}" ?>' class='form-control' placeholder='Item_ns' name='item_ns'>
                    <button type="submit" name='submit' class="btn btn-primary" data-toggle="modal" data-target="#product_view"><i class="fa fa-search"></i> Quick View</button>
            </form>








                </div>
                <div class="space-ten"></div>
              </div>
            </div>

<?php 
}   
if ($cat_item === 'all') {
?>
 <div class="col-md-4">
              <div class="thumbnail">
                <img src="http://tech.firstpost.com/wp-content/uploads/2014/09/Apple_iPhone6_Reuters.jpg" alt="" class="img-responsive">
                <div class="caption">
                  <h4 class="pull-right">$ <?php echo"{$item_price}" ?></h4>
                  <h4><a href="#"><?php echo"{$item_name}" ?></a></h4>


<span class="claimedRight" maxlength="100"><?php echo"{$item_des}" ?> </span>

                </div>
                <div class="ratings">
                  <p>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                     (15 reviews)
                  </p>
                </div>
                <div class="space-ten"></div>
                <div class="btn-ground text-center">
                    
                    <form class='navbar-form navbar-left' action='viewpage.php' method='post'>
                    <input type='hidden' value='<?php echo"{$item_name}" ?>' class='form-control' placeholder='Item_ns' name='item_ns'>
                    <button type="submit" name='submit' class="btn btn-primary" data-toggle="modal" data-target="#product_view"><i class="fa fa-search"></i> Quick View</button>
            </form>


                </div>
                <div class="space-ten"></div>
              </div>
            </div>

<?php 

}

} 



?>

   </div>
</div>