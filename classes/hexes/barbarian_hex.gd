extends Spatial
class_name BarbarianHex


var ObjectMeshContainer = load("res://classes/object_mesh_container.gd")
var HexWithBaseMesh = load("res://classes/hex_with_base_mesh.gd")


func _ready():
	var container = ObjectMeshContainer.new()
	var base = MeshInstance.new()
	
	var hex = HexWithBaseMesh.new()
	hex.mesh_container = container
	hex.base_mesh = base
	add_child(hex)
	
	container.add_mesh("res://assets/hex/barbarian-1.obj", ObjectMeshContainer.COLOR_BLUEGREEN)
	container.add_mesh("res://assets/hex/barbarian-2.obj", ObjectMeshContainer.COLOR_WHITE)
	container.add_mesh("res://assets/hex/barbarian-3.obj", ObjectMeshContainer.COLOR_RED)
	container.add_mesh("res://assets/hex/barbarian-4.obj", ObjectMeshContainer.COLOR_TURQOISE)
	
	base.mesh = load("res://assets/hex/base.obj")
	# TODO: Set base color
