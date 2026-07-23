extends RigidBody2D

func _physics_process(delta: float) -> void:
	if get_parent().get_node("ProgressBar").value > 0:
		linear_velocity.x = 0
		if Input.is_action_just_pressed("ui_up"):
			linear_velocity.y -= 1000
		elif Input.is_action_pressed("ui_left"):
			linear_velocity.x -= 250
		elif Input.is_action_pressed("ui_right"):
			linear_velocity.x += 250
		
		linear_velocity.y += 35
