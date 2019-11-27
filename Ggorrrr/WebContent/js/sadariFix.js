/**
 * 
 */
window.addEventListener("load", function () {
	// var sadariPopup1 = document.querySelector("#sadari");
	// console.log(sadariPopup1.style.bottom);

});

window.addEventListener("scroll", function () {
	var sadariSection = document.querySelector("#sadari");
	var sadariPopup = sadariSection.querySelector("div");
	var footer = document.querySelector("#footer");

	var absoluteSadariTop = window.pageYOffset + sadariPopup.getBoundingClientRect().top;
	var absolutefooterTop = window.pageYOffset + footer.getBoundingClientRect().top;

	var scrollPosition = window.scrollY;
	console.log(scrollPosition);
	

	if (absoluteSadariTop + 99 >= absolutefooterTop) {
		sadariPopup.className = "sadari-over";
	}
	if(scrollPosition < 1309)
		sadariPopup.className = "sadari-fix";
});