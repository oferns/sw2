
var History = window.History;
var State = History.getState();
var $log = $('#log');

History.options.debug = true;

History.Adapter.bind(window, 'statechange', function(event) {
    var oldState = State;
    State = History.getState();
    var newState = State;
    if ((newState.data._index + 1) != History.getCurrentIndex()) { // if it wasn't an ajax click
        if (oldState.data._index > newState.data._index) { // back button
            $('#' + oldState.data.newsectionId).replaceWith(oldState.data.oldsection);
        } else { // forward button
            $('#' + newState.data.oldsectionId).replaceWith(newState.data.newsection);
        }
    }
});

$(function() {

    $.ajaxBegin = function(xhr) {
        var section = $(this).parent().closest('section');

        if (State.data.oldsection === undefined) {
            History.replaceState(
                {
                    _index: History.getCurrentIndex(),
                    newsection: section[0].outerHTML,
                    newsectionId: section.attr("id"),
                    oldsection: section[0].outerHTML,
                    oldsectionId: section.attr("id")
                }, this.title, this.url);
        }

        var loader = $('<div />').addClass('ajax-loader').css({
            height: section.height(),
            width: section.width()
        });

        section.prepend(loader);
    };

    // called just after an ajax call, regardless of result
    $.ajaxComplete = function(xhr, status) {

    };

    // called just after a successful (200) ajax call
    $.ajaxSuccess = function(data, status, xhr) {
        // if this was a GET request then we are interested
        if ($(this).attr("data-ajax-method") === 'GET') {

            var section = $(this).parent().closest('section');
            var newsectionId = $('<div />').append(data).find('section:first').attr("id");

            section.find('.ajax-loader:first').remove();

            var url = $(this).attr('href');
            var title = $(this).attr('title');

            State = History.getState();
            History.pushState(
            {
                _index: History.getCurrentIndex(),
                oldsection: section[0].outerHTML,
                oldsectionId : section.attr("id"),
                newsection: data,
                newsectionId: newsectionId
            }, title, url);
        }
    };

    // called just after a failed (400-599) ajax call
    $.ajaxFailure = function(xhr, status, error) {

    };

});