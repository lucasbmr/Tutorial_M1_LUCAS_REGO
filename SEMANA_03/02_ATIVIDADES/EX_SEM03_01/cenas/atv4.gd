extends Node2D


var retornofloat
var retornostring

	
func _on_botretorno_pressed():
	var escrita = $LineEdit.text
	if escrita.is_valid_float():
		retornofloat = escrita
		$ColorRect/retorno.text = String(retornofloat)
	else:
		retornostring = escrita
		$ColorRect/retorno.text = retornostring


	
