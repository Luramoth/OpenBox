extends Node3D
class_name Player

var XR_interface:XRInterface

# Called when the node enters the scene tree for the first time.
func _ready():
	XR_interface = XRServer.find_interface("OpenXR")
	
	if XR_interface and XR_interface.is_initialized():
		print("OpenXR Initialised")
		
		DisplayServer.window_set_vsync_mode(DisplayServer.VSYNC_DISABLED)
		
		get_viewport().use_xr = true
	else:
		print("OpenXR failed to initialise, is your headset plugged in?")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
