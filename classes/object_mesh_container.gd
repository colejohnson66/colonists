extends Spatial
class_name ObjectMeshContainer


var Colors = load("res://classes/colors.gd")


var meshes = []


func _ready():
	pass


func add_mesh(asset_path: String, color: int):
	var cached_materials = get_node("/root/CachedColorMaterials")
	if cached_materials == null:
		push_error("Can't find CachedColorMaterials singleton")
	
	var mesh = load(asset_path)
	mesh.surface_set_material(0, cached_materials.get_material_from_color(color))
	var new_child = MeshInstance.new()
	new_child.mesh = mesh
	add_child(new_child)
