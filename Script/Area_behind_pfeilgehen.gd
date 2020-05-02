extends Area2D

func _ready():
	hide()
	if(not visible):
		set_process_unhandled_input(false)

# warning-ignore:unused_argument
# warning-ignore:unused_argument
func _on_pfeil_input_event(viewport, event, shape_idx):
	if event.is_pressed()and event.button_index == BUTTON_LEFT:
		show()


func _on_Pfeilgehen_mouse_entered():
	hide()


func _on_Pfeilgehen_mouse_exited():
	show()
