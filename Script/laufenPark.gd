extends Node


func _on_Pfeilgehen_input_event(event): #soll: wenn auf pfeilgehen geklickt wird
	if event is InputEventMouseButton:
		if event.is_pressed()and event.button_index == BUTTON_LEFT:
			print("pressed pfeilgehen, nächste szene und geräusch")
			$AudioStreamPlayer.play() #geräusch
# warning-ignore:return_value_discarded
			$"/root/Variables"._setScene("res://screens/springbrunne.tscn") #soll: nächste szene

			#das funktioniert so überhaupt net