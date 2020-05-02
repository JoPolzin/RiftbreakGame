extends Area2D

func _ready():
	pass
func deactivate():
	if(not visible):
		set_process(false)
		set_physics_process(false)
		set_process_unhandled_input(false)
		set_process_input(false)

# warning-ignore:unused_argument
# warning-ignore:unused_argument
func _on_pfeil_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed()and event.button_index == BUTTON_LEFT:
			print("pressed symbolpfeil")
			hide()


# warning-ignore:unused_argument
# warning-ignore:unused_argument
func _on_Area_behind_pfeilgehen_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.is_pressed()and event.button_index == BUTTON_LEFT:
			show()
