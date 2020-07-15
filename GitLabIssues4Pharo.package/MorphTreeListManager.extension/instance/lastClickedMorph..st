*GitLabIssues4Pharo
lastClickedMorph: aNodeMorph

	lastClickedMorph ifNotNil: [ lastClickedMorph complexContents ifNotNil: [ lastClickedMorph complexContents lastClicked: false ] ].
	lastClickedMorph := aNodeMorph.
	aNodeMorph ifNotNil: [ aNodeMorph complexContents ifNotNil: [ aNodeMorph complexContents lastClicked: true ] ].