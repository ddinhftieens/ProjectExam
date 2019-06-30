var x = 10;
var redirect = "template/formlogin";
function redirect_login(){
    if(x>=0){
        document.getElementById("areaTimeout").innerHTML = x;
        x--;
        setTimeout("redirect_login()",1000);
    }
    else{
        window.location.href = redirect;
    }
}
function time(){
    var today = new Date();
    var h = today.getHours();
    var m = today.getMinutes();
    var s = today.getSeconds();
    m = checkTime(m);
    s = checkTime(s);
    document.getElementById("timenow").innerHTML = "Time now : " + h + ":" + m + ":" + s;
    setTimeout("time()",1000);
}
function checkTime(i) {
    if (i < 10) {
        i = "0" + i;
    }
    return i;
}