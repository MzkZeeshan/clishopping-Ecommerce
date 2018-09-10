
<?php

$flag=false;
$j = 0;     // Variable for indexing uploaded image.
$target_path = "product_images/";
print_r($_FILES['ppicture']['name']);     // Declaring Path for uploaded images.
for($i = 0; $i < count($_FILES['ppicture']['name']); $i++)
 {
// Loop to get individual element from the array
$validextensions = array("jpeg", "jpg", "png","PNG");      // Extensions which are allowed.
$ext = explode('.', basename($_FILES['ppicture']['name'][$i]));   // Explode file name from dot(.)
$file_extension = end($ext); // Store extensions in the variable.
$target_file= basename($_FILES['ppicture']['name'][$i]);
 

$target_pathh = $target_path .$i.'__'. date('d_m_Y').'time'.date('H_i_s'). "." . pathinfo($target_file,PATHINFO_EXTENSION);     // Set the target path with a new name of image.
$j = $j + 1;      // Increment the number of uploaded images according to the files in array.
if (($_FILES["ppicture"]["size"][$i] < 2000000)     // Approx. 1000kb files can be uploaded.
&& in_array($file_extension, $validextensions)) {
if (move_uploaded_file($_FILES['ppicture']['tmp_name'][$i], $target_pathh)) {
// If file moved to uploads folder.
$sql2="INSERT INTO `picture_info` (`Po_iD`, `P_P_Name`) VALUES ('$last_id', '$target_pathh')";
if(mysqli_query($conn,$sql2))
{
    echo "inserted";
    $flag=true;
}

//echo $j. ').<span id="noerror">Image uploaded successfully!\\\\\\\\\\\\\\\\\\.</span><br/><br/>';
} else {     //  If File Was Not Moved.
$j= 'please try again!';
}
} else {     //   If File Size And File Type Was Incorrect.
 $j="***Invalid file Size or Type***";
}
}


?>