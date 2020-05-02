extends Area2D

func _ready():
	pass

# warning-ignore:unused_argument
# warning-ignore:unused_argument
func _on_area_friedhof_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_RIGHT and event.pressed: #festlegen, dass rechte maustaste + gedrückt
			var ansehen_friedhof = AudioStreamPlayer.new() #variable für player
			self.add_child(ansehen_friedhof) #animationplayer per script hinzufügen, damit nicht so viele nodes
			ansehen_friedhof.stream = load("res://Audio/Voice/Voice Erzähler/Spur 123.wav") #datei laden
			ansehen_friedhof.play() #datei abspielen(alles muss in 1 funktion sein, sonst gehts nicht)
		if event.button_index == BUTTON_LEFT and event.pressed: #festlegen, dass linke maustaste + gedrückt
# warning-ignore:return_value_discarded
			get_tree().change_scene("res://Singleton/laufen.tscn") #eigl friedhof laden (gibts noch nicht)
