extends Camera
class_name Pannablecamera


func _process(delta):
	if Input.is_key_pressed(KEY_RIGHT):
		translate(Vector3(3, 0, 0))
	if Input.is_key_pressed(KEY_LEFT):
		translate(Vector3(-3, 0, 0))
	if Input.is_key_pressed(KEY_UP):
		translate(Vector3(0, 3, 0))
	if Input.is_key_pressed(KEY_DOWN):
		translate(Vector3(0, -3, 0))
	if Input.is_key_pressed(KEY_BRACKETRIGHT):
		translate(Vector3(0, 0, 3))
	if Input.is_key_pressed(KEY_BRACKETLEFT):
		translate(Vector3(0, 0, -3))
	pass
