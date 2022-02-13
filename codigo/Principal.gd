extends Control



var escena_tarea = preload("res://scenas/Tarea.tscn")
var tam_pantalla

onready var lunes = $MarginContainer/VBoxContainer/DiaLunes
onready var martes = $MarginContainer/VBoxContainer/DiaMartes
onready var miercoles = $MarginContainer/VBoxContainer/DiaMiercoles
onready var jueves = $MarginContainer/VBoxContainer/DiaJueves
onready var viernes = $MarginContainer/VBoxContainer/DiaViernes
onready var sabado = $MarginContainer/VBoxContainer/DiaSabado
onready var domingo = $MarginContainer/VBoxContainer/DiaDomingo

var array_d


func _ready():
	array_d = [lunes, martes, miercoles, jueves, viernes, sabado, domingo]
	
	tam_pantalla = get_viewport_rect().size
	
	match OS.get_date()["weekday"] :
		0:
			domingo.show()
		1:
			lunes.show()
		2:
			martes.show()
		3:
			miercoles.show()
		4:
			jueves.show()
		5:
			viernes.show()
		6:
			sabado.show()



func _on_BtnLunes_pressed():
	ocultar_dias()
	lunes.show()
	pass # Replace with function body.


func _on_BtnMartes_pressed():
	ocultar_dias()
	martes.show()


func _on_BtnMiercoles_pressed():
	ocultar_dias()
	miercoles.show()


func _on_BtnJueves_pressed():
	ocultar_dias()
	jueves.show()

func _on_BtnViernes_pressed():
	ocultar_dias()
	viernes.show()

func _on_BtnSabado_pressed():
	ocultar_dias()
	sabado.show()


func _on_BtnDomingo_pressed():
	ocultar_dias()
	domingo.show()


func ocultar_dias():
	for i in array_d :
		i.hide()

		
		

#	$MarginContainer/ScrollContainer/MarginContainer/HBoxSemana/MarginDia.tamP = tam_pantalla


#func _on_ButtonSave_pressed():
#	dato_uno = $VBoxContainer/LineEdit.text
#	dato_dos = $VBoxContainer/LineEdit2.text




#
#func _on_BtnOk_pressed():
##	var cant_hijos = 
#	var tarea_instanciada = escena_tarea.instance()
#	pass # Replace with function body.


















#func _on_ButtonLoad_pressed():
#	$VBoxContainer/Label.text = str(load_game())





#func save_game():
#

#func save():
#	var save_dic = {
#		"val_uno" : dato_uno,
#		"val_dos" : dato_dos,
#	}
#	return save_dic
#
#
#func save_game():
#	var save_game = File.new()
#	save_game.open("res://savegame.save", File.WRITE)
#	save_game.store_line(to_json(save()))
#	save_game.close()
#
#
#
#func load_game():
#	var datos
#	var save_game = File.new()
#	if not save_game.file_exists("res://savegame.save"):
#		return # Error! We don't have a save to load.
#
#	save_game.open("res://savegame.save", File.READ)
#	while save_game.get_position() < save_game.get_len():
#		# Get the saved dictionary from the next line in the save file
#		var line_data = parse_json(save_game.get_line())
#		datos = line_data
#	save_game.close()
#	return datos




