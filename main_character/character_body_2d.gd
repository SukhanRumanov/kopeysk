extends CharacterBody2D


const SPEED = 40.0

func watch_toCam():
	var mouse_pos = get_global_mouse_position()
	var direction_to_mouse = (mouse_pos - global_position).normalized()
	$AnimatedSprite2D.rotation = direction_to_mouse.angle()+1.5708

func _physics_process(delta: float) -> void:
	var speed=SPEED
	
	if Input.is_key_pressed(KEY_G):
		$"../house".position.x+=SPEED*delta
		
	watch_toCam()
	
	if Input.is_key_pressed(KEY_SHIFT):
		speed*=2
	
	var direction1 = Input.get_axis("ui_left", "ui_right")
	
	velocity.x=speed  * direction1
	var direction2 = Input.get_axis("ui_up", "ui_down")
	
	
	if direction1!=0 || direction2!=0:
		$AnimatedSprite2D.play("default")
	else:
		$AnimatedSprite2D.stop()
	
	velocity.y=speed  * direction2
	
	move_and_slide()
