<?php

session_start();


if(isset($_POST['submit']) )
{ 
	$product_id=$_POST['submit'];
	$quantity=1;
	$cart=array($product_id,$quantity);
	if(!isset($_SESSION['cart']) && empty($_SESSION['cart']))
	{
		$_SESSION['cart']=array(array($product_id,$quantity));
		$_SESSION['count']+=1;
		//array_push($_SESSION['cart'],$cart);
		//ob_start();
		

	
header("Location: ../index.php");
		
	}
	else
	{
		array_push($_SESSION['cart'],$cart);
		$_SESSION['count']+=1;

        header("Location: ../index.php?f=ok");
		
		//ob_start();
		
	}

	// session_destroy();

	// session_unset(); 
	// print_r($_SESSION['cart']);
	// print_r($_SESSION['cart'][2]);
	
	

	//echo " <script> location.replace('cart.php'); </script>";
	
	
	//print_r($_SESSION['cart']);
}
?>