extends ColorRect

func _on_exit_body_entered(body: Node2D) -> void:
	get_tree().change_scene_to_file("res://elevator.tscn")
