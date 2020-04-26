extends Spatial
class_name ObjectMeshContainer


var _children = []

# TODO: Cache mesh colors


func _init(asset_paths = [], colors = []):
	# Is a limit of 4 necessary?
	assert(asset_paths.size() <= 4)
	assert(asset_paths.size() == colors.size())
	
	for i in range(0, asset_paths.size()):
		var new_child = MeshInstance.new()
		var mesh = load(asset_paths[i])
		var material = SpatialMaterial.new()
		material.albedo_color = colors[i]
		mesh.surface_set_material(0, material)
		new_child.mesh = mesh
		_children.append(new_child)


func _ready():
	for child in _children:
		add_child(child)


#func _process(delta):
#	pass
