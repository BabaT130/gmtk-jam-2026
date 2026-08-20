extends AnimatableBody2D

var last_pos: float = 0.0

@export var speed: float = 100.0        
@export var move_distance: float = 300.0 
@export var level_parent: Node2D

var top_y: float = 0.0
var bottom_y: float = 0.0
var direction: float = -1.0 


func _ready() -> void:
	level_parent = get_parent()
	bottom_y = position.y
	top_y = position.y - move_distance

	if level_parent and level_parent.switch and last_pos != 0.0:
		position.y = last_pos

func _physics_process(delta: float) -> void:
	if level_parent and level_parent.switch:
		return

	position.y += direction * speed * delta
	#print("position.y: ", position.y)

	if direction == -1.0 and position.y <= top_y:
		position.y = top_y
		direction = 1.0  
	elif direction == 1.0 and position.y >= bottom_y:
		position.y = bottom_y
		direction = -1.0 
	last_pos = position.y


	last_pos = position.y
