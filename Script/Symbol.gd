extends Sprite

export (Color,RGB) var mouse_over #color aussuchen rechts/links in inspector
export (Color, RGB) var mouse_out

func _on_pfeil_mouse_entered():
	set_modulate(mouse_over)
	set_scale(Vector2(0.95,0.95))

func _on_pfeil_mouse_exited():
	set_modulate(mouse_out)
	set_scale(Vector2(1,1))
