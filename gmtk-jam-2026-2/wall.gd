extends StaticBody2D

func _process(delta: float) -> void:
	if get_parent() and get_parent().triggered:
		queue_free()
