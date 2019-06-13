app.ui.listado = (function() {
		
	function init() {
		configBotones();
	}
	
	function configBotones() {
		$('.js-btn-detalle').click(function() {
			$('.big-card').hide();
			var id = $(this).data('id-depto');
			var selectedBigCardQuery = '.big-card[data-id-depto='+id+']';
			var selectedBigCard = $(selectedBigCardQuery);
			selectedBigCard.show();
		});
	}
	
	return {
		init: init
	}
})();	

$(document).ready(function() {
	app.ui.listado.init();
})