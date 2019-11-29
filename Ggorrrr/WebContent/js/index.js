window.addEventListener("load", function() {
	// 슬라이드 쇼 객체 가져오기
	var offset = 10000;
	var section = document.querySelector("#main");
	var x = section.querySelectorAll(".food div");
	var b = section.querySelectorAll(".buttonDiv button");
	var slide;
	
	

	
	//==================슬라이드 쇼 동작=======================
	// 슬라이드쇼 동작 구현
	for (var i = 0; i < x.length; i++) {
		x[i].classList.add("a" + i);
	}

	slideShow();
	
	//슬라이드쇼 왼쪽버튼을 클릭시
	b[0].onclick = function() {
		//슬라이드 쇼 동작 멈춤
		clearTimeout(slide);

		
		//왼쪽으로 이미지 이동
		var i;
		offset--;
		for (i = 0; i < x.length; i++) {
			x[i].className = "";
			x[i].classList.add("a" + (i + offset) % x.length);

		}

		//2초뒤 슬라이드쇼 다시 실행
		slide = setTimeout(slideShow, 2000);
	};
	
	//슬라이드쇼 오른쪽버튼 클릭시
	b[1].onclick = function() {
		//슬라이드쇼 동작 멈춤
		clearTimeout(slide);

		
		//오른쪽으로 이미지 이동
		var i;
		offset++;
		for (i = 0; i < x.length; i++) {
			x[i].className = "";
			x[i].classList.add("a" + (i + offset) % x.length);
		}
		
		//슬라이드 2초뒤 다시 실행
		slide = setTimeout(slideShow, 2000);
	};
	
	//슬라이드 쇼 동작
	function slideShow() {

		var i;
		for (i = 0; i < x.length; i++) {
			x[i].className = "";
			x[i].classList.add("a" + (i + offset) % x.length);

		}
		offset++;
		
		//1.5초뒤 다시 동작
		slide = setTimeout(slideShow, 1500);
	}

	
	
});
