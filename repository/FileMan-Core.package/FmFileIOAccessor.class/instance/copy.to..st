actions
copy: fromFileFullName to: toFileFullName
	| readStr writeStr |
	[ readStr := (self readOnlyFileNamed: fromFileFullName) binary.
	writeStr := (self forceNewFileNamed: toFileFullName) binary.
	self copyFile: readStr toFile: writeStr ]
		ensure: [ readStr ifNotNil: [ :r | r close ].
			writeStr ifNotNil: [ :w | w close ] ]