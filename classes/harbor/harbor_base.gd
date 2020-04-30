extends Spatial
class_name HarborBase


var Colors = load("res://classes/colors.gd")
var ObjectMeshContainer = load("res://classes/object_mesh_container.gd")


func _ready():
	var container = ObjectMeshContainer.new()
	add_child(container)
	container.add_mesh("res://assets/harbor/base-1.obj", Colors.COLOR_BEIGE)
	container.add_mesh("res://assets/harbor/base-2.obj", Colors.COLOR_TURQOISE)
	container.add_mesh("res://assets/harbor/base-3.obj", Colors.COLOR_BROWN)
	container.add_mesh("res://assets/harbor/base-4.obj", Colors.COLOR_WHITE)
