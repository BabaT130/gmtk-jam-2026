extends Node2D

var box = preload("res://box.tscn")

func _process(delta: float) -> void:
	if get_parent().get_node("ProgressBar").value <= 0:
		var spawned_box = box.instantiate()
		spawned_box.position = $Marker2D.position
		add_child(spawned_box)
