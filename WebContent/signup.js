console.log("js started");

function ValidateEmail() {
  console.log("in validate");
  var email = document.getElementById("1").value;
  var atposition=email.indexOf("@");  
  var dotposition=email.lastIndexOf(".")

  if ((/^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/.test(email)) && !(atposition<1 || dotposition<atposition+2 || dotposition+2>=x.length)) {
    return true;
  }
  document.getElementById("span1").innerHTML = "invalid email address";
  return false;
}

function veripass1() {
  var p = document.getElementById("2").value;
  if (p.length < 6) {
    document.getElementById("span2").innerHTML =
      "password must contain atleast 6 charcters";
  }
}
function VerifyPass() {
  var pass = document.getElementById("2").value;
  var verpass = document.getElementById("3").value;

  if (pass == verpass) {
  } else {
    document.getElementById("span3").innerHTML = "Password Mismatch";
  }
}
