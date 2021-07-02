initialization
initializePresenter
|estimate spent|
	estimate := 'Agregame el estimate recuperado de gitlab'.
	spent := 'agregame el spent recuperado de gitlab'.
	labelEstimated label: estimate. 
	labelSpent label: spent.

	"Completar con la accion del /Spend"
	buttonAddSpend action: [  ].