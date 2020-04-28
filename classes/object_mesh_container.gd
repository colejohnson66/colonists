extends Spatial
class_name ObjectMeshContainer


var Colors = load("res://classes/colors.gd")


func _ready():
	pass


func add_mesh(asset_path: String, color: int):
	var cached_materials = get_node("/root/CachedColorMaterials")
	if cached_materials == null:
		push_error("Can't find CachedColorMaterials singleton")
	
	var material
	if (color == Colors.COLOR_ORANGE):
		material = cached_materials.orange
	elif (color == Colors.COLOR_BEIGE):
		material = cached_materials.beige
	elif (color == Colors.COLOR_BROWN):
		material = cached_materials.brown
	elif (color == Colors.COLOR_RED):
		material = cached_materials.red
	elif (color == Colors.COLOR_GOLD):
		material = cached_materials.gold
	elif (color == Colors.COLOR_LIGHTGREEN):
		material = cached_materials.lightgreen
	elif (color == Colors.COLOR_WHITE):
		material = cached_materials.white
	elif (color == Colors.COLOR_GREEN):
		material = cached_materials.green
	elif (color == Colors.COLOR_GRAY):
		material = cached_materials.gray
	elif (color == Colors.COLOR_YELLOW):
		material = cached_materials.yellow
	elif (color == Colors.COLOR_BLUEGREEN):
		material = cached_materials.bluegreen
	elif (color == Colors.COLOR_TURQOISE):
		material = cached_materials.turqoise
	else:
		push_warning("Unknown color; Not in cache")
		material = cached_materials.black
	
	var mesh = load(asset_path)
	mesh.surface_set_material(0, material)
	var new_child = MeshInstance.new()
	new_child.mesh = mesh
	add_child(new_child)
