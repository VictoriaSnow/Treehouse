var myDiv = document.getElementById(‘myDiv’);
myDiv.style.background = “black”;
myDiv.style.color = “#ffffff”;

Starts with A-Z a-z _ $
Continue with A-Z a-z 0-9 _ $
Valid variables:
var car = “Toyota”;
var Color = “blue”;
var _myVar = “something”;
var $specialName = 1;
var a123 = “What”;

// Invalid:
var 3Colors = “red green blue”;
var win% = 30;
var person-name = “Jim”;
var @you = “are awesome”;

// Reserved:
var continue = true;


var myVar;
undefined = true;
console.log(typeof myVar === “undefined”);
console.log(myVar === undefined);

var x = null;
if(myVar == null){
	console.log(“If”);
} else {
	console.log(“Else”);
}

var world = “World!”;
function sayHello () {
	var hello = “Hello ”;

	function inner() {
		var extra = “ There is more!”;
		console.log(hello + world +extra);
	}

	inner();
} 

sayHello();
console.log(“world outside sayHello(): “, world);
console.log(“hello outside sayHello() “, world);
console.log(“hello outside sayHello(): “, hello);

// Shadowing

var myColor = “blue”;
console.log(“myColor before myFunc()”, myColor);

function myFunc () {
	myColor = “yellow”;
	console.log(“myColor inside myFunc()”, myColor);
}

myFunc();
console.log(“myColor after myFunc()”, myColor);

// Hoisting

function doSomething (doit) {
	var color = “blue”, number, name = “Jim”;
	if(doit) {
		color = “red”;
		number = 10;
		console.log(“Color in if(){}”, color);
	}
	console.log(“Color after if(){}”, color);
}

doSomething(false);
doSomething(true);

// JavaScript Strings
var name = "Jim";
console.log(name);
var name2 = "Jim";
console.log(name2);
var statement = "This is Jim's string";
console.log(statement);
var statement2 = 'He said "This is good"';
console.log(statement2);
var statement3 = 'He said "This is Jim\'s string"';
console.log(statement3);

var path = "C:\\folder\\myfile.txt";

var multiline = "This is line 1\n" + 
	"This \tis line2\n" + 
	"This is line3";

var part1 = "Hello";
var part2 = "World";
var whole = part1 + part2;
console.log(whole + "!!!");

var length = whole.length;
var index = whole.indexOf("World");
var index2 = whole.indexOf("world");

if (whole.indexOf("W") !== -1) {
	console.log("W exists in string");
} else {
	console.log("W doesn't exist");
}

console.log(whole.charAt(2));

var world = whole.substr(6, 5);

console.log(whole.toLowerCase());
console.log(whole.toUpperCase());

var first = "Hello";
var second = "Hello";

if (first.toLowerCase() === second.toLowerCase()) {
	console.log("True");
} else {
	console.log("False");
}

function compare(a, b) {
	console.log(a + " <" + b, a < b);
}

compare('a', 'b');
compare('a', 'A');
compare('apple', 'orange');
compare('apple', 'application');
compare('app', 'apple');
compare('hello', 'hello');




// Numbers
var a = 11,
	b = -123;
var c = 1.5,
	d = 124.35;
var e = 0.1,
	f = 0.2;
var result = e * f;

var g = 1E6;
var g2 = 1.23E6;
var h = 012;
var i = 0xf;

var j = parseInt("019", 10);
var k = parseInt("010111", 2);
var l = parseInt("there are 23 people", 10);
console.log(isNaN(l));
var m = parseFloat("this is a strange number 123.456");

var o = 1 + 2.4;
var p = 10 - 7.3;
var q = 3 * 4.2;
var r = 15 / 10;
var s = 16 % 10;
var t = (1 + 2) * (3 / 4);

console.log(1 != 3);

if (1 < 2) {
	console.log("Yes");
} else {
	console.log("No");
}

var circumference = Math.PI * diameter;
var chance = Math.random() * 20;
var maxWidth = Math.max(a,b,c);
var age=Math.floor(ageIfILiveToYear2100);



// JavaScript Arrays

var x = ['some', 'extra', 'words', 'here'];
var y ['a str', 3, ['a sub array', 2, 3, 4], 'treehouse', function(a, b){return a + b}];
var z = [];
var a = new Array(50);

var my_array = ['hello', 42, true, function (a) {return a * 2}];
var word = my_array[0];
var answer = my_array[1];
var doubler = my_array[3];
console.log(doubler(10));
my_array[1] = 144;
var new_answer = my_array[1];
my_array[my_array.length] = "A new string";

var my_array = [2, 3, 4];
console.log(my_array.toString());
var value = my_array.pop();
my_array.push(5);
my_array.unshift(1);
value = my_array.shift();

var my_array = [10, 44, 32, 100, 0, 44, 3, 4];
console.log(my_array.toString());
my_array.sort(function (a, b) {
	return a - b;
});
my_array.sort(function (a, b) {
	return Math.random() - 0.5;
});
my_array.sort();
console.log(my_array.toString());

var my_array = [1, 2, 3, 4, 5];
my_array.reverse();

var x = [1, 2, 3];
var y = [4, 5, 6];
var z = x.concat(4, 5, 6, 7, 8, 9, [10, 11, 12]);
console.log(z);

var my_array = [0, 1, 2, 3, 4, 5];
var result = my_array.slice(2, 60);















