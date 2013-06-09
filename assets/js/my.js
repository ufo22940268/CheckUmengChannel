function parseChannel() {
    $.get("parse", function(data) {
        console.log("channel name:" + data);
    });
}
