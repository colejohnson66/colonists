extends Spatial
class_name BrickHex


var Colors = load("res://classes/colors.gd")
var ObjectMeshContainer = load("res://classes/object_mesh_container.gd")
var HexWithBaseMesh = load("res://classes/hex_with_base_mesh.gd")


func _ready():
	var container = ObjectMeshContainer.new()
	var base = MeshInstance.new()
	
	var hex = HexWithBaseMesh.new()
	hex.mesh_container = container
	hex.base_mesh = base
	add_child(hex)
	
	container.add_mesh("res://assets/hex/brick-1.obj", Colors.COLOR_BEIGE)
	container.add_mesh("res://assets/hex/brick-2.obj", Colors.COLOR_BROWN)
	container.add_mesh("res://assets/hex/brick-3.obj", Colors.COLOR_GREEN)
	container.add_mesh("res://assets/hex/brick-4.obj", Colors.COLOR_RED)
	
	base.mesh = load("res://assets/hex/base.obj")
	hex.set_base_color(Colors.COLOR_ORANGE)
