extends Spatial
class_name WaterHarborHex


var ObjectMeshContainer = load("res://classes/object_mesh_container.gd")
var HexWithBaseMesh = load("res://classes/hex_with_base_mesh.gd")


func _ready():
	var container = ObjectMeshContainer.new()
	var base = MeshInstance.new()
	
	var hex = HexWithBaseMesh.new()
	hex.mesh_container = container
	hex.base_mesh = base
	add_child(hex)
	
	# TODO: fix meshes to be centered
	container.add_mesh("res://assets/hex/water-harbor-1.obj", ObjectMeshContainer.COLOR_BLUEGREEN)
	container.add_mesh("res://assets/hex/water-harbor-2.obj", ObjectMeshContainer.COLOR_TURQOISE)
	container.add_mesh("res://assets/hex/water-harbor-3.obj", ObjectMeshContainer.COLOR_WHITE)
	container.rotation_degrees = Vector3(0, -90, 0)
	
	base.mesh = load("res://assets/hex/base.obj")
	base.mesh.surface_set_material(0, get_node("/root/CachedColorMaterials").bluegreen)
