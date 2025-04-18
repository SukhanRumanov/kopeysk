extends CharacterBody2D


const SPEED = 40.0



func _physics_process(delta: float) -> void:
	var speed=SPEED
	
	if Input.is_key_pressed(KEY_G):
		$"../house".position.x+=SPEED*delta
	
	#var mouse_pos = get_viewport().get_mouse_position()
	#mouse_pos=mouse_pos- Vector2(90,180)
	#mouse_pos.x=mouse_pos.x/90
	#mouse_pos.y=mouse_pos.y/180
	#$Sprite2D
	#var sin_angle=mouse_pos.x/mouse_pos.y
	
	
	$Sprite2D.rotation+=PI*0.5*delta
	if Input.is_key_pressed(KEY_SHIFT):
		speed*=2
	
	var direction = Input.get_axis("ui_left", "ui_right")
	velocity.x=speed  * direction
	direction = Input.get_axis("ui_up", "ui_down")
	velocity.y=speed  * direction
	move_and_slide()
