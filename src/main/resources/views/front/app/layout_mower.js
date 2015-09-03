var Layout = (function($) {

	// public functions
	return {
		// main function
		init : function() {
			this.initMainMenu();
		},
		initMainMenu : function() {
			$("#frontMainMenu").find('a[mcode]').on("click", function(event) {
				var mcode = $(this).attr('mcode');
				if (mcode) {
					Cookie.createCookie('front-mcode', mcode, 1);
				}
			});

			var mcode = Cookie.readCookie('front-mcode');
			if (mcode) {
				$("#frontMainMenu").find('a[mcode=' + mcode + ']').addClass('hover').parent().addClass('active')
			}
		}
	};
}(jQuery));

$(document).ready(function() {
	Layout.init();
});