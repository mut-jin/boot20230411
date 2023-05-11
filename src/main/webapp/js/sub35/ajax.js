$("#button1").click(function() {
	$.ajax("/sub35/link1", { method: "post" });
});

$("#button2").click(function() {
	$.ajax("/sub35/link2", { method: "post" });
});

$("#button3").click(function() {
	$.ajax("/sub35/link3", {
		method: "post",
		data: "name=손"
	});
});

$("#button4").click(function() {
	$.ajax("/sub35/link4", {
		type: "post",
		data: "address=인천&price=99.77"
	});
});

$("#button5").click(function() {
	$.ajax("/sub35/link5",
		{
			method: "post",
			data: "name=발&score=7.5&email=val@google.com"
		});
});

$("#button6").click(function() {
	$.ajax("/sub35/link6",
		{
			type: "post",
			data: "address=인천&product=국&price=200.2"
		});
});

$("#button7").click(function() {
	const obj = { name: "son" };

	$.ajax("/sub35/link7", {
		method: "post",
		//	data: '{"name": "son", "age": 33}',
		data: JSON.stringify(obj),
		contentType: "application/json"
	});
});

$("#button8").click(function() {
	const data = {
		address: "인천",
		name: "박지성"
	}
	$.ajax("/sub35/link8", {
		method: "post",
		//data: '{"address": "인천", "name": "박지성"}',
		data: JSON.stringify(data),
		contentType: "application/json"
	});
});

$("#button9").click(function() {
	const obj = {
		age: 33,
		name: "son",
		married: false
	}
	$.ajax("/sub35/link9", {
		type: "post",
		//data: `{"age": 33, "name": "son", "married": false}`,
		data: JSON.stringify(obj),
		contentType: "application/json"
	});
});

$("#button10").click(function() {
	const obj = {
		address: null,
		age: 30,
		name: "손흥민"
	}
	$.ajax("/sub35/link10", {

		method: "post",
		contentType: "application/json",
		data: JSON.stringify(obj)
	});
});

$("#button11").click(function() {
	const data = {
		book: {
			title: "java",
			price: 300
		},
		address: "인천"
	}
	$.ajax("/sub35/link11", {
		method: "post",
		contentType: "application/json",
		data: JSON.stringify(data)
		//data: '{"book":{"title": "java", "price": 300}, "address": "인천"}'
	});
});

$("#button12").click(function() {
	const data = {
		food: [
			"pizza", 
			"coke", 
			"coffee"
		],
		store: "피자스쿨"
	}
	$.ajax("/sub35/link12", {
		method: "post",
		contentType: "application/json",
		data: JSON.stringify(data)
		//data: '{"food": ["pizza", "coke", "coffee"], "store": "피자스쿨"}'
	});
});

$("#button13").click(function() {
	const obj = ["pizza", "coke", "coffe"]
	$.ajax("/sub35/link13", {
		method: "post",
		contentType: "application/json",
		data: JSON.stringify(obj)
		//data: '["pizza", "coke", "coffee"]'
	});
});

$("#button14").click(function() {
	const data = [
		{
			name: "강백호",
			position: "파워포워드"
		},
		{
			name: "서태웅",
			position: "스몰포워드"
		},
		{
			name: "송태섭",
			position: "포인트가드"
		}
	]
	$.ajax("/sub35/link14", {
		method: "post",
		contentType: "application/json",
		data: JSON.stringify(data)
		//data: '[{"name": "강백호", "pos":"파포"}, {"name":"서태웅", "pos":"스포"}]'
	});
});













