Class {
	#name : #Empleados,
	#superclass : #Object,
	#instVars : [
		'nombre',
		'sueldoBase',
		'fecha',
		'esCasado',
		'hijos',
		'horas',
		'precioHora'
	],
	#category : #'OO2-TP4-CalculoSueldos-Model'
}

{ #category : #'instance creation' }
Empleados class >> newWithNombre: unNombre sueldoBase: unSueldoBase fechaIngreso: unaFecha [
	^ self new
		nombre: unNombre sueldoBase: unSueldoBase  fechaIngreso: unaFecha;
		yourself
]

{ #category : #'instance creation' }
Empleados class >> newWithNombre: unNombre sueldoBase: unSueldoBase fechaIngreso: unaFecha esCasado: aBoolean cantHijos: cantidadHijos [
	^ (self new
		nombre: unNombre
		sueldoBase: unSueldoBase
		fechaIngreso: unaFecha)
		initializeWithCantHijos: cantidadHijos esCasado: aBoolean;
		yourself
]

{ #category : #template }
Empleados >> adicional [
^self subclassResponsibility 
]

{ #category : #calculos }
Empleados >> adicionalSiEsCasado [
	esCasado
		ifTrue: [ ^ 500 ]
		ifFalse: [ ^ 0 ]
]

{ #category : #template }
Empleados >> basico [
^self subclassResponsibility 
]

{ #category : #template }
Empleados >> calcularSueldoSinAporte [
^self basico + self adicional - self descuento
]

{ #category : #accessing }
Empleados >> cantidadDeHijos [
^hijos
]

{ #category : #accessing }
Empleados >> cantidadDeHijos: unaCantidad [
hijos:= unaCantidad 
]

{ #category : #accessing }
Empleados >> cantidadHoras [
^horas
]

{ #category : #calculos }
Empleados >> descuento [
	^ self basico * 0.13 + (self adicional * 0.05)
]

{ #category : #accessing }
Empleados >> fecha [
^fecha
]

{ #category : #initialize }
Empleados >> initializeCantidadHoras: cantidadHoras [
horas:= cantidadHoras 
]

{ #category : #initialize }
Empleados >> initializeCantidadHoras: cantidadHoras andPrecio: unPrecio [
horas:= cantidadHoras .
precioHora:= unPrecio.
]

{ #category : #initialize }
Empleados >> initializeWithCantHijos: cantidadHijos esCasado: aBoolean [

	esCasado := aBoolean.
	hijos:= cantidadHijos.
]

{ #category : #initialize }
Empleados >> nombre: unNombre sueldoBase: unSueldo fechaIngreso: unaFecha [

nombre:= unNombre. 
sueldoBase:= unSueldo.
fecha:= unaFecha asDate.
]

{ #category : #accessing }
Empleados >> precioHora [
^precioHora 
]

{ #category : #template }
Empleados >> sueldo [
	(self calcularSueldoSinAporte between: 3000 and: 4000)
		ifTrue: [ ^ self calcularSueldoSinAporte * 0.98 ]
		ifFalse: [ self calcularSueldoSinAporte > 4000
				ifTrue: [ ^ self calcularSueldoSinAporte * 0.97 ] ].
	^self calcularSueldoSinAporte * 0.99
			

]

{ #category : #accessing }
Empleados >> sueldoBase [
^sueldoBase
]
