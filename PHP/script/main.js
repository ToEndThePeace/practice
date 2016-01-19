//Create the board
for (var r = 0; r < 10; r++) {
	$('#board').append("<div data-row='" + r + "' class='grid'></div>");
	for (var c = 0; c < 10; c++) {
		$('[data-row=' + r + ']').append("<div data-coord='" + r + c + "' class='col-1-10'>__</div>");
		$('[data-coord=' + r + c + ']').bind('click', function() {
			var cc = $(this).attr("data-coord");
			checkHit(cc);
		});
	}
}

//Create the ships
var ships = [['01', '11', '21', '31'], ['23', '24', '25'], ['37', '47', '57', '67', '77']];
var hits  = [[0, 0, 0, 0], [0, 0, 0], [0, 0, 0, 0, 0]];

//Function to check if you hit
function checkHit(coord) {
	var hit = false;
	for (var count = 0; count < ships.length; count++) {
		if ($.inArray(coord, ships[count]) >= 0) {
			hit = true;
			var thing = [count, $.inArray(coord, ships[count])];
		}
	}
	if (hit) {
		if (hits[thing[0]][thing[1]] === 0) {
			$('[data-coord=' + coord + ']').text("HIT");
			hits[thing[0]][thing[1]] = 1;
		} else {
			alert("You've already hit that spot.");
		}
	} else {
		$('[data-coord=' + coord + ']').text("MISS");
	}
}