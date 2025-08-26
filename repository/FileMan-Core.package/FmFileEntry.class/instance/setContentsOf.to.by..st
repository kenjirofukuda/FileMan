private
setContentsOf: aStream to: aStringOrBytes by: encoderName
	| str |
	[ str := aStream.
	str reset.
	aStringOrBytes isString
		ifTrue: [ self fileAccessor encode: encoderName on: str ]
		ifFalse: [ str binary ].
	str nextPutAll: aStringOrBytes.
	str truncate: str position.
	self refresh ]
		ensure: [ str ifNotNil: [ :s | s close ] ]