extends RigidBody2D

var is_on_floor = false

func _physics_process(delta: float) -> void:
	if get_parent().get_node("ProgressBar").value > 0:
		linear_velocity.x = 0
		if Input.is_action_just_pressed("ui_up") and is_on_floor:
			linear_velocity.y -= 1000
		elif Input.is_action_pressed("ui_left"):
			linear_velocity.x -= 250
		elif Input.is_action_pressed("ui_right"):
			linear_velocity.x += 250
		
		if not is_on_floor:
			linear_velocity.y += 25
		
		if $CollisionShape2D/RayCast2D.is_colliding():
			is_on_floor = true
		else:
			is_on_floor = false
		

func _integrate_forces(state: PhysicsDirectBodyState2D) -> void:
	if get_parent().get_node("ProgressBar").value <= 0:
		self.position = get_parent().get_node("respawn-point").position
		get_parent().get_node("ProgressBar").value = 100
