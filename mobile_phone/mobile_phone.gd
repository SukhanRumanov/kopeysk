extends TextureRect

func _ready():
	set_phone_position()
	$".".size = Vector2(26, 36)
	
func set_phone_position(left_margin: int = 20, bottom_margin: int = -80):
   
	var viewport_size = get_viewport().get_visible_rect().size
	
	anchor_left = 0.0
	anchor_right = 0.0
	anchor_top = 1.0
	anchor_bottom = 1.0
	
	offset_left = left_margin
	offset_right = left_margin + size.x
	offset_top = bottom_margin - size.y  
	offset_bottom = bottom_margin
