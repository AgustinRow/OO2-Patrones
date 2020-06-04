Class {
	#name : #Empleados,
	#superclass : #Object,
	#instVars : [
		'nombre',
		'sueldoBase',
		'fecha',
		'esCasado',
		'hijos'
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
	^ (self
		newWithNombre: unNombre
			sueldoBase: unSueldoBase
			fechaIngreso: unaFecha)
		initializeWithCantHijos: cantidadHijos esCasado: aBoolean;
		yourself
]

{ #category : #template }
Empleados >> adicional [
^self subclassResponsibility 
]

{ #category : #template }
Empleados >> basico [
^self subclassResponsibility 
]

{ #category : #accessing }
Empleados >> cantidadDeHijos [
^hijos
]

{ #category : #accessing }
Empleados >> cantidadDeHijos: unaCantidad [
hijos:= unaCantidad 
]

{ #category : #calculos }
Empleados >> descuento [
	^ self basico * 0.13 + (self adicional * 0.05)
]

{ #category : #calculos }
Empleados >> estaCasado [
	esCasado
		ifTrue: [ ^ 500 ]
		ifFalse: [ ^ 0 ]
]

{ #category : #accessing }
Empleados >> fecha [
^fecha
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

{ #category : #template }
Empleados >> sueldo [
^self basico + self adicional - self descuento
]

{ #category : #accessing }
Empleados >> sueldoBase [
^sueldoBase
]
