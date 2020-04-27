extends Spatial
class_name WheatHex


var ObjectMeshContainer = load("res://classes/object_mesh_container.gd")
var HexWithBaseMesh = load("res://classes/hex_with_base_mesh.gd")


func _ready():
	var container = ObjectMeshContainer.new()
	var base = MeshInstance.new()
	
	var hex = HexWithBaseMesh.new()
	hex.mesh_container = container
	hex.base_mesh = base
	add_child(hex)
	
	container.add_mesh("res://assets/hex/wheat-1.obj", ObjectMeshContainer.COLOR_GOLD)
	container.add_mesh("res://assets/hex/wheat-2.obj", ObjectMeshContainer.COLOR_YELLOW)
	container.add_mesh("res://assets/hex/wheat-3.obj", ObjectMeshContainer.COLOR_RED)
	container.add_mesh("res://assets/hex/wheat-4.obj", ObjectMeshContainer.COLOR_GREEN)
	
	base.mesh = load("res://assets/hex/base.obj")
	base.mesh.surface_set_material(0, get_node("/root/CachedColorMaterials").yellow)
