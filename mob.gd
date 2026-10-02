extends CharacterBody2D

signal squashed

@onready var mario = get_node("/root/Game/Mario")
const SPEED = 150.0


func _physics_process(delta: float) -> void:
	var direction = Vector2(-1,0)
	velocity = direction * SPEED
	move_and_slide()

func squash() :
	squashed.emit()
	queue_free()
