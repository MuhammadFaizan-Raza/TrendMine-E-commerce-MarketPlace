let tColorA = document.getElementById("tColorA"),
  tColorB = document.getElementById("tColorB"),
  tColorC = document.getElementById("tColorC"),
  tColorD = document.getElementById("tColorD"),
  iconA = document.querySelector(".fa-credit-card"),
  iconB = document.querySelector(".fa-paypal"),
  iconC = document.querySelector(".fa-money-bill-transfer"),
  iconD = document.querySelector(".fa-money-bill-wave"),
  cDetails = document.querySelector(".card-details"),
  cpaypal = document.querySelector(".paypal"),
  cbanktrasnfer = document.querySelector(".banktransfer"),
  ccod = document.querySelector(".COD");
function doFunA() {
  tColorA.style.color = " #088178";
  tColorB.style.color = "#444";
  tColorC.style.color = "#444";
  iconA.style.color = " #088178";
  iconB.style.color = "#aaa";
  iconC.style.color = "#aaa";
  cDetails.style.display = "block";
  cpaypal.style.display = "none";
  cbanktrasnfer.style.display = "none";
  ccod.style.display = "none";
}
function doFunB() {
  tColorA.style.color = "#444";
  tColorB.style.color = " #088178";
  tColorC.style.color = "#444";
  iconA.style.color = "#aaa";
  iconB.style.color = " #088178";
  iconC.style.color = "#aaa";
  cDetails.style.display = "none";
  cbanktrasnfer.style.display = "none";
  cpaypal.style.display = "block";
  ccod.style.display = "none";
}
function doFunC() {
  tColorA.style.color = "#444";
  tColorB.style.color = "#444";
  tColorC.style.color = " #088178";
  iconA.style.color = "#aaa";
  iconB.style.color = "#aaa";
  iconC.style.color = " #088178";
  cbanktrasnfer.style.display = "block";
  cDetails.style.display = "none";
  cpaypal.style.display = "none";
  ccod.style.display = "none";
}
function doFunD() {
  tColorA.style.color = "#444";
  tColorB.style.color = "#444";
  tColorC.style.color = "#444";
  tColorC.style.color = " #088178";
  iconA.style.color = "#aaa";
  iconB.style.color = "#aaa";
  iconC.style.color = "#aaa";
  iconD.style.color = " #088178";
  cDetails.style.display = "none";
  cpaypal.style.display = "none";
  cbanktrasnfer.style.display = "none";
  ccod.style.display = "Block";
}
let cnicnumber = document.getElementById("cn-number");
cnicnumber.addEventListener("keyup", function (e) {
  let num = cnicnumber.value;

  let newValue = "";
  num = num.replace(/\s/g, "");
  for (let i = 0; i < num.length; i++) {
    if (i === 5 || i === 12) newValue = newValue.concat(" ");
    newValue = newValue.concat(num[i]);
    cnicnumber.value = newValue;
  }
  let ccNum = document.getElementById("cnic");
  if (num.length < 13) {
    ccNum.style.border = "1px solid red";
  } else {
    ccNum.style.border = "1px solid  #088178";
  }
});
let cardholderName = document.getElementById("name");
cardholderName.addEventListener("input", function (e) {
  let input = e.target.value;

  // Remove special characters and digits
  let sanitizedInput = input.replace(/[^a-zA-Z\s]/g, "");

  // Limit the length of the name
  if (sanitizedInput.length > 50) {
    sanitizedInput = sanitizedInput.substring(0, 50);
  }
  cardholderName.value = newValue;
});

let cNumber = document.getElementById("number");
cNumber.addEventListener("keyup", function (e) {
  let num = cNumber.value;

  let newValue = "";
  num = num.replace(/\s/g, "");
  for (var i = 0; i < num.length; i++) {
    if (i % 4 == 0 && i > 0) newValue = newValue.concat(" ");
    newValue = newValue.concat(num[i]);
    cNumber.value = newValue;
  }

  let ccNum = document.getElementById("c-number");
  if (num.length < 16) {
    ccNum.style.border = "1px solid red";
  } else {
    ccNum.style.border = "1px solid  #088178";
  }
});

let eDate = document.getElementById("e-date");
eDate.addEventListener("keyup", function (e) {
  let newInput = eDate.value;

  if (e.which !== 8) {
    var numChars = e.target.value.length;
    if (numChars == 2) {
      var thisVal = e.target.value;
      thisVal += "/";
      e.target.value = thisVal;
      console.log(thisVal.length);
    }
  }

  if (newInput.length < 5) {
    eDate.style.border = "1px solid red";
  } else {
    eDate.style.border = "1px solid  #088178";
  }
});

let cvv = document.getElementById("cvv");
cvv.addEventListener("keyup", function (e) {
  let elen = cvv.value;
  let cvvBox = document.getElementById("cvv-box");
  if (elen.length < 3) {
    cvvBox.style.border = "1px solid red";
  } else {
    cvvBox.style.border = "1px solid  #088178";
  }
});
let ibanInput = document.getElementById("ac-num");
ibanInput.addEventListener("input", function (e) {
  let num = ibanInput.value;

  let newValue = "";
  num = num.replace(/\s/g, "");
  for (let i = 0; i < num.length; i++) {
    if (i > 0 && i % 4 === 0) {
      newValue += " ";
    }
    newValue += num[i];
  }
  ibanInput.value = newValue;

  let ibanContainer = document.getElementById("AC-num");
  if (num.length < 24) {
    ibanContainer.style.border = "1px solid red";
  } else {
    ibanContainer.style.border = "1px solid  #088178";
  }
});
let BankName = document.getElementById("ba-name");
cardholderName.addEventListener("input", function (e) {
  let input = e.target.value;

  // Remove special characters and digits
  let sanitizedInput = input.replace(/[^a-zA-Z\s]/g, "");

  // Limit the length of the name
  if (sanitizedInput.length > 50) {
    sanitizedInput = sanitizedInput.substring(0, 50);
  }
  cardholderName.value = newValue;
});
let accountholderName = document.getElementById("ap-name");
cardholderName.addEventListener("input", function (e) {
  let input = e.target.value;

  // Remove special characters and digits
  let sanitizedInput = input.replace(/[^a-zA-Z\s]/g, "");

  // Limit the length of the name
  if (sanitizedInput.length > 50) {
    sanitizedInput = sanitizedInput.substring(0, 50);
  }
  cardholderName.value = newValue;
});
