extends Spatial
class_name WoodHex


var Colors = load("res://classes/colors.gd")
var ObjectMeshContainer = load("res://classes/object_mesh_container.gd")
var HexWithBaseMesh = load("res://classes/hex_with_base_mesh.gd")


func _ready():
	var container = ObjectMeshContainer.new()
	
	var hex = HexWithBaseMesh.new()
	hex.mesh_container = container
	add_child(hex)
	
	container.add_mesh("res://assets/hex/wood-1.obj", Colors.COLOR_LIGHTGREEN)
	container.add_mesh("res://assets/hex/wood-2.obj", Colors.COLOR_GREEN)
	container.add_mesh("res://assets/hex/wood-3.obj", Colors.COLOR_BEIGE)
	container.add_mesh("res://assets/hex/wood-4.obj", Colors.COLOR_BROWN)
	
	hex.set_base_color(Colors.COLOR_BROWN)
