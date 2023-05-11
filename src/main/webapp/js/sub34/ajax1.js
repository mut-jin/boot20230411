$("#button1").click(function() {
	$.ajax("/sub34/link1");
});

$("#button2").click(function() {
	$.ajax("/sub34/link2");
});

$("#button3").click(function() {
	$.ajax("/sub34/link3?name=son");
});

$("#button4").click(function() {
	$.ajax("/sub34/link4?address=인천");
});

$("#button5").click(function() {
	$.ajax("/sub34/link5?name=손&age=22");
});

$("#button6").click(function() {
	$.ajax("/sub34/link6?food=돈까스&price=55.55");
});

$("#button7").click(function() {
	$.ajax("/sub34/link7?address=인천&name=park&age=33");
});

$("#button8").click(function() {
	$.ajax("/sub34/link8?price=2000&product=초콜릿&category=food");
});