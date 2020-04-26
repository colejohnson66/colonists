extends Spatial

var ColorMapper = load("res://classes/color_mapper.gd")
var ObjectMeshContainer = load("res://classes/object_mesh_container.gd")
var HexWithBaseMesh = load("res://classes/hex_with_base_mesh.gd")


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var container = ObjectMeshContainer.new([
		"res://assets/hex/sheep-1.obj",
		"res://assets/hex/sheep-2.obj",
		"res://assets/hex/sheep-3.obj",
		"res://assets/hex/sheep-4.obj"
	], [
		ColorMapper.map_color_number(6),
		ColorMapper.map_color_number(3),
		ColorMapper.map_color_number(8),
		ColorMapper.map_color_number(7)
	])
	var base = MeshInstance.new()
	base.mesh = load("res://assets/hex/base.obj")
	
	var hex = HexWithBaseMesh.new()
	hex.mesh_container = container
	hex.base_mesh = base
	add_child(hex)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
