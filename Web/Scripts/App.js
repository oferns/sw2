
var History = window.History;
var State = History.getState();
var $log = $('#log');

History.log('initial:', State.data, State.title, State.url);

History.Adapter.bind(window, 'statechange', function () {
    State = History.getState();
    if (State.data.xhr === undefined) {
        History.log('statechange:', 'back to start', State.title, State.url);
        return;
    }
    History.log('statechange:', State.data.xhr.state, State.title, State.url);
});

$(function () {
  
    $.ajaxBegin = function(xhr) {
        var section = $(this).parent().closest('section');

        var url = this.href;
        var title = this.title;

        var method = $(this).attr("data-ajax-method");

        if (method === 'GET') {
            History.log('pushing:', section[0].outerHTML, title, url);
            History.pushState({ section: section, xhr: xhr.state }, title, url);
        }

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
    };

        // called just after an ajax call, regardless of result
    $.ajaxComplete = function() {

    };

        // called just after a successful (200) ajax call
    $.ajaxSuccess = function() {

    };

        // called just after a failed (400-599) ajax call
    $.ajaxFailure = function() {

    };

});