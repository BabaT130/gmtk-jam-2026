extends Node2D

var timer = false

func _input(event: InputEvent) -> void:
	if Input.is_anything_pressed():
		timer = true

func _process(delta: float) -> void:
	if timer == true:
		get_node("ProgressBar").value -= 20 * delta
		

func _on_area_2d_body_entered(body: Node2D) -> void:
	for item in get_tree().get_nodes_in_group("box"):
		item.set_deferred("freeze", false)
