Class {
	#name : #DecoratorFile,
	#superclass : #ComponentFile,
	#instVars : [
		'component'
	],
	#category : #'OO2-TP6-FileManager-Wrapper'
}

{ #category : #'instance creation' }
DecoratorFile class >> newWith: aDecorator [
	^ self new
		configureDecorator: aDecorator;
		yourself
]

{ #category : #'as yet unclassified' }
DecoratorFile >> concatena: unString [
^unString, ' - '
]

{ #category : #'as yet unclassified' }
DecoratorFile >> configureDecorator: aDecorator [ 
component:= aDecorator
]

{ #category : #accessing }
DecoratorFile >> extension [
^component extension 
]

{ #category : #accessing }
DecoratorFile >> fechaCreacion [ 
^component fechaCreacion 
]

{ #category : #accessing }
DecoratorFile >> fechaModificacion [ 
^component fechaModificacion 
]

{ #category : #accessing }
DecoratorFile >> nombre [
^component nombre
]

{ #category : #accessing }
DecoratorFile >> permisos [
^component permisos
]

{ #category : #'menu commands' }
DecoratorFile >> prettyPrint [ 
^component prettyPrint 
]

{ #category : #accessing }
DecoratorFile >> tamaño [ 
^component tamaño 
]
