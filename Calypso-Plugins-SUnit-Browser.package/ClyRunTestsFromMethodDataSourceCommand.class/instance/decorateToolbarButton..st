toolbar decoration
decorateToolbarButton: aBrowserButton

	| testResult |
	testResult := methodDataSource getMetaProperty: ClyTestResultProperty.
	aBrowserButton addMorphFront: testResult resultsIcon asMorph