instance creation
of: aContext

	^(self definitionItem: (ClyEnvironmentItem named: aContext selector with: aContext method))
		receiverItem: (ClyEnvironmentItem named: aContext receiver class name with: aContext receiver);
		closureItem: (aContext closure ifNotNil: [:c | ClyEnvironmentItem named: c printString with: c]) 