<?php
session_start();


						if(isset($_GET['remove']))
						{
							$indexNoOFRemove=$_GET['remove'];
							
							//print_r($_SESSION['cart'][$indexNoOFRemove]);
							unset($_SESSION['cart'][$indexNoOFRemove]);
				

						}
					
?>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from colorlib.com/preview/theme/onetech/cart.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 05 Aug 2018 22:24:23 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<head>
<title>Cart</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="OneTech shop project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
<link href="plugins/fontawesome-free-5.0.1/css/fontawesome-all.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="styles/cart_styles.css">
<link rel="stylesheet" type="text/css" href="styles/cart_responsive.css">

</head>

<body>

<div class="super_container">
	
	<!-- Header -->
<?php include 'Main_Body/header.php';?>

	<!-- Cart -->

	<div class="cart_section">
		<div class="container">
			<div class="row">
				<div class="col-lg-10 offset-lg-1">
					<div class="cart_container">
						<div class="cart_title">Shopping Cart</div>
                        <?php
                        include 'Php_files/Connections.php';
						//print_r($_SESSION['cart']);
								 
                        if(isset($_SESSION['cart']) && isset($_SESSION['count']))
                       {
                        
						   $a=$_SESSION['cart'];
						   
end($a);
 $key = key($a);  // fetches the key of the element pointed to by the internal pointer

						   $countMoney=0;
                           for($i=0; $i<=$key; $i++)
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
						<div class="order_total">
							<div class="order_total_content text-md-right">
								<div class="order_total_title">Order Total:</div>
								 <div class="order_total_amount">Rs. <?php  if(isset($countMoney)){ echo $countMoney;}?></div> 
							</div>
						</div>
						
						<div class="cart_buttons">
							<button type="button" onclick="javascript:window.location.href='index.php'" class="button cart_button_clear">Add More Shopping</button>
							<button type="button" class="button cart_button_checkout" onclick="javascript:window.location.href='checkout.php'">Checkout</button>
						</div>
						
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Newsletter -->


	<!-- Footer -->

<?php include 'Main_Body/footer.php';?>

	<!-- Copyright -->


<?php include 'Main_Body/Copyright_Payment.php';?>
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
<script src="js/cart_custom.js"></script>

<!-- Global site tag (gtag.js) - Google Analytics -->
<!-- <script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-23581568-13');
</script> -->

</body>


<!-- Mirrored from colorlib.com/preview/theme/onetech/cart.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 05 Aug 2018 22:24:24 GMT -->
</html>