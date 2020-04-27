extends Spatial


var OreHex = load("res://classes/hexes/ore_hex.gd")


func _ready():
	add_child(OreHex.new())
