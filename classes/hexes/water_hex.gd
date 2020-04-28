extends Spatial
class_name WaterHex


var Colors = load("res://classes/colors.gd")
var ObjectMeshContainer = load("res://classes/object_mesh_container.gd")
var HexWithBaseMesh = load("res://classes/hex_with_base_mesh.gd")


func _ready():
	var container = ObjectMeshContainer.new()
	
	var hex = HexWithBaseMesh.new()
	hex.mesh_container = container
	add_child(hex)
	
	container.add_mesh("res://assets/hex/water-1.obj", Colors.COLOR_BLUEGREEN)
	container.add_mesh("res://assets/hex/water-2.obj", Colors.COLOR_TURQOISE)
	container.add_mesh("res://assets/hex/water-3.obj", Colors.COLOR_WHITE)
	
	hex.set_base_color(Colors.COLOR_BLUEGREEN)
