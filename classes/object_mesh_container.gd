extends Spatial
class_name ObjectMeshContainer


enum {
	COLOR_ORANGE, # 1
	COLOR_BEIGE, # 2
	COLOR_BROWN, # 3
	COLOR_RED, # 4
	COLOR_GOLD, # 5
	COLOR_LIGHTGREEN, # 6
	COLOR_WHITE, # 7
	COLOR_GREEN, # 8
	COLOR_GRAY, # 9
	COLOR_YELLOW, # 10
	COLOR_BLUEGREEN, # 11
	COLOR_TURQOISE, # 12
}


func _ready():
	pass


func add_mesh(asset_path: String, color: int):
	var cached_materials = get_node("/root/CachedColorMaterials")
	if cached_materials == null:
		push_error("Can't find CachedColorMaterials singleton")
	
	var material
	if (color == COLOR_ORANGE):
		material = cached_materials.orange
	elif (color == COLOR_BEIGE):
		material = cached_materials.beige
	elif (color == COLOR_BROWN):
		material = cached_materials.brown
	elif (color == COLOR_RED):
		material = cached_materials.red
	elif (color == COLOR_GOLD):
		material = cached_materials.gold
	elif (color == COLOR_LIGHTGREEN):
		material = cached_materials.lightgreen
	elif (color == COLOR_WHITE):
		material = cached_materials.white
	elif (color == COLOR_GREEN):
		material = cached_materials.green
	elif (color == COLOR_GRAY):
		material = cached_materials.gray
	elif (color == COLOR_YELLOW):
		material = cached_materials.yellow
	elif (color == COLOR_BLUEGREEN):
		material = cached_materials.bluegreen
	elif (color == COLOR_TURQOISE):
		material = cached_materials.turqoise
	else:
		push_warning("Unknown color; Not in cache")
		material = cached_materials.black
	
	var mesh = load(asset_path)
	mesh.surface_set_material(0, material)
	var new_child = MeshInstance.new()
	new_child.mesh = mesh
	add_child(new_child)
