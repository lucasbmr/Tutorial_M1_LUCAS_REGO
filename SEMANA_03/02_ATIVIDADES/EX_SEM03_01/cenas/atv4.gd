extends Node2D

# Declarar valor em float que sera recebido.
var retornofloat
#Declarar valor em string que sera recebido.
var retornostring

#funcao para imorimir o texto do lineeit.
func mostrartela():
	var escrita = $LineEdit.text
	if escrita.is_valid_float():
		retornofloat = escrita
		$ColorRect/retorno.text = String(retornofloat)
	else:
		retornostring = escrita
		$ColorRect/retorno.text = retornostring

	# Quando botão for pressionado chamar função mostrartela.
func _on_botretorno_pressed():
	mostrartela()
