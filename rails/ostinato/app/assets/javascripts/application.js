// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require turbolinks
//= require_tree .
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
