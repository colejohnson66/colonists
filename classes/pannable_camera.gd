extends Camera
class_name Pannablecamera


func _process(delta):
	if Input.is_action_pressed("ui_right"):
		translate(Vector3(3, 0, 0))
	if Input.is_action_pressed("ui_left"):
		translate(Vector3(-3, 0, 0))
	if Input.is_action_pressed("ui_up"):
		translate(Vector3(0, 3, 0))
	if Input.is_action_pressed("ui_down"):
		translate(Vector3(0, -3, 0))
	pass
