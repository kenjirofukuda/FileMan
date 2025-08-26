accessing-stream
writeStreamContents: blockWithArg
	| stream |
	stream := self writeStream.
	[ blockWithArg value: stream ]
		ensure: [ stream ifNotNil: [ :s | s close ] ]