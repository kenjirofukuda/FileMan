accessing-stream
readStreamContents: blockWithArg
	| stream conts |
	stream := self readStream.
	[ conts := blockWithArg value: stream ]
		ensure: [ stream ifNotNil: [ :s | s close ] ].
	^ conts