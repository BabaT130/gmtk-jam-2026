extends Node2D

var timer = false
var switch = false
var triggered = false


func _input(event: InputEvent) -> void:
	if Input.is_anything_pressed():
		timer = true

func _process(delta: float) -> void:
	if timer == true:
		get_node("ProgressBar").value -= 20 * delta
		

func _on_area_2d_body_shape_entered(body_rid: RID, body: Node2D, body_shape_index: int, local_shape_index: int) -> void:
	if body.linear_velocity.y < 0:
		print(switch)
		switch = !switch
		triggered = true 
