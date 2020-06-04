Class {
	#name : #TestToDoList,
	#superclass : #TestCase,
	#instVars : [
		'toDo',
		'time'
	],
	#category : #'OO2-TP4-ToDoList-Test'
}

{ #category : #initialization }
TestToDoList >> setUp [ 

time:= Time now.
toDo := ToDoList name: 'Mi ToDoList'.

]

{ #category : #tests }
TestToDoList >> testSart [
	self should: [ toDo workedTime  ] raise: Error.
	toDo start.
	self shouldnt: [ toDo workedTime  ] raise: Error.
]

{ #category : #tests }
TestToDoList >> testTooglePaused [
	toDo start.
	toDo tooglePause.
	self shouldnt: [ toDo tooglePause ] raise: Error 
]

{ #category : #tests }
TestToDoList >> testWorkedTime [
	toDo start.
	self assert: toDo workedTime < time asDuration
]
