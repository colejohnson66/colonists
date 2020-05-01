extends WaterHarborHex
class_name BrickHarbor


var HarborPiece = load("res://classes/harbor/harbor_piece.gd")


var piece setget ,get_piece


func _ready():
	piece = HarborPiece.new()
	add_child(piece)
	piece.set_unique_piece_mesh("res://assets/harbor/brick.obj")
	piece.set_unique_piece_color(Colors.COLOR_ORANGE)


func get_piece() -> HarborPiece:
	return piece
