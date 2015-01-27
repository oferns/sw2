
var History = window.History;
var State = History.getState();
var Index = History.getCurrentIndex();
var $log = $('#log');

$log.val($log.val() + "History: Index = " + History.getCurrentIndex());
$log.val($log.val() + "\nState: Initial " + State.url);

History.options.debug = true;

History.Adapter.bind(window, 'statechange', function(event) {

    $log.val($log.val() + "\nState: changing: " + State.url);
    $log.val($log.val() + "\nHistory: Current Index = " + Index);
  
    var oldState = State;
    var oldIndex = Index;
    var oldDataIndex = State.data._index === undefined ? 0 : State.data._index;

    State = History.getState();
    Index = History.getCurrentIndex();

    $log.val($log.val() + "\nState: changed: " + State.url);
    $log.val($log.val() + "\nHistory: Current Index = " + Index);

    if ((oldDataIndex + 1) != Index) { // if it wasn't an ajax click
        if (oldIndex < Index) { // back button
            $log.val($log.val() + "\nHistory: BACK BUTTON = " + Index);
            $('#' + oldState.data.sectionId).replaceWith(oldState.data.section);
        } else { // forward button
            $log.val($log.val() + "\nHistory: FORWARD BUTTON = " + Index);
            $('#' + State.data.sectionId).replaceWith(State.data.section);
        }
    }
});

$(function() {

    $.ajaxBegin = function(xhr) {
        $log.val($log.val() + '\nAjax: Begin ' + $(this).attr("data-ajax-method") + ' ' + $(this).attr("href"));

        var section = $(this).parent().closest('section');

        if (section.length == 0) {
            section = $('#pageContainer');
        }

        History.pushState(
             {
                 _index: Index,
                 section: section[0].outerHTML,
                 sectionId: section.attr("id"),
             }, this.title, this.href);


        var loader = $('<div />').addClass('ajax-loader').css({
            height: section.height(),
            width: section.width()
        });

        section.prepend(loader);
    };

    // called just after an ajax call, regardless of result
    $.ajaxComplete = function(xhr, status) {
        $log.val($log.val() + '\nAjax: Complete ' + $(this).attr("data-ajax-method") + ' ' + $(this).attr("href") + ' ' + status);

    };

    // called just after a successful (200) ajax call
    $.ajaxSuccess = function(data, status, xhr) {
        $log.val($log.val() + '\nAjax: Success ' + $(this).attr("data-ajax-method") + ' ' + $(this).attr("href") + ' ' + status);

        $('#' + State.data.sectionId).find('.ajax-loader:first').remove();

    };

    // called just after a failed (400-599) ajax call
    $.ajaxFailure = function(xhr, status, error) {
        $log.val($log.val() + '\nAjax: Failure ' + $(this).attr("data-ajax-method") + ' ' + $(this).attr("href") + ' ' + status + ' ' + error);

    };

});