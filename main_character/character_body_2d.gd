extends CharacterBody2D


const SPEED = 40.0



func _physics_process(delta: float) -> void:
	var speed=SPEED
	
	if Input.is_key_pressed(KEY_G):
		$"../house".position.x+=SPEED*delta
	
	
	if Input.is_key_pressed(KEY_SHIFT):
		speed*=2
	
	var direction = Input.get_axis("ui_left", "ui_right")
	velocity.x=speed  * direction
	direction = Input.get_axis("ui_up", "ui_down")
	velocity.y=speed  * direction
	move_and_slide()
