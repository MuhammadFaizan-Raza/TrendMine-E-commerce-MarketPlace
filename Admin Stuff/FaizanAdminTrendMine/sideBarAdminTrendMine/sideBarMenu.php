<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8" />
    <title>Sidebar</title>
    <link rel="stylesheet" href="style.css" />
    <link
      href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css"
      rel="stylesheet"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  </head>
  <body>
    <input
      type="checkbox"
      name="sideBarShow"
      id="sideBarShow"
      class="sideBarShow"
    />
    <i class="bx bx-menu" id="hamburgerIcon"></i>
    <div id="sideBar" class="sidebar">
      <span class="logo_name">TrendMine</span>
      <ul class="nav-links">
        <li>
          <a href="#">
            <i class="bx bx-grid-alt"></i>
            <span class="link_name">DashBoard</span>
          </a>
        </li>
        <li>
          <div class="iocn-link">
            <a href="#">
              <i class="bx bx-collection"></i>
              <span class="link_name">Products</span>
            </a>
            <i class="bx bxs-chevron-down arrow"></i>
          </div>
          <ul class="sub-menu">
            <!-- <li><a class="link_name" href="#">Category</a></li> -->
            <li><a href="#">Product Details</a></li>
            <li><a href="#">View Products</a></li>
            <li><a href="#">Add Products</a></li>
            <li><a href="#">Update Products</a></li>
            <li><a href="#">Delete Products</a></li>
            <li><a href="#">Product Category</a></li>
            <li><a href="#">View Products Category</a></li>
            <li><a href="#">Add Products Category</a></li>
            <li><a href="#">Update Products Category</a></li>
            <li><a href="#">Delete Products Category</a></li>
          
          </ul>
        </li>
        <li>
          <div class="iocn-link">
            <a href="#">
              <i class="bx bx-book-alt"></i>
              <span class="link_name">Users</span>
            </a>
            <i class="bx bxs-chevron-down arrow"></i>
          </div>
          <ul class="sub-menu">
            <!-- <li><a class="link_name" href="#">Posts</a></li> -->
            <li><a href="#">Add New User</a></li>
            <li><a href="#">Delete Users</a></li>
            <li><a href="#">View User list</a></li>
            <li><a href="#">Detail View User</a></li>
            <li><a href="#">Update User</a></li>
          </ul>
        </li>
        <li>
          <div class="iocn-link">
            <a href="#">
              <i class="bx bx-book-alt"></i>
              <span class="link_name">Users</span>
            </a>
            <i class="bx bxs-chevron-down arrow"></i>
          </div>
          <ul class="sub-menu">
            <!-- <li><a class="link_name" href="#">Posts</a></li> -->
            <li><a href="#">Add New Admin</a></li>
            <li><a href="#">Delete Admins</a></li>
            <li><a href="#">View Admin list</a></li>
            <li><a href="#">Detail View Admin</a></li>
            <li><a href="#">Update Admin</a></li>
          </ul>
        </li>

        <li>
          <div class="iocn-link">
            <a href="#">
              <i class="bx bx-book-alt"></i>
              <span class="link_name">Orders</span>
            </a>
            <i class="bx bxs-chevron-down arrow"></i>
          </div>
          <ul class="sub-menu">
            <!-- <li><a class="link_name" href="#">Posts</a></li> -->
            <li><a href="#">Order Details</a></li>
            <li><a href="#">View Orders</a></li>
            <li><a href="#">Add Orders</a></li>
            <li><a href="#">Update Orders</a></li>
            <li><a href="#">Delete Orders</a></li>
          </ul>
        </li>
        <li>
          <div class="iocn-link">
            <a href="#">
              <i class="bx bx-book-alt"></i>
              <span class="link_name">Offers</span>
            </a>
            <i class="bx bxs-chevron-down arrow"></i>
          </div>
          <ul class="sub-menu">
            <!-- <li><a class="link_name" href="#">Posts</a></li> -->
            <li><a href="#">Add New Offer</a></li>
            <li><a href="#">Add New Products in offers</a></li>
            <li><a href="#">Update Offer</a></li>
            <li><a href="#">Update Offer Products</a></li>
            <li><a href="#">View Products in Offers</a></li>
            <li><a href="#">View Offers</a></li>
            <li><a href="#">Delete Products in Offers</a></li>
            <li><a href="#">Delete Offers</a></li>
          </ul>
        </li>
        
        <li>
          <div class="iocn-link">
            <a href="#">
              <i class="bx bx-book-alt"></i>
              <span class="link_name">Tracking</span>
            </a>
            <i class="bx bxs-chevron-down arrow"></i>
          </div>
          <ul class="sub-menu">
            <!-- <li><a class="link_name" href="#">Posts</a></li> -->
            <li><a href="#">Warehouse Tracking</a></li>
            <li><a href="#">Collection Center Tracking</a></li>
            <li><a href="#">Delivery Tracking</a></li>
            </ul>
        </li>
        <li>
          <a href="#">
            <i class="bx bx-line-chart"></i>
            <span class="link_name">Settings</span>
          </a>
          <ul class="sub-menu">
            <li><a class="link_name" href="#">Chart</a></li>
          </ul>
        </li>
      </ul>
    </div>

    <script>
      let arrow = document.querySelectorAll(".arrow");
      for (var i = 0; i < arrow.length; i++) {
        arrow[i].addEventListener("click", (e) => {
          let arrowParent = e.target.parentElement.parentElement; //selecting main parent of arrow
          arrowParent.classList.toggle("showMenu");
        });
      }
    </script>
  </body>
</html>


