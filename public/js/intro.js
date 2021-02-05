let introButton = document.getElementById("intro-btn");

introButton.addEventListener("click", function() {
    let introText = document.getElementById("intro-text");
    introText.style.visibility = "visible";
    introButton.style.display = "none";
});