specs
defaultSpec
	" here we define value about windows, widget e.g "
	
	^ SpecLayout composed
newRow: [ :row |
row add: #screen]
origin: 0 @ 0 corner: 1 @ 0.7;
newRow: [ :row | row add: #screen ]
origin: 0 @ 0.7 corner: 1 @ 1;

yourself