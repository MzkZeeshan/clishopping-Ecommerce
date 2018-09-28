<?php 
session_start();
//echo $_SESSION['name'];

if(isset($_POST['submit']) )
{
   // print_r($_SESSION['cart']);
    include "Php_files/Connections.php";
    $customerName=$_SESSION['name'];
    $customerPhone=$_SESSION['phone'];
    $customerEmail=$_SESSION['email'];
    $customerAddress=$_SESSION['message'];
    $customerPaymentMethod="Cash On Deliver";
    $productInfo=$_SESSION['cart'];
    $sqli="INSERT INTO `order_info` (`customer_id`, `customer_name`, `customer_phone`, `customer_email`, `customer_address`, `customer_payment_method`,`customer_done_flag`) VALUES (NULL, '$customerName', '$customerPhone', '$customerEmail', '$customerAddress', '$customerPaymentMethod','false');";
    if(mysqli_query($conn,$sqli))
    {
          $last_id = mysqli_insert_id($conn);
    for($j=0; $j<count($productInfo); ++$j)
    {
 
     $productId=$productInfo[$j][0];
        $productQuantity=$productInfo[$j][1];
        $sqli2="INSERT INTO `ordered_products` (`customer_id`, `product_id`, `product_quantity`) VALUES ('$last_id', '$productId', '$productQuantity')";
        if(mysqli_query($conn,$sqli2))
        {
            $flag=true;
        }
     
        


        // $sql1="select * from products_info where Po_Id=".$productInfo[$j][0];
        // $result2 =mysqli_query($conn,$sql1);
    // $row1=mysqli_fetch_assoc($result2);
    //     $product_name=$row1['P_Name'];
    //      $product_price=$row1['P_S_Price'];
         
        

    }
//    echo $flag;
    echo '<script src=js/Sweatalert.js></script>';

    if(isset($flag))
    {
        
        echo ' <script language="javascript">';
        echo 'swal({
            title: "Your order is received!",
            text: "We have accepted your order, and we are getting it ready!",
            type: "success"
        }).then(function() {
            window.location = "index.php";
        });';
        echo '</script>';

    //        echo ' <script language="javascript">';
    //     echo 'swal("", ". ", "success");';
    //    // echo ' location.replace("https://www.w3schools.com")';
    //    echo 'setTimeout(function () { location.replace("https://www.w3schools.com")';
    //     echo '}, 3000);';
    //    echo '</script>';
         unset($_SESSION['cart']);


        
    }  
else
    {
//     echo ' <script language="javascript">';
//     echo 'swal("Error!", "", "error");';
//    // echo ' location.replace("https://www.w3schools.com")';
//     echo '</script>';
//    unset($_SESSION['cart']);

   echo ' <script language="javascript">';
   echo 'swal({
       title: "Error!",
       text: "Your order is  not received! Because of Having problem Please Retry",
       type: "error"
   }).then(function() {
       window.location = "index.php";
   });';
   echo '</script>';
   unset($_SESSION['cart']);

    }
    

    

}

}
?>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from colorlib.com/preview/theme/onetech/contact.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 05 Aug 2018 22:24:24 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
<title>Contact</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="OneTech shop project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
<link href="plugins/fontawesome-free-5.0.1/css/fontawesome-all.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="styles/contact_styles.css">
<link rel="stylesheet" type="text/css" href="styles/contact_responsive.css">

<link rel="stylesheet" type="text/css" href="styles/cart_styles.css">
<link rel="stylesheet" type="text/css" href="styles/cart_responsive.css">

</head>

<body>

<div class="super_container">
	
	<!-- Header -->

<?php include 'Main_Body/header.php';?>

	<!-- Contact Info -->

	<div class="contact_info">
		<div class="container">
			<div class="row">
				<div class="col-lg-10 offset-lg-1">
					<div class="contact_info_container d-flex flex-lg-row flex-column justify-content-between align-items-between">

						<!-- Contact Item -->
						<div class="contact_info_item d-flex flex-row align-items-center justify-content-start">
							<div class="contact_info_image"><img src="images/contact_1.png" alt=""></div>
							<div class="contact_info_content">
								<div class="contact_info_title">Phone</div>
								<div class="contact_info_text"><?php if(isset($_SESSION['phone'])) {  echo $_SESSION['phone']; } else{  echo "No Number Given";} ?></div>
							</div>
						</div>

						<!-- Contact Item -->
						<div class="contact_info_item d-flex flex-row align-items-center justify-content-start">
							<div class="contact_info_image"><img src="images/contact_2.png" alt=""></div>
							<div class="contact_info_content">
								<div class="contact_info_title">Email</div>
								<div class="contact_info_text"><a href="" class="__cf_email__" data-cfemail="e78186949394868b8294a7808a868e8bc984888a">[<?php if(isset($_SESSION['email'])) {  echo $_SESSION['email']; } else{  echo "No Email Given";} ?>]</a></div>
							</div>
						</div>

						<!-- Contact Item -->
						<div class="contact_info_item d-flex flex-row align-items-center justify-content-start">
							<div class="contact_info_image"><img src="images/contact_3.png" alt=""></div>
							<div class="contact_info_content">
								<div class="contact_info_title">Address</div>
								<div class="contact_info_text"><?php if(isset($_SESSION['message'])) {  echo $_SESSION['message']; } else{  echo "No Address Given";} ?></div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>



	<!-- Contact Form -->

	<div class="cart_section">
		<div class="container">
			<div class="row">
				<div class="col-lg-10 offset-lg-1">
					<div class="cart_container">
						                        <?php
                        include 'Php_files/Connections.php';
                    
                        if(isset($_SESSION['cart']) && isset($_SESSION['count']))
                       {
                         //  print_r($_SESSION['cart']);
						   $a=$_SESSION['cart'];
						   $countMoney=0;
                           for($i=0; $i<count($a); ++$i)
                           {
                            //    echo "<br/> ".count($a)."iiii".$i;
							//  echo $a[$i][0];
							if(isset($a[$i][0]))
							{ 

						//	echo $aa;
                         $sql1="select * from products_info where Po_Id=".$a[$i][0];
                            $result2 =mysqli_query($conn,$sql1);
                        $row1=mysqli_fetch_assoc($result2);
                            $product_name=$row1['P_Name'];
							 $product_price=$row1['P_S_Price'];
							 $countMoney+=$product_price;
						
							 $sql3="select P_P_Name from picture_info where Po_iD= ".$a[$i][0];
							 $result3=mysqli_query($conn,$sql3);
							 $row3=mysqli_fetch_assoc($result3);
							//  echo $row3['P_P_Name']
                            ?>

                        
                        <div class="cart_items">
                      
                            
                 
                        <ul class="cart_list">
                               
								<li class="cart_item clearfix">
                                <div class="cart_item_image">
                    
                            <img src="<?php echo 'product_images/'.$row3['P_P_Name'];?>" alt=""></div>
									<div class="cart_item_info d-flex flex-md-row flex-column justify-content-between">
										<div class="cart_item_name cart_info_col">
											<div class="cart_item_title">Name</div>
											<div class="cart_item_text"><?php echo $product_name; ?></div>
										</div>
										<!-- <div class="cart_item_color cart_info_col">
											<div class="cart_item_title">Color</div>
											<div class="cart_item_text"><span style="background-color:#999999;"></span>Silver</div>
										</div> -->
										<div class="cart_item_quantity cart_info_col">
											<div class="cart_item_title">Quantity</div>
											<div class="cart_item_text"><?php echo  $a[$i][1]; ?></div>
										</div>
										<div class="cart_item_price cart_info_col">
											<div class="cart_item_title">Price</div>
											<div class="cart_item_text"><?php echo "Rs.".$product_price; ?></div>
										</div>
										<div class="cart_item_total cart_info_col">
											<div class="cart_item_title">Operation</div>
											<div class="cart_item_text"><a href="cart.php?remove=<?php echo $i; ?>">Remove</a></div>
										</div>
                                    </div>
                        
								</li>
                            </ul>
					
						</div>
						
						
						<?php }
					   }
					   
                        }?>
						
						<!-- Order Total -->
						<div class="order_total" style="height:124px;">
							<div class="order_total_content text-md-right">
                            <div class="order_total_title">Shipping Charges </div>
                                <div class="order_total_amount">Rs. 200</div>
                                
                                <br/>
                            <div class="order_total_title">Order Total:</div>
								<div class="order_total_amount">Rs. <?php  if(isset($countMoney)){ echo $countMoney;}?></div>
							</div>
						</div>
						
						<div class="cart_buttons">
                        <form method="post">
							<button type="button" class="button cart_button_clear">Add More Shopping</button>
                       
                            <button type="submit" name="submit" class="button cart_button_checkout">Checkout</button>
                           </form>
                        </div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Newsletter -->

	<!-- <div class="newsletter">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="newsletter_container d-flex flex-lg-row flex-column align-items-lg-center align-items-center justify-content-lg-start justify-content-center">
						<div class="newsletter_title_container">
							<div class="newsletter_icon"><img src="images/send.png" alt=""></div>
							<div class="newsletter_title">Sign up for Newsletter</div>
							<div class="newsletter_text"><p>...and receive %20 coupon for first shopping.</p></div>
						</div>
						<div class="newsletter_content clearfix">
							<form action="#" class="newsletter_form">
								<input type="email" class="newsletter_input" required="required" placeholder="Enter your email address">
								<button class="newsletter_button">Subscribe</button>
							</form>
							<div class="newsletter_unsubscribe_link"><a href="#">unsubscribe</a></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div> -->

	<!-- Footer -->
<?php include 'Main_Body/footer.php'?>
	<!-- Copyright -->


<?php include 'Main_Body/Copyright_Payment.php'?>
</div>

<script src="js/jquery-3.3.1.min.js"></script>
<script src="styles/bootstrap4/popper.js"></script>
<script src="styles/bootstrap4/bootstrap.min.js"></script>
<script src="plugins/greensock/TweenMax.min.js"></script>
<script src="plugins/greensock/TimelineMax.min.js"></script>
<script src="plugins/scrollmagic/ScrollMagic.min.js"></script>
<script src="plugins/greensock/animation.gsap.min.js"></script>
<script src="plugins/greensock/ScrollToPlugin.min.js"></script>
<script src="plugins/easing/easing.js"></script>
<!-- <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&amp;key=AIzaSyCIwF204lFZg1y4kPSIhKaHEXMLYxxuMhA"></script> -->
<script src="js/contact_custom.js"></script>

<!-- Global site tag (gtag.js) - Google Analytics -->
<!-- <script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-23581568-13');
</script> -->

</body>


<!-- Mirrored from colorlib.com/preview/theme/onetech/contact.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 05 Aug 2018 22:24:26 GMT -->
</html>