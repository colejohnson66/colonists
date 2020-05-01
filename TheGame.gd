extends Spatial


var Colors = load("res://classes/colors.gd")
var Settlement = load("res://classes/pieces/settlement.gd")


func _ready():
	var settlement = Settlement.new()
	add_child(settlement)
	settlement.set_color(Colors.COLOR_GREEN)
