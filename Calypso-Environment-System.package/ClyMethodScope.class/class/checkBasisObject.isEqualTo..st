testing
checkBasisObject: aCompiledMethod isEqualTo: anotherCompiledMethod
	^aCompiledMethod origin == anotherCompiledMethod origin 
		and: [ aCompiledMethod selector == anotherCompiledMethod selector ]