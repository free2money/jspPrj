window.addEventListener("load", function() {
	var section = document.getElementById("change-pwd"); // div

	var hiddenTextBox = section.getElementsByClassName("now-pwd")[0]; // 현재비밀번호입력란
	var nowTextBox = section.getElementsByClassName("now-pwd2")[0]; // 현재비밀번호입력란
	var nowButton = section.getElementsByClassName("now-check-button")[0];
	var nowCheckText = section.getElementsByClassName("now-check-text")[0];

	//var newTextBox = section.getElementsByClassName("new-pwd")[0]; // 새비밀번호입력란
	//var newTextBox2 = section.getElementsByClassName("new-pwd2")[0]; // 새비밀번호확인입력란
	//var newButton = section.getElementsByClassName("new-check-button")[0];

	nowButton.onclick = function() {
		if (nowTextBox.value==hiddenTextBox.value)
			nowCheckText.value="비밀번호가 일치합니다.";
	     else
			nowCheckText.value="비밀번호가 틀렸습니다.";
	}

});