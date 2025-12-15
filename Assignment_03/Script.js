function validatePassword(){
    let passwordInput = document.getElementById("pass")
    let password = passwordInput.value;
    let errorMSG = document.getElementById("passError");

    if(password.length < 6){
        errorMSG.innerText ="Password must be At least 6 character long";
        passwordInput.classList.add("Error");
        passwordInput.remove("success")
        return false
    }
    else{
        errorMSG.innerText ="";
        passwordInput.classList.remove("error")
        passwordInput.classList.add("success")
        alert("Login Successful");
        emailInput.value=""
        passwordInput.value=""
        return false
    }
}