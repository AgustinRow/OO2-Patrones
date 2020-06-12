Class {
	#name : #Temporario,
	#superclass : #Empleados,
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
		initializeCantidadHoras: cantidadHoras andPrecio: 10;
		yourself
]

{ #category : #'as yet unclassified' }
Temporario >> adicional [
	^ ((self cantidadDeHijos * 100) + self adicionalSiEsCasado)
]

{ #category : #'as yet unclassified' }
Temporario >> basico [
"el "
	^ self sueldoBase + (self cantidadHoras  * self precioHora)
]
