Class {
	#name : #InProgress,
	#superclass : #ToDoItem,
	#category : #'OO2-TP5-ToDoList-Model'
}

{ #category : #action }
InProgress >> finish: aToDoList [ 
aToDoList state: (Finished new ).
aToDoList stopTimer.
]

{ #category : #action }
InProgress >> tooglePause: aToDoList [ 
aToDoList  state: (Paused new)
]
