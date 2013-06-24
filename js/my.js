/*jslint unparam: true */
/*global window, $ */
$(function () {
    'use strict';
    // Change this to the location of your server-side upload handler:
    //var url = (window.location.hostname === 'blueimp.github.io' ||
    //            window.location.hostname === 'blueimp.github.io') ?
    //            '//jquery-file-upload.appspot.com/' : 'server/php/';
    var url = '/upload';
    $('#fileupload').fileupload({
        url: url,
        dataType: 'json',
        done: function (e, data) {
            $("#progress").removeClass("active");
            $("#parse-result").css("visibility", "visible");
            if (data.result.state == 0) {
                $("#parse-result").html("渠道名:" + data.result.channel);
                $("#parse-result").removeClass("alert-fail");
                $("#parse-result").addClass("alert-success");
            } else {
                $("#parse-result").html("无效文件");
                $("#parse-result").removeClass("alert-success");
                $("#parse-result").addClass("alert-fail");
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
