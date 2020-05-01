extends Spatial
class_name HarborPiece


var HarborBase = load("res://classes/harbor/harbor_base.gd")
var HarborTop = load("res://classes/harbor/harbor_top.gd")
var ObjectMeshContainer = load("res://classes/object_mesh_container.gd")


var unique_piece_mesh setget set_unique_piece_mesh, get_unique_piece_mesh
var top_mesh_container setget ,get_top_mesh_container
var base_mesh_container setget ,get_base_mesh_container


func _ready():
	base_mesh_container = HarborBase.new()
	add_child(base_mesh_container)
	
	top_mesh_container = HarborTop.new()
	top_mesh_container.translate(Vector3(5.75, 2.4, 0))
	top_mesh_container.rotation_degrees = Vector3(0, 90, 0)
	add_child(top_mesh_container)
	
	translate(Vector3(21.25, 5.8, -12))
	rotation_degrees = Vector3(0, -150, 0)


func set_unique_piece_mesh(asset_path: String):
	if unique_piece_mesh != null:
		remove_child(unique_piece_mesh)
	
	unique_piece_mesh = MeshInstance.new()
	unique_piece_mesh.mesh =  load(asset_path)
	unique_piece_mesh.translate(Vector3(11.3, 4.3, 0))
	unique_piece_mesh.rotation_degrees = Vector3(0, 90, 0)
	add_child(unique_piece_mesh)

func get_unique_piece_mesh() -> MeshInstance:
	return unique_piece_mesh


func get_top_mesh_container() -> ObjectMeshContainer:
	return top_mesh_container


func get_base_mesh_container() -> ObjectMeshContainer:
	return base_mesh_container


func set_unique_piece_color(color: int):
	var cached_materials = get_node("/root/CachedColorMaterials")
	if cached_materials == null:
		push_error("Can't find CachedColorMaterials singleton")
	
	unique_piece_mesh.mesh.surface_set_material(0, cached_materials.get_material_from_color(color))
