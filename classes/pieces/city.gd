extends Spatial
class_name City


var Colors = load("res://classes/colors.gd")
var ObjectMeshContainer = load("res://classes/object_mesh_container.gd")


var container


func _ready():
	container = ObjectMeshContainer.new()
	add_child(container)
	
	container.add_mesh("res://assets/pieces/city-2.obj", Colors.COLOR_GRAY)
	container.add_mesh("res://assets/pieces/city-3.obj", Colors.COLOR_GREEN)


func set_color(value: int):
	container.add_mesh("res://assets/pieces/city-1.obj", value)
