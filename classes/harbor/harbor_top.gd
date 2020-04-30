extends Spatial
class_name HarborTop


var Colors = load("res://classes/colors.gd")
var ObjectMeshContainer = load("res://classes/object_mesh_container.gd")


func _ready():
	var container = ObjectMeshContainer.new()
	add_child(container)
	container.add_mesh("res://assets/harbor/top-1.obj", Colors.COLOR_GRAY)
	container.add_mesh("res://assets/harbor/top-2.obj", Colors.COLOR_BROWN)
	container.add_mesh("res://assets/harbor/top-3.obj", Colors.COLOR_BEIGE)
	container.add_mesh("res://assets/harbor/top-4.obj", Colors.COLOR_RED)
