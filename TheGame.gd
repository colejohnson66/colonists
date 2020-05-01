extends Spatial


var Colors = load("res://classes/colors.gd")
var City = load("res://classes/pieces/city.gd")


func _ready():
	var city = City.new()
	add_child(city)
	city.set_color(Colors.COLOR_GREEN)
