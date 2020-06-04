Class {
	#name : #Paused,
	#superclass : #ToDoItem,
	#category : #'OO2-TP4-ToDoList-Model'
}

{ #category : #action }
Paused >> finish: aToDoList [
aToDoList state: (Finished new).
aToDoList stopTimer.
]

{ #category : #action }
Paused >> tooglePause: aToDoList [ 
aToDoList state: (InProgress new)
]
