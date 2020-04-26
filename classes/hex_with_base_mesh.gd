extends Spatial
class_name HexWithBaseMesh


var ObjectMeshContainer = preload("res://classes/object_mesh_container.gd")


var mesh_container = null setget set_mesh_container, get_mesh_container
var base_mesh = null setget set_base_mesh, get_base_mesh


func _init():
	pass


func _ready():
	pass


func set_mesh_container(value: ObjectMeshContainer):
	if mesh_container != null:
		remove_child(mesh_container)
	
	mesh_container = value
	mesh_container.translation = Vector3(0, 3.8, 0)
	add_child(mesh_container)

func get_mesh_container() -> ObjectMeshContainer:
	return mesh_container


func set_base_mesh(value: Spatial):
	if base_mesh != null:
		remove_child(base_mesh)
	
	base_mesh = value
	base_mesh.rotation_degrees = Vector3(0, 30, 0)
	add_child(base_mesh)

func get_base_mesh() -> Spatial:
	return base_mesh
