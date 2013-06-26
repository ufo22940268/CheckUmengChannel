/*jslint unparam: true */
/*global window, $ */
$(function () {
    'use strict';
    var url = '/upload';
    $('#fileupload').fileupload({
        url: url,
        dataType: 'json',
        done: function (e, data) {
            var progressElem = $(".progress:last");
            var resultElem = $(".parse-result:last");
            var fileElem = $(".uploaded-file:last");
            progressElem.removeClass("active");
            resultElem.css("visibility", "visible");
            var fileName = data.files[data.files.length - 1].name;
            if (data.result.state == 0) {
                resultElem.html("文件" + fileName + "的渠道名:" + data.result.channel);
                resultElem.removeClass("alert-fail");
                resultElem.addClass("alert-success");
                progressElem.removeClass("progress-warning");
                progressElem.addClass("progress-success");
            } else {
                resultElem.html("无效文件");
                resultElem.removeClass("alert-success");
                resultElem.addClass("alert-fail");
                progressElem.removeClass("progress-success");
                progressElem.addClass("progress-warning");
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
        $('#parse-results').append('<div class="uploaded-file"></div><div id="progress" class="progress progress-striped active"> <div class="bar"></div> </div> <div id="parse-result" class="alert alert-success parse-result" style="visibility:hidden"> </div>');
    });
});
