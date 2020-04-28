extends Spatial
class_name HexWithBaseMesh


var Colors = load("res://classes/colors.gd")
var ObjectMeshContainer = load("res://classes/object_mesh_container.gd")


var mesh_container setget set_mesh_container, get_mesh_container
var base_mesh setget ,get_base_mesh


func _init():
	# Duplication of the mesh is required; otherwise all bases will be the most
	#   recently set color
	base_mesh = MeshInstance.new()
	base_mesh.mesh = load("res://assets/hex/base.obj").duplicate()
	base_mesh.rotation_degrees = Vector3(0, 30, 0)


func _ready():
	add_child(base_mesh)


func set_mesh_container(value: ObjectMeshContainer):
	if mesh_container != null:
		remove_child(mesh_container)
	
	mesh_container = value
	mesh_container.translation = Vector3(0, 3.8, 0)
	add_child(mesh_container)

func get_mesh_container() -> ObjectMeshContainer:
	return mesh_container


func get_base_mesh() -> Spatial:
	return base_mesh


func set_base_color(color: int):
	var cached_materials = get_node("/root/CachedColorMaterials")
	if cached_materials == null:
		push_error("Can't find CachedColorMaterials singleton")
	
	base_mesh.mesh.surface_set_material(0, cached_materials.get_material_from_color(color))
