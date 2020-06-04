Class {
	#name : #Pasante,
	#superclass : #Empleados,
	#instVars : [
		'cantidadExamenes'
	],
	#category : #'OO2-TP4-CalculoSueldos-Model'
}

{ #category : #'as yet unclassified' }
Pasante class >> nombre: unNombre fechaIngreso: unaFecha examenesRendidos: unNumero [
	^ (self
		newWithNombre: unNombre
		sueldoBase: 2000
		fechaIngreso: unaFecha)
		cantidadExamenes: unNumero;
		yourself
]

{ #category : #'as yet unclassified' }
Pasante >> adicional [
^self cantidadExamenes * 100
]

{ #category : #'as yet unclassified' }
Pasante >> basico [
^self sueldoBase 
]

{ #category : #accessing }
Pasante >> cantidadExamenes [
	^ cantidadExamenes
]

{ #category : #accessing }
Pasante >> cantidadExamenes: unaCantidad [
cantidadExamenes:=unaCantidad 
]
