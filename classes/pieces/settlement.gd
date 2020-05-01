extends Spatial
class_name Settlement


var Colors = load("res://classes/colors.gd")
var ObjectMeshContainer = load("res://classes/object_mesh_container.gd")


var container


func _ready():
	container = ObjectMeshContainer.new()
	add_child(container)
	
	container.add_mesh("res://assets/pieces/settlement-2.obj", Colors.COLOR_GRAY)
	container.add_mesh("res://assets/pieces/settlement-3.obj", Colors.COLOR_GREEN)


func set_color(value: int):
	container.add_mesh("res://assets/pieces/settlement-1.obj", value)
