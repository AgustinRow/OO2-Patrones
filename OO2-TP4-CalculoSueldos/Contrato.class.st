Class {
	#name : #Contrato,
	#superclass : #Empleados,
	#category : #'OO2-TP4-CalculoSueldos-Model'
}

{ #category : #'as yet unclassified' }
Contrato class >> nombre: unNombre fechaIngreso: unaFecha cantHoras: cantidadHoras [
	^ (self
		newWithNombre: unNombre
		sueldoBase: 0
		fechaIngreso: unaFecha)
		initializeCantidadHoras: cantidadHoras andPrecio: 40;
		yourself
]

{ #category : #template }
Contrato >> adicional [
	(self cantidadHoras between: 50 and: 99)
		ifTrue: [ ^ 100 ]
		ifFalse: [ self cantidadHoras > 100
				ifTrue: [ ^ 200 ] ].
	^0
]

{ #category : #template }
Contrato >> basico [
^  self cantidadHoras * self precioHora  
]
