tests
testMeaningfullSuperclassesOfClassWhichInheritsObjectSubclass

	| actual |
	group classes: { ClySubclassN1OfClass1FromP1 }.
	
	actual := group meaningfullInheritedClasses asArray.
	self assert: actual equals: { ClyClass1FromP1 }