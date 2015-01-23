$(".spoiler span").hide();
$(".spoiler").append("<button>Reveal Spoiler!</button>");
$("button").click(function() {
	$(this).prev().show();
	$(this).remove();
});