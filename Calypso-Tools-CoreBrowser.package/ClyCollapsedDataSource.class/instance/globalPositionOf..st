accessing
globalPositionOf: childDataSourceItem

	| result |
	result := parentItem ifNil: [ 0 ] ifNotNil: [ parentItem globalPosition ].
	expandedItems do: [ :each | 
		(each isAfter: childDataSourceItem position) ifTrue: [
			^result + childDataSourceItem position].
		result := result + each childrenCount].
	
	^result + childDataSourceItem position