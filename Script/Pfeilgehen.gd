extends Area2D


func _ready():
	hide()
	if(not visible):
		set_process_unhandled_input(false) #interaktionen ausgeschaltet, wenn nicht sichtbar!

# warning-ignore:unused_argument
# warning-ignore:unused_argument
func _on_pfeil_input_event(viewport, event, shape_idx): #wenn auf pfeil symbol geklickt wird passiert...
	if event is InputEventMouseButton:
		if event.is_pressed()and event.button_index == BUTTON_LEFT:
			show()

# warning-ignore:unused_argument
# warning-ignore:unused_argument
func _on_Pfeilgehen_input_event(viewport, event, shape_idx): #wenn auf pfeilgehen geklickt wird
	if event is InputEventMouseButton:
		if event.is_pressed()and event.button_index == BUTTON_LEFT:
			print("pressed pfeilgehen, nächste szene und geräusch")
			$AudioStreamPlayer.play() #geräusch
# warning-ignore:return_value_discarded
			$"/root/Variables"._setScene("res://screens/springbrunnen.tscn") #nächste szene
			#eigl will ich den szenenwechsel anders haben, damit man das leichter austauschen kann

