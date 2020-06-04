Class {
	#name : #Temporario,
	#superclass : #Empleados,
	#instVars : [
		'horas'
	],
	#category : #'OO2-TP4-CalculoSueldos-Model'
}

{ #category : #'as yet unclassified' }
Temporario class >> nombre: unNombre fechaIngreso: unaFecha esCasado: aBoolean cantHijos: cantidadHijos cantHoras: cantidadHoras [
	^ (self
		newWithNombre: unNombre
		sueldoBase: 4000
		fechaIngreso: unaFecha
		esCasado: aBoolean
		cantHijos: cantidadHijos)
		initializeCantidadHoras: cantidadHoras;
		yourself
]

{ #category : #'as yet unclassified' }
Temporario >> adicional [
	^ ((self cantidadDeHijos * 100) + self estaCasado)
]

{ #category : #'as yet unclassified' }
Temporario >> basico [
	^ self sueldoBase + (self cantidadHoras  * 10)
]

{ #category : #'as yet unclassified' }
Temporario >> cantidadHoras [
^horas
]

{ #category : #'as yet unclassified' }
Temporario >> initializeCantidadHoras: cantidadHoras [
horas:= cantidadHoras 
]
