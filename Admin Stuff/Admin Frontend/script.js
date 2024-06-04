document.getElementById("updateButton").addEventListener("click", function () {
  // Simulate fetching data based on the selected warehouse ID
  // Replace this with your actual data retrieval logic
  const selectedWarehouse = document.getElementById("warehouse").value;

  // Simulate fetching location based on the warehouse ID
  // Replace this with your actual data retrieval logic
  const location = getLocation(selectedWarehouse);

  // Update location field with corresponding data
  document.getElementById("location").value = location;
});

// Function to simulate fetching location based on the warehouse ID
function getLocation(warehouseId) {
  // Replace this with your actual data retrieval logic
  // For demonstration purposes, using a simple mapping
  const warehouseLocationMap = {
    warehouse1: "Location A",
    warehouse2: "Location B",
    warehouse3: "Location C",
  };

  return warehouseLocationMap[warehouseId] || "Unknown Location";
}
/*Warehouse return update code*/
// Sample data for dropdown options
const warehouseIds = ["Warehouse001", "Warehouse002", "Warehouse003"];
const returnIds = ["Return001", "Return002", "Return003"];

// Populate dropdowns with options
const warehouseIdSelect = document.getElementById("warehouseId");
warehouseIds.forEach((id) => addOption(warehouseIdSelect, id));

const returnIdSelect = document.getElementById("returnId");
returnIds.forEach((id) => addOption(returnIdSelect, id));

// Event listener for update button
document
  .getElementById("updateButton")
  .addEventListener("click", updateLocation);

// Function to add options to a dropdown
function addOption(select, value) {
  const option = document.createElement("option");
  option.value = value;
  option.text = value;
  select.add(option);
}

// Function to update location based on warehouse ID
function updateLocation() {
  const selectedWarehouseId = warehouseIdSelect.value;

  // Simulate fetching data based on the selected warehouse ID
  // Replace this with your actual data retrieval logic
  const location = fetchLocation(selectedWarehouseId);

  // Update location field
  document.getElementById("location").value = location;
}

// Function to fetch location based on warehouse ID (Replace with actual logic)
function fetchLocation(warehouseId) {
  // Simulate fetching location data based on the warehouse ID
  // Replace this with your actual data retrieval logic
  return "Location for " + warehouseId;
}
/*WareHouse View Button Actions */
function redirectToWarehouseView() {
  window.location.href = "WareHouseview.html";
}

function redirectToUpdateOrderStatus() {
  window.location.href = "WarehouseUpdate.html";
}

function redirectToUpdateReturnOrderStatus() {
  window.location.href = "WarehouseReturnupdate.html";
}
/*Collection Centre Button Actions */
function redirectToCollectionView() {
  window.location.href = "CollectionView.html";
}
function redirectColToUpdateOrderStatus() {
  window.location.href = "CollectionUpdate.html";
}
function redirectColToUpdateReturnOrderStatus() {
  window.location.href = "CollectionReturnUpdate.html";
}
/*Delivery Button Actions */
function redirectToDelView() {
  window.location.href = "DeliveryView.html";
}
function redirectdelToUpdateOrderStatus() {
  window.location.href = "DeliveryUpdate.html";
}
function redirectdelToUpdateReturnOrderStatus() {
  window.location.href = "DeliveryReturnUpdate.html";
}
/*Order Tracking Button Actions */
function redirectTowarehouse() {
  window.location.href = "WarehouseMain.html";
}
function redirectToCollection() {
  window.location.href = "Collectionmain.html";
}
function redirectToDelivery() {
  window.location.href = "Deliverymain.html";
}
function validateForm() {
  // Validate Customer Details
  const customerName = document.getElementById("customerName").value;
  const shippingAddress = document.getElementById("shippingAddress").value;
  const contactInfo = document.getElementById("contactInfo").value;

  if (!customerName || !shippingAddress || !contactInfo) {
    alert("Please fill in all Customer Details fields.");
    return false;
  }

  // Validate Cart
  const quantityInputs = document.querySelectorAll(
    "#cart input[type='number']"
  );
  for (const input of quantityInputs) {
    if (input.value <= 0) {
      alert("Quantity must be greater than 0.");
      return false;
    }
  }

  return true;
}
function submitForm() {
  alert("Your purchase was successful!");
}
