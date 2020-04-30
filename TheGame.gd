extends Spatial


var TestHex = load("res://classes/hexes/water_harbor_hex.gd")
var TestHex2 = load("res://classes/hexes/wood_hex.gd")
var TestHex3 = load("res://classes/hexes/brick_hex.gd")
var HarborBase = load("res://classes/harbor/harbor_base.gd")
var HarborTop = load("res://classes/harbor/harbor_top.gd")


func _ready():
	add_child(HarborBase.new())
	add_child(HarborTop.new())
#	add_child(TestHex.new())
#	var wood = TestHex2.new()
#	wood.translate(Vector3(0, 0, 80))
#	add_child(wood)
#	var brick = TestHex3.new()
#	brick.translate(Vector3(0, 0, -80))
#	add_child(brick)
