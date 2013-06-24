/*jslint unparam: true */
/*global window, $ */
$(function () {
    'use strict';
    // Change this to the location of your server-side upload handler:
    //var url = (window.location.hostname === 'blueimp.github.io' ||
    //            window.location.hostname === 'blueimp.github.io') ?
    //            '//jquery-file-upload.appspot.com/' : 'server/php/';
    var url = 'http://127.0.0.1:8885/upload';
    $('#fileupload').fileupload({
        url: url,
        dataType: 'json',
        done: function (e, data) {
            $("#progress").removeClass("active");
            if (data.result.status == 0) {
                $("#channel_name").html(data.result.channel);
                $("#channel").css("visibility", "visible");
                $("#error").css("visibility", "hidden");
            } else {
                $("#channel").css("visibility", "hidden");
                $("#error").css("visibility", "visible");
            }
        },

        progressall: function (e, data) {
            var progress = parseInt(data.loaded / data.total * 100, 10);
            $('#progress .bar').css(
                'width',
                progress + '%'
            );
        }
    });
});
