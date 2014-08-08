function log(msg) {
    var xhr = new XMLHttpRequest();
    xhr.open('GET', "http://debuglogger/" + encodeURIComponent(msg));
    xhr.send(null);
}

function sendMessage(){

    log("FROM WEB: This could be any String");

}