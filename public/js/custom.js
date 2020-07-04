let button = document.getElementById("more-info-btn");

button.addEventListener("click", function() {
    let homeText = document.getElementById("home-text");
    homeText.style.display = "block";
    button.style.display = "none";
});