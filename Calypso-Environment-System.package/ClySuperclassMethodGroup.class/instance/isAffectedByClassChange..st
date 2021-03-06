system changes
isAffectedByClassChange: aClassAnnouncement
	"Class changes could be bound to instance side of classes but also has affect to class side.
	Here we need to carefully analyze class or instance sides depending on what group is represents"
	| modifiedClass |
	modifiedClass := aClassAnnouncement classAffected.
	superclass isClassSide ifTrue: [ modifiedClass := modifiedClass classSide ].
	
	^(classes includes: modifiedClass) or: [ superclass = modifiedClass ]