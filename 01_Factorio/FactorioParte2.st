!classDefinition: #Caja category: 'FactorioParte2'!
DenotativeObject subclass: #Caja
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FactorioParte2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Caja class' category: 'FactorioParte2'!
Caja class
	instanceVariableNames: 'contenido'!

!Caja class methodsFor: 'as yet unclassified' stamp: 'Fv 5/9/2021 11:15:26'!
agregar: unaMena

	contenido add: unaMena.! !

!Caja class methodsFor: 'as yet unclassified' stamp: 'Fv 5/9/2021 11:15:29'!
agregarMenas: aCollectionOfMenas

	^contenido addAll: aCollectionOfMenas.! !

!Caja class methodsFor: 'as yet unclassified' stamp: 'Fv 5/9/2021 11:15:32'!
cantidadDeMenas

	^contenido size.! !

!Caja class methodsFor: 'as yet unclassified' stamp: 'Fv 5/9/2021 11:15:35'!
cantidadDeMenasDeCarbon

	^contenido count: [ :menaCarbon | menaCarbon = 'una mena de carbon' ].! !

!Caja class methodsFor: 'as yet unclassified' stamp: 'Fv 5/9/2021 11:15:37'!
cantidadDeMenasDeHierro

	^contenido count: [ :menaHierro | menaHierro = 'una mena de hierro' ].! !

!Caja class methodsFor: 'as yet unclassified' stamp: 'Fv 5/9/2021 11:18:19'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	contenido := ((OrderedCollection new) add: 'una mena de carbon'; yourself).! !

!Caja class methodsFor: 'as yet unclassified' stamp: 'Fv 5/9/2021 11:15:40'!
vaciar

	contenido reset.! !


!classDefinition: #CintaA category: 'FactorioParte2'!
DenotativeObject subclass: #CintaA
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FactorioParte2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'CintaA class' category: 'FactorioParte2'!
CintaA class
	instanceVariableNames: 'contenidoA destino'!

!CintaA class methodsFor: 'as yet unclassified' stamp: 'Fv 5/9/2021 11:15:08'!
agregarMenas: ColeccionDeMenas 

	contenidoA addAll: ColeccionDeMenas.! !

!CintaA class methodsFor: 'as yet unclassified' stamp: 'Fv 5/9/2021 11:15:11'!
destino: unContenedor 

	destino := unContenedor.! !

!CintaA class methodsFor: 'as yet unclassified' stamp: 'Fv 5/9/2021 11:15:15'!
estaVacia

	(contenidoA size = 0) ifTrue: [^True] ifFalse: [^False].! !

!CintaA class methodsFor: 'as yet unclassified' stamp: 'Fv 5/9/2021 11:18:19'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	contenidoA := ((OrderedCollection new)).
	destino := Caja.! !

!CintaA class methodsFor: 'as yet unclassified' stamp: 'Fv 5/9/2021 11:15:18'!
transportar

	destino agregarMenas: contenidoA.
	self vaciar.
	! !

!CintaA class methodsFor: 'as yet unclassified' stamp: 'Fv 5/9/2021 11:15:21'!
vaciar

	contenidoA reset.! !


!classDefinition: #CintaB category: 'FactorioParte2'!
DenotativeObject subclass: #CintaB
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FactorioParte2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'CintaB class' category: 'FactorioParte2'!
CintaB class
	instanceVariableNames: 'contenidoB destino'!

!CintaB class methodsFor: 'as yet unclassified' stamp: 'Fv 5/9/2021 11:14:50'!
agregarMenas: ColeccionDeMenas 

	^contenidoB addAll: ColeccionDeMenas.! !

!CintaB class methodsFor: 'as yet unclassified' stamp: 'Fv 5/9/2021 11:14:54'!
destino: unContenedor 

	destino := unContenedor.! !

!CintaB class methodsFor: 'as yet unclassified' stamp: 'Fv 5/9/2021 11:14:57'!
estaVacia

	(contenidoB size = 0) ifTrue: [^True] ifFalse: [^False].! !

!CintaB class methodsFor: 'as yet unclassified' stamp: 'Fv 5/9/2021 11:18:19'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	contenidoB := ((OrderedCollection new)).
	destino := CintaA.! !

!CintaB class methodsFor: 'as yet unclassified' stamp: 'Fv 5/9/2021 11:15:00'!
transportar

	destino agregarMenas: contenidoB.
	self vaciar.
	! !

!CintaB class methodsFor: 'as yet unclassified' stamp: 'Fv 5/9/2021 11:15:03'!
vaciar

	contenidoB reset.! !


!classDefinition: #ExtractorDeCarbon category: 'FactorioParte2'!
DenotativeObject subclass: #ExtractorDeCarbon
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FactorioParte2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'ExtractorDeCarbon class' category: 'FactorioParte2'!
ExtractorDeCarbon class
	instanceVariableNames: 'energiaActual destino'!

!ExtractorDeCarbon class methodsFor: 'as yet unclassified' stamp: 'SF 4/15/2021 21:23:04'!
agregarEnergia: energiaExtra

	energiaActual := energiaActual +	energiaExtra.
	^energiaExtra.! !

!ExtractorDeCarbon class methodsFor: 'as yet unclassified' stamp: 'Fv 5/9/2021 11:13:11'!
conjuntoDeMenasDeCarbonCantidad: cantidadDeMenas

	^ Array new: cantidadDeMenas withAll: 'una mena de carbon'! !

!ExtractorDeCarbon class methodsFor: 'as yet unclassified' stamp: 'Fv 5/9/2021 11:13:18'!
costoDeExtraccionPorMena

	^5 * joule.! !

!ExtractorDeCarbon class methodsFor: 'as yet unclassified' stamp: 'Fv 5/9/2021 11:13:57'!
destino: aContenedor 

	destino := aContenedor.! !

!ExtractorDeCarbon class methodsFor: 'as yet unclassified' stamp: 'Fv 5/9/2021 11:13:54'!
energiaActual

	^energiaActual.
! !

!ExtractorDeCarbon class methodsFor: 'as yet unclassified' stamp: 'Fv 5/9/2021 11:10:21'!
energiaParaExtraerTodasLasMenasPosibles

	^self menasAExtraerSegunEnergiaActual * self costoDeExtraccionPorMena.! !

!ExtractorDeCarbon class methodsFor: 'as yet unclassified' stamp: 'Fv 5/9/2021 11:10:16'!
extraer

	| cantidadDeMenas energiaConsumida |
	cantidadDeMenas := self menasAExtraerSegunEnergiaActual.
	energiaConsumida := self energiaParaExtraerTodasLasMenasPosibles.
	self sacarEnergia: energiaConsumida.
	^destino agregarMenas: (self conjuntoDeMenasDeCarbonCantidad: cantidadDeMenas).! !

!ExtractorDeCarbon class methodsFor: 'as yet unclassified' stamp: 'Fv 5/9/2021 11:18:19'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	energiaActual := (SimpleMeasure basicNew instVarAt: 1 put: 0; instVarAt: 2 put: (BaseUnit basicNew instVarAt: 1 put: 'joule'; instVarAt: 2 put: 'joules'; instVarAt: 3 put: 'j'; yourself); yourself).
	destino := CintaA.! !

!ExtractorDeCarbon class methodsFor: 'as yet unclassified' stamp: 'Fv 5/9/2021 11:10:12'!
menasAExtraerSegunEnergiaActual

	^energiaActual // self costoDeExtraccionPorMena.! !

!ExtractorDeCarbon class methodsFor: 'as yet unclassified' stamp: 'Fv 5/3/2021 20:27:50'!
nuevasMenasExtraidas: cantidadDeMenas

	^ Array new: cantidadDeMenas withAll: 'una mena de carbón'! !

!ExtractorDeCarbon class methodsFor: 'as yet unclassified' stamp: 'Fv 5/9/2021 11:09:59'!
ponerEnCeroLaEnergia

	energiaActual := 0 * joule.! !

!ExtractorDeCarbon class methodsFor: 'as yet unclassified' stamp: 'Fv 4/16/2021 11:26:54'!
quitarEnergia: energiaARestar

	energiaActual := energiaActual - energiaARestar.
	^energiaARestar! !

!ExtractorDeCarbon class methodsFor: 'as yet unclassified' stamp: 'Fv 5/9/2021 11:09:54'!
sacarEnergia: energiaASacar

	energiaActual := energiaActual - energiaASacar! !


!classDefinition: #ExtractorDeHierro category: 'FactorioParte2'!
DenotativeObject subclass: #ExtractorDeHierro
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FactorioParte2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'ExtractorDeHierro class' category: 'FactorioParte2'!
ExtractorDeHierro class
	instanceVariableNames: 'energiaActual destino'!

!ExtractorDeHierro class methodsFor: 'as yet unclassified' stamp: 'Fv 5/7/2021 19:04:53'!
agregarEnergia: energiaExtra

	energiaActual := energiaActual +	energiaExtra.
	^energiaExtra.! !

!ExtractorDeHierro class methodsFor: 'as yet unclassified' stamp: 'Fv 5/7/2021 19:05:20'!
conjuntoDeMenasDeHierroCantidad: cantidadDeMenas

	^ Array new: cantidadDeMenas withAll: 'una mena de hierro'! !

!ExtractorDeHierro class methodsFor: 'as yet unclassified' stamp: 'Fv 5/9/2021 11:14:09'!
costoDeExtraccionPorMena

	^5 * joule.! !

!ExtractorDeHierro class methodsFor: 'as yet unclassified' stamp: 'Fv 5/9/2021 11:14:14'!
destino: aContenedor 

	destino := aContenedor.! !

!ExtractorDeHierro class methodsFor: 'as yet unclassified' stamp: 'Fv 5/7/2021 19:04:54'!
energiaActual

	^energiaActual.
! !

!ExtractorDeHierro class methodsFor: 'as yet unclassified' stamp: 'Fv 5/9/2021 11:14:18'!
energiaParaExtraerTodasLasMenasPosibles

	^self menasAExtraerSegunEnergiaActual * self costoDeExtraccionPorMena.! !

!ExtractorDeHierro class methodsFor: 'as yet unclassified' stamp: 'Fv 5/9/2021 11:14:22'!
extraer

	| cantidadDeMenas energiaConsumida |
	cantidadDeMenas := self menasAExtraerSegunEnergiaActual.
	energiaConsumida := self energiaParaExtraerTodasLasMenasPosibles.
	self sacarEnergia: energiaConsumida.
	^destino agregarMenas: (self conjuntoDeMenasDeHierroCantidad: cantidadDeMenas).! !

!ExtractorDeHierro class methodsFor: 'as yet unclassified' stamp: 'Fv 5/9/2021 11:18:19'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	energiaActual := (SimpleMeasure basicNew instVarAt: 1 put: 0; instVarAt: 2 put: (BaseUnit basicNew instVarAt: 1 put: 'joule'; instVarAt: 2 put: 'joules'; instVarAt: 3 put: 'j'; yourself); yourself).
	destino := CintaB.! !

!ExtractorDeHierro class methodsFor: 'as yet unclassified' stamp: 'Fv 5/9/2021 11:14:25'!
menasAExtraerSegunEnergiaActual

	^energiaActual // self costoDeExtraccionPorMena.! !

!ExtractorDeHierro class methodsFor: 'as yet unclassified' stamp: 'Fv 5/7/2021 19:04:54'!
nuevasMenasExtraidas: cantidadDeMenas

	^ Array new: cantidadDeMenas withAll: 'una mena de carbón'! !

!ExtractorDeHierro class methodsFor: 'as yet unclassified' stamp: 'Fv 5/9/2021 11:14:30'!
ponerEnCeroLaEnergia

	energiaActual := 0 * joule.! !

!ExtractorDeHierro class methodsFor: 'as yet unclassified' stamp: 'Fv 5/7/2021 19:04:54'!
quitarEnergia: energiaARestar

	energiaActual := energiaActual - energiaARestar.
	^energiaARestar! !

!ExtractorDeHierro class methodsFor: 'as yet unclassified' stamp: 'Fv 5/9/2021 11:14:36'!
sacarEnergia: energiaASacar

	energiaActual := energiaActual - energiaASacar! !


!classDefinition: #PruebasDeExtractorDeCarbon category: 'FactorioParte2'!
DenotativeObject subclass: #PruebasDeExtractorDeCarbon
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FactorioParte2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'PruebasDeExtractorDeCarbon class' category: 'FactorioParte2'!
PruebasDeExtractorDeCarbon class
	instanceVariableNames: ''!

!PruebasDeExtractorDeCarbon class methodsFor: 'as yet unclassified' stamp: 'SF 5/2/2021 19:37:39'!
setUp
	ExtractorDeCarbon destino: Caja.
	Caja vaciar.! !

!PruebasDeExtractorDeCarbon class methodsFor: 'as yet unclassified' stamp: 'SF 4/20/2021 18:41:43'!
test01UnExtractorSinEnergiaNoExtraeMenas
	"Cuando no cargue energia en el extractor, no saco menas"
	ExtractorDeCarbon ponerEnCeroLaEnergia.
	Assert isTrue: ExtractorDeCarbon extraer isEmpty.
! !

!PruebasDeExtractorDeCarbon class methodsFor: 'as yet unclassified' stamp: 'SF 4/20/2021 18:46:54'!
test02UnExtractorConInsuficienteEnergiaNoExtraeMenas
	ExtractorDeCarbon ponerEnCeroLaEnergia.
	ExtractorDeCarbon agregarEnergia: 1 * joule.
	Assert isTrue: ExtractorDeCarbon extraer isEmpty.
! !

!PruebasDeExtractorDeCarbon class methodsFor: 'as yet unclassified' stamp: 'SF 4/20/2021 18:47:56'!
test03UnExtractorConSuficienteEnergiaExtrae1Mena
	ExtractorDeCarbon ponerEnCeroLaEnergia.
	ExtractorDeCarbon agregarEnergia: 5 * joule.
	Assert that: ExtractorDeCarbon extraer size isEqualTo: 1.
! !

!PruebasDeExtractorDeCarbon class methodsFor: 'as yet unclassified' stamp: 'SF 4/20/2021 18:49:57'!
test04UnExtractorConservaLaEnergiaNoUtilizada
	ExtractorDeCarbon ponerEnCeroLaEnergia.
	ExtractorDeCarbon agregarEnergia: 7 * joule.
	Assert that: ExtractorDeCarbon extraer size isEqualTo: 1.
	Assert that: ExtractorDeCarbon energiaActual isEqualTo: 2 * joule.
! !

!PruebasDeExtractorDeCarbon class methodsFor: 'as yet unclassified' stamp: 'SF 4/20/2021 18:50:53'!
test05UnExtractorPuedeExtraerMultiplesMenasConMuchaEnergia
	ExtractorDeCarbon ponerEnCeroLaEnergia.
	ExtractorDeCarbon agregarEnergia: 50 * joule.
	Assert that: ExtractorDeCarbon extraer size isEqualTo: 10.
	Assert that: ExtractorDeCarbon energiaActual isEqualTo: 0 * joule.
! !


!classDefinition: #PruebasDeFactorio category: 'FactorioParte2'!
DenotativeObject subclass: #PruebasDeFactorio
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'FactorioParte2'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'PruebasDeFactorio class' category: 'FactorioParte2'!
PruebasDeFactorio class
	instanceVariableNames: ''!

!PruebasDeFactorio class methodsFor: 'as yet unclassified' stamp: 'SF 5/2/2021 19:43:17'!
testEscenarioExtractorCaja
	ExtractorDeCarbon ponerEnCeroLaEnergia.
	ExtractorDeCarbon agregarEnergia: 5 * joule.
	ExtractorDeCarbon destino: Caja.
	Caja vaciar.
	ExtractorDeCarbon extraer.
	Assert that: Caja cantidadDeMenas isEqualTo: 1.
	Assert that: Caja cantidadDeMenasDeCarbon isEqualTo: 1.! !

!PruebasDeFactorio class methodsFor: 'as yet unclassified' stamp: 'Fv 5/7/2021 19:54:01'!
testEscenarioExtractorCintaCaja

	ExtractorDeCarbon ponerEnCeroLaEnergia.
	ExtractorDeCarbon agregarEnergia: 5 * joule.
	
	ExtractorDeCarbon destino: CintaA.
	CintaA vaciar.
	CintaA destino: Caja.
	Caja vaciar.
	
	ExtractorDeCarbon extraer.
	CintaA transportar.
	
	Assert that: CintaA estaVacia isEqualTo: True.
	Assert that: Caja cantidadDeMenas isEqualTo: 1.
	Assert that: Caja cantidadDeMenasDeCarbon isEqualTo: 1.! !

!PruebasDeFactorio class methodsFor: 'as yet unclassified' stamp: 'Fv 5/7/2021 20:22:52'!
testEscenarioExtractorExtractorCintaACintaBCaja
	
	ExtractorDeCarbon ponerEnCeroLaEnergia.
	ExtractorDeCarbon agregarEnergia: 5 * joule.
	ExtractorDeCarbon destino: CintaA.
	CintaA vaciar.
	
	ExtractorDeHierro ponerEnCeroLaEnergia.
	ExtractorDeHierro agregarEnergia: 5 * joule.
	ExtractorDeHierro destino: CintaB.
	CintaB vaciar.
	
	CintaB destino: CintaA.
	CintaA destino: Caja.
	Caja vaciar.
	
	ExtractorDeCarbon extraer.
	ExtractorDeHierro extraer.
	
	CintaA transportar.
	Assert that: CintaA estaVacia isEqualTo: True.
	Assert that: Caja cantidadDeMenas isEqualTo: 1.
	Assert that: Caja cantidadDeMenasDeCarbon isEqualTo: 1.
	Assert that: Caja cantidadDeMenasDeHierro isEqualTo: 0.
	
	CintaB transportar.
	
	Assert that: CintaB estaVacia isEqualTo: True.
	Assert that: CintaA estaVacia isEqualTo: False.
	Assert that: Caja cantidadDeMenas isEqualTo: 1.
	Assert that: Caja cantidadDeMenasDeCarbon isEqualTo: 1.
	Assert that: Caja cantidadDeMenasDeHierro isEqualTo: 0.
	
	CintaA transportar.
	
	Assert that: CintaA estaVacia isEqualTo: True.
	Assert that: CintaB estaVacia isEqualTo: True.
	Assert that: Caja cantidadDeMenas isEqualTo: 2.
	Assert that: Caja cantidadDeMenasDeCarbon isEqualTo: 1.
	Assert that: Caja cantidadDeMenasDeHierro isEqualTo: 1.
	! !

Caja initializeAfterFileIn!
CintaA initializeAfterFileIn!
CintaB initializeAfterFileIn!
ExtractorDeCarbon initializeAfterFileIn!
ExtractorDeHierro initializeAfterFileIn!