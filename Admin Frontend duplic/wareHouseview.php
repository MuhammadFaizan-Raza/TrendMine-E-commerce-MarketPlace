<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="Style.css" />
    <title>Warehouse Management</title>
  </head>
  <body>
    <?php 
    <div class="container">
      <header class="page-header">
        <h1>Warehouse Order View</h1>
      </header>
      <main>
        <div class="row-container">
          <div class="column">
            $sql="Select OrderId from Order";
            <label class="order_id" for="orderId">Order ID:</label>
            <select id="orderId" class="input-field">
              <option value="Order001">Order001</option>
              <option value="Order002">Order002</option>
              <option value="Order003">Order003</option>
            </select>
          </div>
          <div class="column">
            <label class="user_id" for="userId">User ID:</label>
            <label id="userId" class="input-field" readonly>UserID123</label>
          </div>
        </div>
        <div class="dual-container">
          <div class="Order-summary">
            <div class="column">
              <h6>Order Summary</h6>
            </div>
            <div class="column">
              <label for="orderDate">Order Date:</label>
              <label id="orderDate" class="input-field" readonly
                >2024-01-12</label
              >
            </div>
            <div class="column">
              <label for="deliveryFee">Delivery Fee:</label>
              <label id="deliveryFee" class="input-field" readonly>$5.00</label>
            </div>
            <div class="column">
              <label for="totalAmount">Total Amount:</label>
              <label id="totalAmount" class="input-field" readonly
                >$95.00</label
              >
            </div>
            <div class="column">
              <label for="orderStatus">Order Status:</label>
              <label id="orderStatus" class="input-field" readonly
                >Shipped</label
              >
            </div>
          </div>
          <div class="Customer-details">
            <div class="customer-column">
              <h6>Customer Details</h6>
            </div>
            <div class="customer-column">
              <label for="customerName">Customer Name:</label>
              <label id="customerName" class="input-field" readonly></label>
            </div>
            <div class="customer-column">
              <label for="shippingAddress">Shipping Address:</label>
              <label id="shippingAddress" class="input-field" readonly></label>
            </div>
            <div class="customer-column">
              <label for="contactInfo">Contact Info:</label>
              <label id="contactInfo" class="input-field" readonly></label>
            </div>
          </div>
        </div>
        <section id="cart" class="section-p1">
          <table width="100%">
            <thead>
              <tr>
                <td>Product Id</td>
                <td>Image</td>
                <td>Product Name</td>
                <td>Price</td>
                <td>Quantity</td>
                <td>Subtotal</td>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>1</td>
                <td><img src="img/products/f1.jpg" alt="" /></td>
                <td>Cartoon Astronaut T-Shirt</td>
                <td>$118.19</td>
                <td><label type="number" value="1">1</label></td>
                <td>$118.19</td>
              </tr>
              <tr>
                <td>2</td>
                <td><img src="img/products/f2.jpg" alt="" /></td>
                <td>Cartoon Astronaut T-Shirt</td>
                <td>$118.19</td>
                <td><label type="number" value="1">1</label></td>
                <td>$118.19</td>
              </tr>
              <tr>
                <td>3</td>
                <td><img src="img/products/f3.jpg" alt="" /></td>
                <td>Cartoon Astronaut T-Shirt</td>
                <td>$118.19</td>
                <td><label type="number" value="1">1</label></td>
                <td>$118.19</td>
              </tr>
            </tbody>
          </table>
        </section>
      </main>
    </div>
    ?>
  </body>
</html>
