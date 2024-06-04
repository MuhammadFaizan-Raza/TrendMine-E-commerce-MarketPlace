<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TrendMine Marketplace</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"/>
</head>
<body>
    <section id="header">
        <img src="img/logo.svg" alt="" class="logo">        
  
  
        <div class="search-wrapper">
            <form>
            <input type="text" name="focus" required class="search-box" placeholder="Enter search items" />
                <button class="close-icon" type="reset"><i class="fa-solid fa-xmark"></i></button>
            </form>
        </div>
  
  
  
  
        <div>
            <ul id="navbar">
                <li><a class="active" href="index.html">Home</a></li>
                <li><a href="shop.html">Shop</a></li>
                <li><a href="blog.html">Blog</a></li>
                <li><a href="about.html">About</a></li>
                <li><a href="contact.html">Contact</a></li>
                <li><a href="cart.html"><i class="fa-solid fa-bag-shopping"></i></i></a></li>
            </ul>
        </div>
    </section>
    <!--Id=hero wala hai jisko offerSlider naam diya hai isko baad main slider banana-->
    <section id="offerSlider">
        <h4>Trade-in-offer</h4>
        <h2>Super Value Deals</h2>
        <h1>On all products</h1>
        <p>Save more with coupons & up to 70% off!</p>
        <button>Shop Now</button>
    </section>
    <section id="feature" class="section-p1">
        <div class="fe-box"><img src="img/features/f1.png" alt="">
            <h6>Free Shipping</h6>
        </div>
        <div class="fe-box">
            <img src="img/features/f2.png" alt="">
            <h6>Online Order</h6>
        </div>
            <div class="fe-box">
            <img src="img/features/f3.png" alt=""> <h6>Save Money</h6>
        </div>
        <div class="fe-box">
            <img src="img/features/f4.png" alt="">
            <h6>Promotions</h6>
        </div>
        <div class="fe-box">
            <img src="img/features/f5.png" alt="">
            <h6>Happy Sell</h6>
        </div>
        <div class="fe-box">
            <img src="img/features/f6.png" alt="">
            <h6>F24/7 Support</h6>
        </div>
    </section>
    <section id="product1" class="section-p1">
        <h2>Featured Products</h2>
        <p>Summer Collection New Modern Design</p>
        <img src="https://drive.google.com/file/d/1zLBw41hb0u0cbcs9rSTnkGKLHh7aXRWt/view?usp=sharing" alt=''>
        <div class="pro-container">
            <?php
                // Database connection parameters
                $servername = "localhost";
                $username = "root";
                $password = "";
                $database = "Trendmine_Project";

                // Create connection
                $conn = new mysqli($servername, $username, $password, $database);

                // Check connection
                if ($conn->connect_error) {
                    die("Connection failed: " . $conn->connect_error);
                }

                // Query to fetch products with product information
                $sql = "SELECT product_category.CategoryID, product_category.Prod_Category, product_information.Prod_Name, product_information.Prod_Description, product_information.Prod_Manufacturer, product_information.Prod_Price, product_information.Image
                     FROM product_category
                     INNER JOIN product_information ON product_category.ProductID = product_information.Prod_Id
                     LIMIT 8";  

                $result = $conn->query($sql);

                // Check if there are results
                if ($result->num_rows > 0) {
                    // Output data of each row
                    while ($row = $result->fetch_assoc()) {
                        echo "<div class='pro'>";
                        echo "<img src='" . $row["Image"] . "' alt=''>";
                        echo "<div class='des'>";
                        echo "<span>" . $row["Prod_Manufacturer"] . "</span>";
                        echo "<h5>" . $row["Prod_Name"] . "</h5>";
                        echo "<div class='star'>";
                        echo "<i class='fas fa-star'></i>";
                        echo "<i class='fas fa-star'></i>";
                        echo "<i class='fas fa-star'></i>";
                        echo "<i class='fas fa-star'></i>";
                        echo "<i class='fas fa-star'></i>";
                        echo "</div>";
                        echo "<h4>$" . $row["Prod_Price"] . "</h4>";
                        echo "</div>";
                        echo "<a href='#'><i class='fa-solid fa-cart-shopping cart'></i></a>";
                        echo "</div>";
                    }
                } else {
                    echo "No products found.";
                }

                // Close the connection
                $conn->close();
            ?>
        </div>

    </section>
    <section id="banner" class="section-m1">
        <h4>Repair Services</h4>
        <h2>Up to <span>70% off</span>- All T-shirts and Accessories</h2>
        <button class="normal">Explore More</button>
    </section>
    <section id="product2" class="section-p1">
        <h2>New Arrivals</h2>
        <p>Summer Collection New Modren Design</p>
        <div class="pro-container">
            <div class="pro">
                <img src="img/products/n1.jpg" alt="">
                <div class="des">
                    <span>adidas</span>
                    <h5>Cartoon Astronaut T-shirts</h5>
                    <div class="star">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                    <h4>$78</h4>
                </div>
                <a href="#"><i class="fa-solid fa-cart-shopping cart"></i></a>
            </div>
            <div class="pro">
                <img src="img/products/n2.jpg" alt="">
                <div class="des">
                    <span>adidas</span>
                    <h5>Cartoon Astronaut T-shirts</h5>
                    <div class="star">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                    <h4>$78</h4>
                </div>
                <a href="#"><i class="fa-solid fa-cart-shopping cart"></i></a>
            </div>
            <div class="pro">
                <img src="img/products/n3.jpg" alt="">
                <div class="des">
                    <span>adidas</span>
                    <h5>Cartoon Astronaut T-shirts</h5>
                    <div class="star">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                    <h4>$78</h4>
                </div>
                <a href="#"><i class="fa-solid fa-cart-shopping cart"></i></a>
            </div>
            <div class="pro">
                <img src="img/products/n4.jpg" alt="">
                <div class="des">
                    <span>adidas</span>
                    <h5>Cartoon Astronaut T-shirts</h5>
                    <div class="star">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                    <h4>$78</h4>
                </div>
                <a href="#"><i class="fa-solid fa-cart-shopping cart"></i></a>
            </div>
            <div class="pro">
                <img src="img/products/n5.jpg" alt="">
                <div class="des">
                    <span>adidas</span>
                    <h5>Cartoon Astronaut T-shirts</h5>
                    <div class="star">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                    <h4>$78</h4>
                </div>
                <a href="#"><i class="fa-solid fa-cart-shopping cart"></i></a>
            </div>
            <div class="pro">
                <img src="img/products/n6.jpg" alt="">
                <div class="des">
                    <span>adidas</span>
                    <h5>Cartoon Astronaut T-shirts</h5>
                    <div class="star">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                    <h4>$78</h4>
                </div>
                <a href="#"><i class="fa-solid fa-cart-shopping cart"></i></a>
            </div>
            <div class="pro">
                <img src="img/products/n7.jpg" alt="">
                <div class="des">
                    <span>adidas</span>
                    <h5>Cartoon Astronaut T-shirts</h5>
                    <div class="star">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                    <h4>$78</h4>
                </div>
                <a href="#"><i class="fa-solid fa-cart-shopping cart"></i></a>
            </div>
            <div class="pro">
                <img src="img/products/n8.jpg" alt="">
                <div class="des">
                    <span>adidas</span>
                    <h5>Cartoon Astronaut T-shirts</h5>
                    <div class="star">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                    </div>
                    <h4>$78</h4>
                </div>
                <a href="#"><i class="fa-solid fa-cart-shopping cart"></i></a>
            </div>
        </div>
    </section>
    <section id="sm-banner">
        <div class="banner-box">
            <h4>Crazy Deals</h4>
            <h2>Buy 1 get 1 Free</h2>
            <span>The best classic dress is on sale at TrendMine</span>
            <button class="white">Learn More</button>
        </div>
        <div class="banner-box2">
            <h4>Spring Summer</h4>
            <h2>Upcoming Season</h2>
            <span>The best classic dress is on sale at TrendMine</span>
            <button class="white">Collection</button>
        </div>
    </section>
    <section id="banner3">
        <div class="banner-box">
            <h2>Seasonal Sale</h2>
            <h3>Winter Collection -50% Off</h3>
        </div>
        <div class="banner-box2">
            <h2>New Footwear Collection</h2>
            <h3>Spring/Summer 2024</h3>
        </div>
        <div class="banner-box3">
            <h2>T-Shirts</h2>
            <h3>New Trendy Prints</h3>
        </div>
    </section>
    <section id="newsletter" class="section-p1 section-m1">
        <div class="newstext">
            <h4>Sign Up for NewsLetters</h4>
            <p>Get E-mail Updates about our latest shop and <span>special Offers.</span></p>
        </div>
        <div class="form">
            <input type="text" name="" id="" placeholder="Your Email Address">
            <button class="normal">Sign Up</button>
        </div>
    </section>
    <footer class="section-p1">
        <div class="col">
            <img id="footer-logo" class="logo" src="img/logo.svg" alt="">
            <h4>Contact</h4>
            <p><strong>Address:</strong> Even Fields 6/1, 562 Wellington Road ,xyz street 3-B,Florida<br><br><strong>Phone:</strong> +44-211-4541<br><br><strong>Hours:</strong> 8:00am - 11:00pm Mon - Sat</p>
            <div class="follow">
                <h4>Follow US</h4>
                <div class="icon">
                    <i class="fa-brands fa-facebook-f"></i>
                    <i class="fa-brands fa-x-twitter"></i>
                    <i class="fa-brands fa-instagram"></i>
                    <i class="fa-brands fa-pinterest-p"></i>
                    <i class="fa-brands fa-youtube"></i>
                </div>
            </div>
        </div>
        <div class="col">
            <h4>About</h4>
            <a href="#">About Us</a>
            <a href="#">Delivery Information</a>
            <a href="#">Privacy Policy</a>
            <a href="#">Terms and Conditions</a>
            <a href="#">Contact Us</a>
        </div>
        <div class="col">
            <h4>My Account</h4>
            <a href="#">Sign in</a>
            <a href="#">View Cart</a>
            <a href="#">My Wishlist</a>
            <a href="#">Track My Order</a>
            <a href="#">Help</a>
        </div>
        <div class="col install">
            <h4>Install App</h4>
            <p>From App Store or Google Play</p>
            <div class="row">
                <img src="img/pay/app.jpg" alt="">
                <img src="img/pay/play.jpg" alt="">
            </div>
            <p>Secured Payment Gateways</p>
            <img src="img/pay/pay.png" alt="">
        </div>
        <div class="copyright">
            <p>2024, TechMine_KK-All Rights Reserved &#169;</p>
        </div>
    </footer>
    <script src="script.js"></script>
</body>
</html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Your Shopping Website</title>
    <!-- Include your CSS stylesheets and other head elements here -->
</head>
<body>
    <!-- Your existing HTML code -->


    <!-- Your remaining HTML code -->

    <!-- Include your JavaScript files and other body elements here -->
</body>
</html>














