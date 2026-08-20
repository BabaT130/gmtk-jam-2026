extends Node2D

var timer = false
var switch = false

func _input(event: InputEvent) -> void:
	if Input.is_anything_pressed():
		timer = true

func _process(delta: float) -> void:
	if timer == true:
		get_node("ProgressBar").value -= 20 * delta
		


func _on_red_body_entered(body: Node2D) -> void:
	get_node("appearing_platform_red/AnimatedSprite2D").animation = "out"
	get_node("appearing_platform_red/CollisionShape2D").set_deferred("disabled", true)
