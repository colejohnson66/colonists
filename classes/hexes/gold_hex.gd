extends Spatial
class_name GoldHex


var ObjectMeshContainer = load("res://classes/object_mesh_container.gd")
var HexWithBaseMesh = load("res://classes/hex_with_base_mesh.gd")


func _ready():
	var container = ObjectMeshContainer.new()
	var base = MeshInstance.new()
	
	var hex = HexWithBaseMesh.new()
	hex.mesh_container = container
	hex.base_mesh = base
	add_child(hex)
	
	print("TODO: Colors for GOLD hex")
	
	container.add_mesh("res://assets/hex/gold-1.obj", ObjectMeshContainer.COLOR_BLUEGREEN)
	container.add_mesh("res://assets/hex/gold-2.obj", ObjectMeshContainer.COLOR_WHITE)
	container.add_mesh("res://assets/hex/gold-3.obj", ObjectMeshContainer.COLOR_RED)
	container.add_mesh("res://assets/hex/gold-4.obj", ObjectMeshContainer.COLOR_TURQOISE)
	
	base.mesh = load("res://assets/hex/base.obj")
	base.mesh.surface_set_material(0, get_node("/root/CachedColorMaterials").black)
