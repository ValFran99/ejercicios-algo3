!classDefinition: #CantSuspend category: 'CodigoRepetido-Ejercicio'!
Error subclass: #CantSuspend
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodigoRepetido-Ejercicio'!


!classDefinition: #NotFound category: 'CodigoRepetido-Ejercicio'!
Error subclass: #NotFound
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodigoRepetido-Ejercicio'!


!classDefinition: #CustomerBookTest category: 'CodigoRepetido-Ejercicio'!
TestCase subclass: #CustomerBookTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodigoRepetido-Ejercicio'!

!CustomerBookTest methodsFor: 'tests' stamp: 'Fv 5/18/2021 10:47:24'!
test01AddingCustomerShouldNotTakeMoreThan50Milliseconds

	| customerBook |

	customerBook := CustomerBook new.
	self assertThat: [ customerBook addCustomerNamed: 'John Lennon' ] runsInLessThan: 50 * millisecond.! !

!CustomerBookTest methodsFor: 'tests' stamp: 'Fv 5/18/2021 10:56:37'!
test02RemovingCustomerShouldNotTakeMoreThan100Milliseconds

	| customerBook  paulMcCartney |
	
	paulMcCartney := 'Paul McCartney'.
	customerBook := self createABookAndAdd: paulMcCartney.
	
	self assertThat: [ customerBook removeCustomerNamed: paulMcCartney. ] runsInLessThan: 100 * millisecond.
	
	
! !

!CustomerBookTest methodsFor: 'tests' stamp: 'Fv 5/19/2021 11:20:32'!
test03CanNotAddACustomerWithEmptyName 

	| customerBook |
			
	customerBook := CustomerBook new.

	self tryToDoThisBlock: [ customerBook addCustomerNamed: ''. self fail ]
		watchOutForThis: Error 
		ifThatHappensDoThisBlock: [ :anError |
			self assert: anError messageText = CustomerBook customerCanNotBeEmptyErrorMessage.
			self assert: customerBook isEmpty ].! !

!CustomerBookTest methodsFor: 'tests' stamp: 'Fv 5/19/2021 11:43:48'!
test04CanNotRemoveAnInvalidCustomer
	
	| customerBook johnLennon |
	johnLennon := 'John Lennon'.		
	
	customerBook := self createABookAndAdd: johnLennon.
	
	self tryToDoThisBlock: [ customerBook removeCustomerNamed: 'Paul McCartney'. self fail ] 
		watchOutForThis: NotFound  
		ifThatHappensDoThisBlock: [ :anError | 
			self assertThatIn: customerBook thereIsThisAmountOfActiveCustomers: 1 andThatThisCustomerExists: 																						johnLennon.
			]
	
	
		
		
! !

!CustomerBookTest methodsFor: 'tests' stamp: 'Fv 5/18/2021 17:07:29'!
test05SuspendingACustomerShouldNotRemoveItFromCustomerBook

	| customerBook paulMcCartney|
	
	paulMcCartney := 'Paul McCartney'.
	customerBook := self createABookAndAddAndSuspend: paulMcCartney.
	
	self assertThatIn: customerBook thereIsThisAmountOfActiveCustomers: 0 suspendedCustomers: 1 andTotalCustomers: 1.
	self assert: (customerBook includesCustomerNamed: paulMcCartney).
	

	
! !

!CustomerBookTest methodsFor: 'tests' stamp: 'Fv 5/18/2021 17:07:44'!
test06RemovingASuspendedCustomerShouldRemoveItFromCustomerBook

	| customerBook paulMcCartney|
	
	paulMcCartney := 'Paul McCartney'.
	customerBook := self createABookAndAddSuspendAndRemove: paulMcCartney.
	
	self assertThatIn: customerBook thereIsThisAmountOfActiveCustomers: 0 suspendedCustomers: 0 andTotalCustomers: 0.
	self deny: (customerBook includesCustomerNamed: paulMcCartney).


	
! !

!CustomerBookTest methodsFor: 'tests' stamp: 'Fv 5/19/2021 11:31:16'!
test07CanNotSuspendAnInvalidCustomer
	
	| customerBook johnLennon |
	
	johnLennon := 'John Lennon'.	
	customerBook := self createABookAndAdd: johnLennon.
	
	self assertThatIn: customerBook youCantSuspendThisCustomer: 'Ringo Starr' thereIsThisAmountOfActiveCustomers: 1 andCheckIfThisCustomerExists: johnLennon.
! !

!CustomerBookTest methodsFor: 'tests' stamp: 'Fv 5/19/2021 11:31:57'!
test08CanNotSuspendAnAlreadySuspendedCustomer
	
	| customerBook johnLennon |
	
	johnLennon := 'John Lennon'.
	customerBook := self createABookAndAddAndSuspend: johnLennon.
	
	self assertThatIn: customerBook youCantSuspendThisCustomer: johnLennon thereIsThisAmountOfActiveCustomers: 1 andCheckIfThisCustomerExists: johnLennon.! !


!CustomerBookTest methodsFor: 'helpers' stamp: 'Fv 5/18/2021 10:45:46'!
assertThat: blockOfCodeToMeasureTimeTo runsInLessThan: time

	
	self assert: blockOfCodeToMeasureTimeTo timeToRun < time.! !

!CustomerBookTest methodsFor: 'helpers' stamp: 'Fv 5/19/2021 10:59:43'!
assertThatIn: customerBook thereIsThisAmountOfActiveCustomers: numberOfExpectedActiveCustomers andThatThisCustomerExists: customerNameToCheck 

	self assert: customerBook numberOfCustomers = numberOfExpectedActiveCustomers.
	self assert: (customerBook includesCustomerNamed: customerNameToCheck)! !

!CustomerBookTest methodsFor: 'helpers' stamp: 'Fv 5/18/2021 17:07:07'!
assertThatIn: customerBook thereIsThisAmountOfActiveCustomers: activeCustomers suspendedCustomers: suspendedCustomers andTotalCustomers: totalCustomers

	self assert: activeCustomers equals: customerBook numberOfActiveCustomers.
	self assert: suspendedCustomers equals: customerBook numberOfSuspendedCustomers.
	self assert: totalCustomers equals: customerBook numberOfCustomers.! !

!CustomerBookTest methodsFor: 'helpers' stamp: 'Fv 5/19/2021 11:28:58'!
assertThatIn: customerBook youCantSuspendThisCustomer: customerToSuspend thereIsThisAmountOfActiveCustomers: expectedAmountOfActiveCustomers andCheckIfThisCustomerExists: customerToCheckIfExist

	self tryToDoThisBlock: [ customerBook suspendCustomerNamed: customerToSuspend. self fail ]
		watchOutForThis: CantSuspend
		ifThatHappensDoThisBlock: [ :anError |
			self assertThatIn: customerBook thereIsThisAmountOfActiveCustomers: 1 andThatThisCustomerExists: 																			customerToCheckIfExist.
			]! !

!CustomerBookTest methodsFor: 'helpers' stamp: 'Fv 5/19/2021 11:06:58'!
createABookAndAdd: customerToAdd

	| customerBook | 

	customerBook := CustomerBook new.
	customerBook addCustomerNamed: customerToAdd.
	
	^customerBook.! !

!CustomerBookTest methodsFor: 'helpers' stamp: 'Fv 5/19/2021 11:07:14'!
createABookAndAddAndSuspend: customerToAddAndSuspend
	
	| customerBook |
	
	customerBook := self createABookAndAdd: customerToAddAndSuspend.	
	customerBook suspendCustomerNamed: customerToAddAndSuspend.
	
	^customerBook.! !

!CustomerBookTest methodsFor: 'helpers' stamp: 'Fv 5/19/2021 11:07:31'!
createABookAndAddSuspendAndRemove: customerToAddSuspendAndRemove
	
	| customerBook |
	
	customerBook := self createABookAndAddAndSuspend: customerToAddSuspendAndRemove.
	customerBook removeCustomerNamed: customerToAddSuspendAndRemove.
	
	^customerBook.! !

!CustomerBookTest methodsFor: 'helpers' stamp: 'Fv 5/19/2021 11:20:32'!
tryToDoThisBlock: blockOfCodeToTry watchOutForThis: errorToWatch ifThatHappensDoThisBlock: blockToDoInCaseOfError

	blockOfCodeToTry
			on: errorToWatch
			do: blockToDoInCaseOfError ! !


!classDefinition: #CustomerBook category: 'CodigoRepetido-Ejercicio'!
Object subclass: #CustomerBook
	instanceVariableNames: 'suspendedCustomers activeCustomers'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'CodigoRepetido-Ejercicio'!

!CustomerBook methodsFor: 'initialization' stamp: 'Fv 5/18/2021 17:36:25'!
initialize

	activeCustomers := OrderedCollection new.
	suspendedCustomers := OrderedCollection new.! !


!CustomerBook methodsFor: 'customer management' stamp: 'Fv 5/18/2021 17:36:25'!
addCustomerNamed: nameOfCustomerToAdd

	nameOfCustomerToAdd isEmpty ifTrue: [ self signalCustomerNameCannotBeEmpty ].
	( self includesCustomerNamed: nameOfCustomerToAdd ) ifTrue: [ self signalCustomerAlreadyExists ].
	
	activeCustomers add: nameOfCustomerToAdd ! !

!CustomerBook methodsFor: 'customer management' stamp: 'Fv 5/18/2021 17:36:25'!
removeCustomerNamed: nameOfCustomerToRemove
 
	activeCustomers remove: nameOfCustomerToRemove
		ifAbsent: [suspendedCustomers remove: nameOfCustomerToRemove 
						ifAbsent: [^NotFound signal]].
! !

!CustomerBook methodsFor: 'customer management' stamp: 'Fv 5/18/2021 17:36:25'!
suspendCustomerNamed: nameOfCustomerToSuspend 
	
	activeCustomers remove: nameOfCustomerToSuspend ifAbsent: [^CantSuspend signal].
	
	suspendedCustomers add: nameOfCustomerToSuspend
! !


!CustomerBook methodsFor: 'accessing' stamp: 'Fv 5/18/2021 17:36:25'!
numberOfActiveCustomers
	
	^activeCustomers size! !

!CustomerBook methodsFor: 'accessing' stamp: 'Fv 5/18/2021 17:37:57'!
numberOfCustomers
	
	^self numberOfActiveCustomers + self numberOfSuspendedCustomers.! !

!CustomerBook methodsFor: 'accessing' stamp: 'Fv 5/18/2021 17:36:16'!
numberOfSuspendedCustomers
	
	^suspendedCustomers size! !


!CustomerBook methodsFor: 'testing' stamp: 'Fv 5/18/2021 17:39:00'!
includesCustomerNamed: nameOfCustomer

	^(activeCustomers includes: nameOfCustomer) or: [ suspendedCustomers includes: nameOfCustomer ]! !

!CustomerBook methodsFor: 'testing' stamp: 'Fv 5/18/2021 17:36:25'!
isEmpty
	
	^activeCustomers isEmpty and: [ suspendedCustomers isEmpty ]! !


!CustomerBook methodsFor: 'signal errors' stamp: 'HernanWilkinson 7/6/2011 17:52'!
signalCustomerAlreadyExists 

	self error: self class customerAlreadyExistsErrorMessage! !

!CustomerBook methodsFor: 'signal errors' stamp: 'HernanWilkinson 7/6/2011 17:51'!
signalCustomerNameCannotBeEmpty 

	self error: self class customerCanNotBeEmptyErrorMessage ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'CustomerBook class' category: 'CodigoRepetido-Ejercicio'!
CustomerBook class
	instanceVariableNames: ''!

!CustomerBook class methodsFor: 'error messages' stamp: 'NR 4/30/2020 09:05:18'!
customerAlreadyExistsErrorMessage

	^'Customer Already Exists'! !

!CustomerBook class methodsFor: 'error messages' stamp: 'NR 4/30/2020 09:05:25'!
customerCanNotBeEmptyErrorMessage

	^'Customer Name Cannot Be Empty'! !
