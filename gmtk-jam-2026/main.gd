extends Node2D

func _input(event: InputEvent) -> void:
	get_node("ProgressBar").value -= 2

func _on_area_2d_body_entered(body: Node2D) -> void:
	get_node("RigidBody2D").set_deferred("freeze", false)
