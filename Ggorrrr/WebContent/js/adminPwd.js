/**
 * 
 */

window.addEventListener("load", function() {
	var section = document.querySelector("#change-pwd");
	var nowPwd = section.querySelector("dd input");
	var pwdInput = section.querySelector("dd input+input");
	var textLabel = document.querySelector(".now-check-text");

	console.log(section);
	console.log(nowPwd);
	console.log(pwdInput);
	console.log(textLabel);
	
	pwdInput.value.onchange = function(e) {
		console.log("바뀜");
		// if (nowPwd.value.equals(pwdInput.value))
		// textLabel.innerText = "비밀번호가 일치합니다.";
		// else
		// textLabel.innerText = "비밀번호가 다릅니다.";

	}
});
