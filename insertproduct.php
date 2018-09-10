<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Clickshopping</title>
    <link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="styles/formstyle.css">
    <link href="https://gitcdn.github.io/bootstrap-toggle/2.2.2/css/bootstrap-toggle.min.css" rel="stylesheet">
<script src="https://gitcdn.github.io/bootstrap-toggle/2.2.2/js/bootstrap-toggle.min.js"></script>
<script src=js/Sweatalert.js></script>
</head>
<body>
  
  
<div class="container">
  <h2>Prduct Info</h2>
  <form method="post" enctype="multipart/form-data">
  <table border="1" >
  <div class="form-inline">
 
  <tr>
     <td> <label for="penable">Enable Product</label></td>
    <td>
      <label class="switch">
          <input type="checkbox" name="check" checked value="true">
          <span class="slider round"></span>
        </label>
        </td>
    </div>
    </tr>
    <div class="form-inline">
      <tr>
      <td><label for="pname">Product Name</label></td>
      <td><input type="text" class="form-control" id="pname" placeholder="Enter Product Name" name="pname"></td>
      </tr>
    </div>
    <div class="form-inline">
    <tr>
    <td>
        <label for="pprice">Price</label></td>
        <td><input type="number" class="form-control" id="pprice" placeholder="Enter Product Price" name="pprice"></td>
        </tr>
      </div>
      

      
      <div class="form-inline">
         <tr>
         <td> <label for="psprice">Special Price</label></td>
         <td> <input type="number" class="form-control" id="psprice" placeholder="Enter Product Special Price" name="psprice"></td>
       </tr>
        </div>

              <div class="form-inline">
         <tr>
         <td>
          <label for="pcategories">Categories</label></td>
     <td>  <select class="form-control"  multiple id="pcategories" placeholder="Enter Product Qunatity" name="pcategories[]">
         <option>Male Fashion</option>
         <option>Female Fashion</option>
         <option>Cosmatic</option>
        </select>
        </td>
        </tr>
        </div>
  
        <div class="form-inline">
            <tr><td><label for="pweight">Weight</label></td>
            <td>
            <input type="text" class="form-control" id="pweight" placeholder="Enter Product Weight" name="pweight">
         </td>
         </tr>
          </div>

        <div class="form-inline">
           <tr>
           <td> <label for="pquantity">Qunatity</label></td>

           <td> <input type="text" class="form-control" id="pquantity" placeholder="Enter Product Qunatity" name="pquantity"></td>
          </tr>
          </div>
          
        <div class="form-inline">
         <tr>
          <td><label for="pkeyfeature">Key Feature</label></td>
         <td> <textarea  class="form-control" id="pkeyfeature" name="pkeyfeature">
            </textarea>
            </td>
        </div>


        <div class="form-inline">
          <tr>
          <td>
          <label for="ppicture">Picture</label></td>
          <td><input type="file" class="btn btn-primary" name="ppicture[]" multiple></td>
          </tr>
        </div>
</table>
        
    <!-- <div class="form-inline
    ">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pswd">
    </div> -->
    <!-- <div class="form-group form-check">
      <label class="form-check-label">
        <input class="form-check-input" type="checkbox" name="remember"> Remember me
      </label>
    </div> -->
    <button type="submit" name="submit" class="btn btn-primary">Submit</button>
  </form>


<?php
if(isset($_POST['check']) && isset($_POST['pname']) && isset($_POST['pprice']) && isset($_POST['psprice']) && isset($_POST['pweight']) && isset($_POST['pquantity']) && isset($_POST['pkeyfeature']) &&isset($_POST['submit']))
{
    $check=$_POST['check'];
    $pname=$_POST['pname'];
    $pprice=$_POST['pprice'];
    $psprice=$_POST['psprice'];
    $pweight=$_POST['pweight'];
    $pquantity=$_POST['pquantity'];
    $pkeyfeature=$_POST['pkeyfeature'];
    $pcategories=$_POST['pcategories'];
     print_r($_FILES['ppicture']['tmp_name']);
     print_r($pcategories);


    include 'php_files/Connections.php';


    // if($flag)
    // {
    //   echo 'echo <script language="javascript">';
    //   echo 'swal("Here s the title!", "...and here s the text!");';
    //   echo '</script>';
    // }
    // else
    // {
    //   echo 'echo <script language="javascript">';
    //   echo 'alert("message succsadfsdfessfully sent")';
    //   echo '</script>';
    // }
 

    $sql = "INSERT INTO `products_info` (`Po_Id`, `P_Name`, `P_Price`, `P_S_Price`, `P_Weight`, `P_K_Feature`, `P_Quantity`) VALUES (NULL, '$pname', '$pprice', '$psprice', '$pweight', '$pkeyfeature', '$pquantity');";
    
    
    if (mysqli_query($conn, $sql)) 
    {
     echo $last_id = mysqli_insert_id($conn);
     
     foreach($pcategories as $pcategoriess)
      {
        include 'Php_files/upload.php';
              $sql1 ="INSERT INTO `categories_info` (`Po_Id`, `C_Name`) VALUES ('$last_id', '$pcategoriess')";
              if(mysqli_query($conn,$sql1) && $j)
              {
                echo 'echo <script language="javascript">';
                  echo 'swal("Good job!", "You Product Information has Been Submited", "success");';
                  echo '</script>';
              }  
        else
              {
              echo 'echo <script language="javascript">';
              echo 'swal("Error!", '.$j.', "error");';
              echo '</script>';
              }
      }



     

      

    }




    
mysqli_close($conn);

    echo $check;






}

?>



</div>
</body>
</html>
fuuast@115