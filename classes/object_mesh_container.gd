extends Spatial
class_name ObjectMeshContainer


# TODO: Cache mesh colors


func _ready():
	pass


func add_mesh(asset_path: String, color: Color):
	# Is a limit of 4 necessary?
	assert(get_child_count() < 4)
	
	var material = SpatialMaterial.new()
	material.albedo_color = color
	var mesh = load(asset_path)
	mesh.surface_set_material(0, material)
	var new_child = MeshInstance.new()
	new_child.mesh = mesh
	add_child(new_child)
