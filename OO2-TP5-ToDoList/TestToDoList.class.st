Class {
	#name : #TestToDoList,
	#superclass : #TestCase,
	#instVars : [
		'time',
		'toDoList'
	],
	#category : #'OO2-TP5-ToDoList-Test'
}

{ #category : #initialization }
TestToDoList >> setUp [ 

time:= Time now.
toDoList := ToDoItem name: 'Mi ToDoList'.

]

{ #category : #tests }
TestToDoList >> testFinish [
|timex|
toDoList start.
toDoList tooglePause.
timex:= toDoList workedTime.
self deny: toDoList workedTime equals: timex.
toDoList start.
toDoList finish. 
timex:= toDoList workedTime.
self assert: toDoList workedTime equals: timex.
]

{ #category : #tests }
TestToDoList >> testPending [

self should: [toDoList workedTime] raise: Error
]

{ #category : #tests }
TestToDoList >> testSart [
	self should: [ toDoList workedTime  ] raise: Error.
	toDoList start.
	self shouldnt: [ toDoList workedTime  ] raise: Error.
]

{ #category : #tests }
TestToDoList >> testTooglePaused [
	toDoList start.
	toDoList tooglePause.
	self shouldnt: [ toDoList tooglePause ] raise: Error 
]

{ #category : #tests }
TestToDoList >> testWorkedTime [
	toDoList start.
	self assert: toDoList workedTime < time asDuration
]
