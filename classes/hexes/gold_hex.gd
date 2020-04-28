extends Spatial
class_name GoldHex


var Colors = load("res://classes/colors.gd")
var ObjectMeshContainer = load("res://classes/object_mesh_container.gd")
var HexWithBaseMesh = load("res://classes/hex_with_base_mesh.gd")


func _ready():
	var container = ObjectMeshContainer.new()
	
	var hex = HexWithBaseMesh.new()
	hex.mesh_container = container
	add_child(hex)
	
	print("TODO: Colors for GOLD hex")
	
	container.add_mesh("res://assets/hex/gold-1.obj", Colors.COLOR_BLUEGREEN)
	container.add_mesh("res://assets/hex/gold-2.obj", Colors.COLOR_WHITE)
	container.add_mesh("res://assets/hex/gold-3.obj", Colors.COLOR_RED)
	container.add_mesh("res://assets/hex/gold-4.obj", Colors.COLOR_TURQOISE)
	
	hex.set_base_color(Colors.COLOR_BLACK)
