accessing-stream
appendStreamContents: blockWithArg
	| stream |
	stream := self appendStream.
	[ blockWithArg value: stream ]
		ensure: [ stream ifNotNil: [ :s | s close ] ]