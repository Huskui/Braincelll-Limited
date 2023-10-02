extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if $PressurePlate.pressed:
		$Door.open()
	else:
		$Door.close()
	
	if $Lever.state:
		$DoorPlaceholder.emitting = true
		$ExitDoor.open = true
	else:
		$DoorPlaceholder.emitting = false
		$ExitDoor.open = false