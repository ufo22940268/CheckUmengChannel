/*jslint unparam: true */
/*global window, $ */
$(function () {
    'use strict';
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

            $.each(data.files, function(index, file) {
                console.log("index:" + index);
            });
        },

        progressall: function (e, data) {
            var progress = parseInt(data.loaded / data.total * 100, 10);
            $('#progress .bar').css(
                'width',
                progress + '%'
            );
        }
    });

    $('#fileupload').click(function() {
        $('#parse-results').append('<div id="progress" class="progress progress-success progress-striped active"> <div class="bar"></div> </div> <div id="parse-result" class="alert alert-success" style="visibility:hidden"> </div>');
    });
});
