Class {
	#name : #InProgress,
	#superclass : #ToDoItem,
	#category : #'OO2-TP4-ToDoList-Model'
}

{ #category : #action }
InProgress >> finish: aToDoList [ 
aToDoList state: (Finished new )
]

{ #category : #action }
InProgress >> tooglePause: aToDoList [ 
aToDoList  state: (Paused new)
]
