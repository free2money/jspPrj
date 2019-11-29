window.addEventListener("load", function () {
    var searchSection = document.querySelector('input[name="q"]');
    var search = searchSection.value;
    var section = document.querySelector("#ppp");
    var moreBtn = section.querySelector("#more-more");
    window.count = section.querySelector('input[name="c"]').value;
    window.prevNum = section.querySelector('input[name="pN"]').value;
    console.log(window.prevNum);
    console.log(window.count);

    var load = function (p, c) {
        var request = new XMLHttpRequest();
        request.open("GET", "list-json?q=" + search + "&prevNum=" + p + "&count=" + c, true);

        request.onload = function () {
            console.log(request.responseText);

            var list = JSON.parse(request.responseText);

            var content = section.querySelector("#middlebox");
            var cloneBox = content.firstElementChild;
            var cloneTitle = cloneBox.firstElementChild.cloneNode(true);
            var cloneList = cloneBox.lastElementChild.cloneNode(true);

            var titleDiv = cloneTitle.children;
            var listDiv = cloneList.children;

            for (var i = 0; i < list.length; i++) {
                titleDiv.innerText = "ㆍ " + list[i].adress;
                listDiv[0] = list[i].content;
                listDiv[2] = list[i].content;
                listDiv[6] = list[i].photo + "\u00a0";
            }

        };

        request.send();
    };

    //load(prevNum, count);

    moreBtn.onclick = function (e) {
        if (e.target.nodeName != "A")
            return;
        e.preventDefault();

        prevNum = count;
        count += count;
        var data = "prevNum=" + prevNum + "&count=" + count;
        var request = new XMLHttpRequest();
        request.open("POST", "list-json", true);

        request.setRequestHeader('Content-Type',
            'application/x-www-form-urlencoded');
        request.onload = function () {
            load(prevNum, count);
        };
        request.send(data);
    };
});