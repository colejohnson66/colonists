extends Spatial

var ColorMapper = load("res://classes/color_mapper.gd")
var ObjectMeshContainer = load("res://classes/object_mesh_container.gd")
var HexWithBaseMesh = load("res://classes/hex_with_base_mesh.gd")


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var container = ObjectMeshContainer.new()
	container.add_mesh("res://assets/hex/ore-1.obj", ColorMapper.map_color_number(2))
	container.add_mesh("res://assets/hex/ore-2.obj", ColorMapper.map_color_number(9))
	container.add_mesh("res://assets/hex/ore-3.obj", ColorMapper.map_color_number(3))
	container.add_mesh("res://assets/hex/ore-4.obj", ColorMapper.map_color_number(8))
	
	var base = MeshInstance.new()
	base.mesh = load("res://assets/hex/base.obj")
	
	var hex = HexWithBaseMesh.new()
	hex.mesh_container = container
	hex.base_mesh = base
	add_child(hex)
