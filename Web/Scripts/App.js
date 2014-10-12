//(function(window, undefined) {
//    // Define variables
//    var history = window.History;
//    var state = history.getState();

//    // Bind statechange event
//    history.Adapter.bind(window, 'statechange', function() {
//        state = history.getState();
//        if (state.url === '') {
//            return;
//        }
//        $.navigateToURL(state.url);
//    });
//})(window);

(function($) {
    $.navigateToURL = function(url) {
        $.ajax({
            type: "GET",
            url: url,
            dataType: "html",

            success: function(data, status, xhr) {

            },

            error: function(xhr, status, error) {
                alert("Error loading Page.");
            }
        });
    }


    // called just before any ajax call
    $.ajaxBegin = function() {
            var section = $(this).parent().closest('section');

            var url = $(this).data('href');
            var title = $(this).data('title');

            Modernizr.history.pushState(section, title, url);

            var width = section.width();
            var height = section.height();

            $(section)
                .prepend('<div />')
                .first()
                .addClass('ajax-loader')
                .css({
                    height: height,
                    width: width
                });
        },

        // called just after an ajax call, regardless of result
        $.ajaxComplete = function() {

        },

        // called just after a successful (200) ajax call
        $.ajaxSuccess = function() {

        },

        // called just after a failed (400-599) ajax call
        $.ajaxFailure = function() {

        }
})(jQuery);


