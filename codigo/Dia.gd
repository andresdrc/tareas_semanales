extends MarginContainer


var dato_uno = 5
var dato_dos = 987

var escena_tarea = preload("res://scenas/Tarea.tscn")

onready var vbox_dia = $VBoxDia
onready var edit_text_nueva_tarea = $VBoxDia/HBoxNuevaTarea/LineEdit
onready var nueva_tarea = $VBoxDia/HBoxNuevaTarea

var modo_edicion : bool = false

var tam_pantalla

func _ready():
	tam_pantalla = get_viewport_rect().size
	
	rect_min_size.x = tam_pantalla.x - 70



func _on_ButtonSave_pressed():
	dato_uno = $VBoxContainer/LineEdit.text
	dato_dos = $VBoxContainer/LineEdit2.text
#	save_game()




func _on_BtnOk_pressed():
	
	if edit_text_nueva_tarea.text != "" :
		var nom_tarea = edit_text_nueva_tarea.text
		
		var tarea_instanciada = escena_tarea.instance()
		vbox_dia.add_child(tarea_instanciada)
		
		var cant_hijos = vbox_dia.get_child_count()
		vbox_dia.move_child(tarea_instanciada,cant_hijos - 4)
		
		tarea_instanciada.set_texto(nom_tarea)
		
		edit_text_nueva_tarea.text = ""


func _on_BtnEditar_pressed():
	modo_edicion = !modo_edicion
	
	if !modo_edicion :
		nueva_tarea.hide()
		get_tree().call_group("tarea", "no_editar")
	else :

		nueva_tarea.show()
		get_tree().call_group("tarea", "editar")
	



func _on_BtnCancel_pressed():
	$VBoxDia/HBoxNuevaTarea/LineEdit.text = ""
	pass # Replace with function body.
