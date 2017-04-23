var toLogin = document.querySelector(".toLogin");
var toRegister = document.querySelector(".toRegister");
var loginForm = document.querySelector(".loginWrapper");
var registerForm = document.querySelector(".registerWrapper");



var toggleView = function() {
    if (sessionStorage.isSignIn=='true') {
        registerForm.style.display = "none";
        loginForm.style.display = "block";
    }else{
        loginForm.style.display = "none";
        registerForm.style.display = "block";
    }
};

toRegister.addEventListener("click", function() {
    loginForm.style.display = "none";
    registerForm.style.display = "block";
});
toLogin.addEventListener("click", function() {
    registerForm.style.display = "none";
    loginForm.style.display = "block";
});


toggleView();
