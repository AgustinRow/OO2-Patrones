Class {
	#name : #FileOO2,
	#superclass : #ComponentFile,
	#instVars : [
		'nombre',
		'extension',
		'tamaño',
		'fechaCreacion',
		'fechaModificacion',
		'permisos'
	],
	#category : #'OO2-TP6-FileManager-Wrapper'
}

{ #category : #accessing }
FileOO2 >> extension [ 
^extension 
]

{ #category : #accessing }
FileOO2 >> extension: unaExtension [  
extension:= unaExtension 
]

{ #category : #accessing }
FileOO2 >> fechaCreacion [ 
^fechaCreacion 

]

{ #category : #accessing }
FileOO2 >> fechaCreacion: unaFecha [ 
fechaCreacion := unaFecha 

]

{ #category : #accessing }
FileOO2 >> fechaModificacion [ 
^fechaModificacion 

]

{ #category : #accessing }
FileOO2 >> fechaModificacion: unaFecha [ 
fechaModificacion  := unaFecha 

]

{ #category : #accessing }
FileOO2 >> nombre [
^nombre
]

{ #category : #accessing }
FileOO2 >> nombre: unNombre [
nombre:= unNombre 
]

{ #category : #accessing }
FileOO2 >> permisos [
^permisos

]

{ #category : #accessing }
FileOO2 >> permisos: unPermiso [
permisos := unPermiso 

]

{ #category : #'menu commands' }
FileOO2 >> prettyPrint [
^''
]

{ #category : #accessing }
FileOO2 >> tamaño [ 
^tamaño 
]

{ #category : #accessing }
FileOO2 >> tamaño: unTamaño [
tamaño:= unTamaño 
]
