var x = 5;
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
    var day = today.getDay() + 1;
    var date = today.getDate();
    var month = today.getMonth() + 1;
    var year = today.getFullYear();
    var hours = today.getHours();
    var minutes = today.getMinutes();
    var seconds = today.getSeconds();
    minutes = checkTime(minutes);
    seconds = checkTime(seconds);
    month = checkTime(month);
    date = checkTime(date);
    document.getElementById("timenow").innerHTML = hours + ":" + minutes + ":" + seconds + " " + " Thứ "+ day +" "+ date + "/"+ month + "/" + year;
    setTimeout("time()",1000);
}
function checkTime(i) {
    if (i < 10) {
        i = "0" + i;
    }
    return i;
}