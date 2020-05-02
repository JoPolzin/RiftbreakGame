extends Area2D

func _ready():
	if(not visible):
		set_process_unhandled_input(false)
		
# warning-ignore:unused_argument
# warning-ignore:unused_argument
func _on_area_ausweis_bush_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_RIGHT and event.pressed:
			var ansehen_ausweis = AudioStreamPlayer.new() 
			self.add_child(ansehen_ausweis) 
			ansehen_ausweis.stream = load("res://Audio/Voice/Voice Erzähler/Spur 128.wav") 
			ansehen_ausweis.play() 
		if event.button_index == BUTTON_LEFT and event.pressed: 
			var mitnehmen_ausweis = AudioStreamPlayer.new() 
			self.add_child(mitnehmen_ausweis) 
			mitnehmen_ausweis.stream = load("res://Audio/Voice/Voice Erzähler Inter/Spur 128.wav") 
			mitnehmen_ausweis.play() 
			hide()
			
