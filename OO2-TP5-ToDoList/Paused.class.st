Class {
	#name : #Paused,
	#superclass : #State,
	#category : #'OO2-TP5-ToDoList-Model'
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
