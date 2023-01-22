<?php

include 'includes/db.php';
include 'templates/header.php';

$item_ns = @$_POST['item_ns'];
echo "Home/{$item_ns}";
?>
<style type="text/css">
	.button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 16px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  transition-duration: 0.4s;
  cursor: pointer;
}

.button1 {
  background-color: white; 
  color: black; 
  border: 2px solid #4CAF50;
}

.button1:hover {
  background-color: #4CAF50;
  color: white;
}

.collapsible {
  background-color: #04AA6D;
  color: white;
  cursor: pointer;
  padding: 18px;
  width: 100%;
  border: none;
  text-align: left;
  outline: none;
  font-size: 15px;
}

.active, .collapsible:hover {
  background-color: #555;
}

.content {
  padding: 0 3px;
  display: none;
  overflow: hidden;
  background-color: #f1f1f1;
}
/* Full-width input fields */
input[type=text], input[type=password] {
  width: 80%;
  padding: 15px;
  margin: 1px 0 10px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}
.registerbtn {
  background-color: #04AA6D;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}
.tabs {
  padding: 2px;
  border-spacing: 2px;
}
</style>
<body>
	<?php
        $select_all_post = "SELECT * FROM products WHERE name LIKE '%$item_ns%'";
        $prod_result = mysqli_query($conn, $select_all_post);

        while($row = mysqli_fetch_assoc($prod_result)){
          $item_cat = $row['category_id'];
          $item_des = $row['description'];
          $item_price = $row['price'];
          $item_img = $row['photo'];
          $item_name = $row['name'];
          $item_id = $row['id'];


        ?>

        <!-- Product Detail Start -->
        <div class="product-detail">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-8">
                        <div class="product-detail-top">
                            <div class="row align-items-center">
                                <div class="col-md-5">
                                    <div class="product-slider-single normal-slider">
                                        
                                        <img src="/images/<?php echo"{$item_img}" ?>" class="img-responsive">
                                        
                                    </div>
                                    
                                </div>
                                <div class="col-md-7">
                                    <div class="product-content">
                                        <div class="title"><h2><?php echo"{$item_name}" ?></h2></div>
                                        <div class="ratting">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </div>
                                        <div class="price">
                                            <h4>Price:</h4>
                                            <p> <span>$ <?php echo"{$item_price}" ?></span></p>
                                        </div>
                                        <div class="quantity">
                                            <h4>Quantity:</h4>
                                            <div class="qty">
                                                
                                                <input type="text" value="1" >
                                                
                                            </div>
                                        </div>
                                        
                                        <div class="p-color">
                                            <h4>Color:</h4>
                                            <div class="btn-group btn-group-sm">
                                                <button type="button" class="btn">White</button>
                                                <button type="button" class="btn">Black</button>
                                                <button type="button" class="btn">Blue</button>
                                            </div> 
                                        </div>
                                        <div class="action">



                             

                                           <button type="button" class="collapsible button button1">Shipment To</button>
<div  class="content">
  <form action="/action_page.php">
  <div class="container">
    <h1>Address and Details</h1>
    <p>Please fill in this form for your product shipment.</p>
    <hr>
    <table width="80%" class="tabs">
    <tr width="100%">
    <td width="40%" >
    <label for="fname"><b>First Name</b></label><br>
    <input type="text" placeholder="Enter Email" name="fname" id="fname" required>
    </td>
    <td width="40%" colspan="2">
    <label for="sname"><b>Last Name</b></label><br>
    <input type="text" placeholder="Enter Email" name="sname" id="sname" required>
    </td>
    </tr>
    <tr>
    <td>
    <label for="addr1"><b>Address 1</b></label><br>
    <input type="text" placeholder="House No/" name="addr1" id="addr1" required>
    </td>
    <td>
    <label for="addr2"><b>Address 2</b></label><br>
    <input type="text" placeholder="street and more" name="addr2" id="addr2" required>
    </td>
    </tr>
    
    
    <tr>
    <td width="40%">
    <label for="counry"><b>Country</b></label><br>
    <input type="text" placeholder="Country" name="counry" id="counry" required>
    </td>
    <td width="25%">
    <label for="cty"><b>City</b></label><br>
    <input type="text" placeholder="City" name="cty" id="cty" required>
    </td>
    <td width="25%">
    <label for="pincd"><b>Pincode</b></label><br>
    <input type="text" placeholder="Pincode" name="pincd" id="pincd" required>
    </td>
    </tr>
    
    <tr>
    <td width="50%">
    <label for="email"><b>Email ID</b></label><br>
    <input type="text" placeholder="Pincode" name="email" id="email" required>
    </td>
    
    </tr>
    </table>
   
    <button  type="submit" class="registerbtn">Buy Now</button>
    <hr>
  </div>
</form>
</div>


<script>
var coll = document.getElementsByClassName("collapsible");
var i;

for (i = 0; i < coll.length; i++) {
  coll[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var content = this.nextElementSibling;
    if (content.style.display === "block") {
      content.style.display = "none";
    } else {
      content.style.display = "block";
    }
  });
}
</script>


                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="row product-detail-bottom">
                            <div class="col-lg-12">
                                <ul class="nav nav-pills nav-justified">
                                    <li class="nav-item">
                                        
                                    </li>
                                </ul>

                                <div class="tab-content">
                                    <div id="description" class="container">
                                        <h4>Product description</h4>
                                        <p>
                                            <?php echo"{$item_des}" ?>
                                        </p>
                                    </div>
                            </div>
                        </div>
                        
   <?php } ?>
    </body>
</html>

</body>

