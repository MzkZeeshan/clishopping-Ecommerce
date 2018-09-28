<?php
include 'Php_files/Connections.php';
$sql = "SELECT products_info.Po_Id,P_Name,P_Price,P_S_Price FROM products_info INNER JOIN categories_info ON products_info.Po_Id = categories_info.Po_Id WHERE C_Name='Bueaty & Health' OR C_Name='Male Fashion'" ;
$result = mysqli_query($conn, $sql);
//print_r($result);

if (mysqli_num_rows($result) > 0) {
    ?>
<div class="shop_content">
						<div class="shop_bar clearfix">
							<div class="shop_product_count"><span><?php echo mysqli_num_rows($result) ?></span> products found</div>
							<div class="shop_sorting">
								<span>Sort by:</span>
								<ul>
									<li>
										<span class="sorting_text">highest rated<i class="fas fa-chevron-down"></span></i>
										<ul>
											<li class="shop_sorting_button" data-isotope-option='{ "sortBy": "original-order" }'>highest rated</li>
											<li class="shop_sorting_button" data-isotope-option='{ "sortBy": "name" }'>name</li>
											<li class="shop_sorting_button"data-isotope-option='{ "sortBy": "price" }'>price</li>
										</ul>
									</li>
								</ul>
							</div>
						</div>


<div class="product_grid">
							<div class="product_grid_border"></div>
<?php
while($row = mysqli_fetch_assoc($result)) {
    $re=mysqli_query($conn,"SELECT P_P_Name from picture_info where Po_iD = ".$row['Po_Id']);
												$r = mysqli_fetch_assoc($re);
												 $picture=$r['P_P_Name'];
    ?>
    <a href="product_Detail.php?p=<?php echo $row['Po_Id'];?>">
							<!-- Product Item -->
							<div class="product_item is_new">
								<div class="product_border"></div>
								<div class="product_image d-flex flex-column align-items-center justify-content-center"><img src="product_images/<?php echo $picture;?>" alt=""></div>
								<div class="product_content">
                                    <div class="price_box"/>

													<del>Rs. <?php echo $row['P_Price']; ?></del>

									<div class="product_price" style="margin-top:0px;" >Rs. <?php echo $row['P_S_Price']; ?></div>
</div>
<div class="product_name"><div><a href="#" tabindex="0"><?php echo str_split($row['P_Name'],15)[0];?></a></div></div>
								</div>
								<div class="product_fav"><i class="fas fa-heart"></i></div>
								<ul class="product_marks">
									<li class="product_mark product_discount">00</li>
									<li class="product_mark product_new">new</li>
								</ul>
                            </div>
</a>
<?php }
} ?>
						</div>
