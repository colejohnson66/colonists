extends Spatial


var TestHex = load("res://classes/hexes/water_harbor_hex.gd")


func _ready():
	add_child(TestHex.new())
