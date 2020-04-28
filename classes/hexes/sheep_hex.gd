extends Spatial
class_name SheepHex


var Colors = load("res://classes/colors.gd")
var ObjectMeshContainer = load("res://classes/object_mesh_container.gd")
var HexWithBaseMesh = load("res://classes/hex_with_base_mesh.gd")


func _ready():
	var container = ObjectMeshContainer.new()
	
	var hex = HexWithBaseMesh.new()
	hex.mesh_container = container
	add_child(hex)
	
	container.add_mesh("res://assets/hex/sheep-1.obj", Colors.COLOR_LIGHTGREEN)
	container.add_mesh("res://assets/hex/sheep-2.obj", Colors.COLOR_BROWN)
	container.add_mesh("res://assets/hex/sheep-3.obj", Colors.COLOR_GREEN)
	container.add_mesh("res://assets/hex/sheep-4.obj", Colors.COLOR_WHITE)
	
	hex.set_base_color(Colors.COLOR_WHITE)
