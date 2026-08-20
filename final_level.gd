extends Node2D

var timer = false

func _input(event: InputEvent) -> void:
	if Input.is_anything_pressed():
		timer = true

func _process(delta: float) -> void:
	if timer == true:
		get_node("ProgressBar").value -= 10 * delta
		

func _on_red_body_entered(body: Node2D) -> void:
	for item in get_tree().get_nodes_in_group("red_platform"):
		item.get_node("AnimatedSprite2D").animation = "out"
		item.get_node("CollisionShape2D").set_deferred("disabled", true)

func _on_teal_body_entered(body: Node2D) -> void:
	get_node("elevator/AnimationPlayer").play("cycle")
