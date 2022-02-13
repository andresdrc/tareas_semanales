extends HBoxContainer


onready var lab_texto = $Label
onready var checbox = $CheckBox

var pos : int


func _ready():
	pass


func set_texto(texto : String):
	lab_texto.text = texto


func editar():
	$BtnEliminar.show()

func no_editar():
	$BtnEliminar.hide()


func _on_BtnEliminar_pressed():
	queue_free()
