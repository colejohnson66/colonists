extends WaterHarborHex
class_name OreHarbor


var HarborPiece = load("res://classes/harbor/harbor_piece.gd")


var piece setget ,get_piece


func _ready():
	piece = HarborPiece.new()
	add_child(piece)
	piece.set_unique_piece_mesh("res://assets/harbor/ore.obj")
	piece.set_unique_piece_color(Colors.COLOR_GRAY)


func get_piece() -> HarborPiece:
	return piece
