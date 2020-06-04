Class {
	#name : #Planta,
	#superclass : #Empleados,
	#category : #'OO2-TP4-CalculoSueldos-Model'
}

{ #category : #'as yet unclassified' }
Planta class >> nombre: unNombre fechaIngreso: unaFecha esCasado: aBoolean cantHijos: cantidadHijos [
	^ (self
		newWithNombre: unNombre
		sueldoBase: 3000
		fechaIngreso: unaFecha 
		esCasado: aBoolean 
		cantHijos: cantidadHijos)
		yourself
]

{ #category : #'as yet unclassified' }
Planta >> adicional [ 
^ self estaCasado + self adicionalHijos+ self adicionalAntiguedad
]

{ #category : #'as yet unclassified' }
Planta >> adicionalAntiguedad [
	^ 100 * self antiguedad
]

{ #category : #'as yet unclassified' }
Planta >> adicionalHijos [
^self cantidadDeHijos * 100 
]

{ #category : #'as yet unclassified' }
Planta >> antiguedad [
	^ DateAndTime today year - (self fecha year)
]

{ #category : #'as yet unclassified' }
Planta >> basico [
^self sueldoBase 
]
