extends Node
#class_name CachedColorMaterials


var orange setget ,get_orange
var beige setget ,get_beige
var brown setget ,get_brown
var red setget ,get_red
var gold setget ,get_gold
var lightgreen setget ,get_lightgreen
var white setget ,get_white
var green setget ,get_green
var gray setget ,get_gray
var yellow setget ,get_yellow
var bluegreen setget ,get_bluegreen
var turqoise setget ,get_turqoise
var black setget ,get_black


# Called when the node enters the scene tree for the first time.
func _ready():
	orange = _get_new_material_from_color(Color("#FF7F00"))
	beige = _get_new_material_from_color(Color("#B3B289"))
	brown = _get_new_material_from_color(Color("#964B00"))
	red = _get_new_material_from_color(Color("#FF0000"))
	gold = _get_new_material_from_color(Color("#FFD700"))
	lightgreen = _get_new_material_from_color(Color("#90EE90"))
	white = _get_new_material_from_color(Color("#FFFFFF"))
	green = _get_new_material_from_color(Color("#008000"))
	gray = _get_new_material_from_color(Color("#808080"))
	yellow = _get_new_material_from_color(Color("#FFFF99"))
	bluegreen = _get_new_material_from_color(Color("#0D98BA"))
	turqoise = _get_new_material_from_color(Color("#40E0D0"))
	black = _get_new_material_from_color(Color("#000000"))


func get_orange() -> SpatialMaterial:
	return orange
func get_beige() -> SpatialMaterial:
	return beige
func get_brown() -> SpatialMaterial:
	return brown
func get_red() -> SpatialMaterial:
	return red
func get_gold() -> SpatialMaterial:
	return gold
func get_lightgreen() -> SpatialMaterial:
	return lightgreen
func get_white() -> SpatialMaterial:
	return white
func get_green() -> SpatialMaterial:
	return green
func get_gray() -> SpatialMaterial:
	return gray
func get_yellow() -> SpatialMaterial:
	return yellow
func get_bluegreen() -> SpatialMaterial:
	return bluegreen
func get_turqoise() -> SpatialMaterial:
	return turqoise
func get_black() -> SpatialMaterial:
	return black


static func _get_new_material_from_color(color: Color) -> SpatialMaterial:
	var material = SpatialMaterial.new()
	material.albedo_color = color
	return material
