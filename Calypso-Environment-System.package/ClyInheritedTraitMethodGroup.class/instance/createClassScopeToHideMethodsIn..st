operations
createClassScopeToHideMethodsIn: currentClassScope
	
	^currentClassScope withoutBasisObjects: self inheritedTraits