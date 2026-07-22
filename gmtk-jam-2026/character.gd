extends CharacterBody2D

func _physics_process(delta: float) -> void:
	velocity.x = 0
	if Input.is_action_just_pressed("ui_up") and is_on_floor():
		velocity.y -= 800
	elif Input.is_action_pressed("ui_left"):
		velocity.x -= 200
	elif Input.is_action_pressed("ui_right"):
		velocity.x += 200
	
	velocity.y += 35
	
	if get_parent().get_node("ProgressBar").value > 0:
		move_and_slide()
