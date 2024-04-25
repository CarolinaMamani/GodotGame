extends Node
func _ready():
	
	#region Coordenadas y color

	#Coordenadas:
	#2D
	var coordenadas = Vector2(1.1, 7.8) #con decimales
	var coordenadas_entero = Vector2i(1,7) #solo con numeros enteros
	
	print(coordenadas_entero.x) #accede a las coordenadas x
	
	#3D
	var coordenadas3D = Vector3i(1,7,9)
	var color_fondo = Color(1,1,1,0)
#endregion
	
	#region Constantes
	#Contenedores constantes que nunca cambian de valor
	var vida_actual =10
	vida_actual = 7
	
	#es util para reuzarlo la variable y si 
	#cambiamos el valor cambiaria en todo el codigo
	const  VIDA_INICIAL = 100
	vida_actual = VIDA_INICIAL
	print(VIDA_INICIAL)
	#endregion
	
	#region definir tipos de variables
	# para indicar que la variable siempre sera de un tipo
	var mi_texto:String = 'una frase'
	var num_entero: int = 18
	var num_decimal: float = 7.25
	var mi_coordenada:Vector2 = Vector2(1.1,6.8)
	
	# podemos hacer calculos, ejemplo: averiguar el angulo de las coordenadas
	#print(mi_coordenada.angle())
	#endregion
	
	#region Operadores comparativos booleanos
	var muerto = vida_actual == 0
	var herido = vida_actual < VIDA_INICIAL

	herido = vida_actual < VIDA_INICIAL and vida_actual > 0
	herido = vida_actual < VIDA_INICIAL and not muerto
	
	var operador_or = false or true #si uno es true el resultado es true
	var operador_and = true and true # true si las dos son true
	var operador_not = not true #devuelve lo opuesto, en este caso false
	
	#ejemplo
	'''
	var puede_tomar_cosas = (pulsa_tomar or tomar_automatico)\
		and hay_algo_cerca and not inventario_lleno
	'''
#endregion
	
#region Condiciones If Else
	var vida = VIDA_INICIAL
	var posiones = 1
	
	if vida <= 0: # si es true entra dentro
		print('el jugador murio')
	elif vida > 50:
		print('el jugador tiene algunas heridas')
	else: #siempre se ejcuta else
		if posiones > 0:
			posiones = posiones -1
			vida = VIDA_INICIAL
			print('vida al maximo')
		else:
			print('sigue igual')
		print('el jugador sigue vivo')
	
	print('continua el programa')
#endregion
	
	#Ciclo WHILE
	var turnos = 3
	
	while turnos > 0:
		print(turnos)
		turnos = turnos - 1
		
	
	
	#Ciclo FOR, recorre listas de cualquier tipo numeros o textos
	for i in [0,1,2]: #tambien se puede usar range[], 3, turnos
		#rango, se ejcuta una vez por cada elemento del rango
		print(i)
		
	var array = ['hola',3,'final']
	
	for elemento in array:
		print(elemento)
	
	#para asignar un valor a los elementos de un array
	for i in array.size():
		if (i == 0):
			array[i]= 'primer elemento'
	print('ha terminado la ronda')
	
	#minute 33
	
	
	
	
	
