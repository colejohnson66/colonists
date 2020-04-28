extends Node
class_name Constants


const ratio = sqrt(3) * (2.0 / 3.0)


enum {
	DIRECTION_N,
	DIRECTION_NE,
	DIRECTION_SE,
	DIRECTION_S,
	DIRECTION_SW,
	DIRECTION_NW
}


func get_hex_size() -> Vector2:
	return Vector2(79 * ratio, 79)


func get_direction_vector(direction: int) -> Vector2:
	if (direction == DIRECTION_N):
		return Vector2(-1, 0)
	if (direction == DIRECTION_NE):
		return Vector2(-1, 1)
	if (direction == DIRECTION_SE):
		return Vector2(0, 1)
	if (direction == DIRECTION_S):
		return Vector2(1, 0)
	if (direction == DIRECTION_SW):
		return Vector2(1, -1)
	if (direction == DIRECTION_NW):
		return Vector2(0, -1)
	
	push_error("Unknown direction; Returning zero vector")
	return Vector2(0, 0)
