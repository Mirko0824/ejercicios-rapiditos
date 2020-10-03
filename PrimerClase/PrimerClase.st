!classDefinition: #AlejandroElEncargado category: 'PrimerClase'!
DenotativeObject subclass: #AlejandroElEncargado
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PrimerClase'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'AlejandroElEncargado class' category: 'PrimerClase'!
AlejandroElEncargado class
	instanceVariableNames: ''!

!AlejandroElEncargado class methodsFor: 'nil' stamp: 'MW 10/2/2020 13:42:09'!
saludoCon: unSaludo
	
	^unSaludo, ' Mirko'! !


!classDefinition: #GuardiaDeSkyrim category: 'PrimerClase'!
DenotativeObject subclass: #GuardiaDeSkyrim
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'PrimerClase'!

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'GuardiaDeSkyrim class' category: 'PrimerClase'!
GuardiaDeSkyrim class
	instanceVariableNames: 'cantidadDeVecesQueHablaronConmigo'!

!GuardiaDeSkyrim class methodsFor: 'as yet unclassified' stamp: 'MW 10/2/2020 21:23:15'!
arrayDeRespuestas

	^#('Hola forastero' 'Que hay de nuevo?' 'Necesitas algo?' 'Creo que hoy hay descuento en la taberna' 'Ya quiero que sea el cambio de turno').! !

!GuardiaDeSkyrim class methodsFor: 'as yet unclassified' stamp: 'MW 10/2/2020 20:41:07'!
contestar
	
	cantidadDeVecesQueHablaronConmigo > 5 ifTrue: [cantidadDeVecesQueHablaronConmigo := 5].
	^self arrayDeRespuestas at: cantidadDeVecesQueHablaronConmigo.! !

!GuardiaDeSkyrim class methodsFor: 'as yet unclassified' stamp: 'MW 10/2/2020 14:23:45'!
conversar
	
	self recordarQueConversaronConmigo.
	^self contestar ! !

!GuardiaDeSkyrim class methodsFor: 'as yet unclassified' stamp: 'MW 10/2/2020 21:37:16'!
initializeCollaboratorsFromFile
	"Auto generated method for loading purposes - Do not modify it"

	cantidadDeVecesQueHablaronConmigo := 0.! !

!GuardiaDeSkyrim class methodsFor: 'as yet unclassified' stamp: 'MW 10/2/2020 14:18:13'!
recordarQueConversaronConmigo
	
	cantidadDeVecesQueHablaronConmigo := cantidadDeVecesQueHablaronConmigo + 1! !

GuardiaDeSkyrim initializeAfterFileIn!