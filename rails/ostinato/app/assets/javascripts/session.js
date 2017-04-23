var loginLink = document.querySelector("span.login");
var registerLink = document.querySelector("span.register");

loginLink.addEventListener("click", function() {
    sessionStorage.isSignIn = true;
    window.location.href = "login.html";
});

registerLink.addEventListener("click", function() {
    sessionStorage.isSignIn = false;
    window.location.href = "login.html";
});
