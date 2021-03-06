initialization
initialize
	super initialize.
	changesWasInitiatedByUser := true.
	self changeProportionalLayout.
	table := FTTableMorph new.
	table allowsDeselection: true.
	table beMultipleSelection.
	table beResizable.
	table dragEnabled: true.
	table dropEnabled: true.
	table onAnnouncement: FTSelectionChanged send: #selectionChanged to: self.
	table addColumn: ClyMainTableColumn default.
	self addMorph: table fullFrame: LayoutFrame identity.
	self setUpDataSource: ClyDataSource empty
