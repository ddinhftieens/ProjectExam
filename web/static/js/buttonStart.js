var k;
var hour;
var minutes;
var seconds;
var redirect = "https://google.com";

function setOption(k){
    var x = document.getElementById("setvalueoption");
    for(var i = 1;i<=k;i++){
        var option = document.createElement("option");
        option.text = i;
        x.add(option);
    }
}
function timelimit(){
    if(hour!=0 || minutes !=0 || seconds !=0){
        document.getElementById("areatime").innerHTML = "Thời gian làm bài: "+ hour+":"+minutes+":"+seconds;
        if(seconds==0&&minutes==0){
            seconds = 59;
            minutes = 59;
            if(hour!=0) hour--;
        }
        else{
            if(seconds==0){
                seconds = 59;
                minutes--;
            }
            else{
                seconds--;
            }
        }
        k = setTimeout("timelimit()", 1000);
    }else{
        window.location.href = redirect;
    }
}

function load() {
    var subject = document.getElementById("subjectexam").textContent;
    if(subject == "Toán"){
        hour = 1;
        minutes = 30;
        seconds = 0;
        setOption(50);
        timelimit();
    }
    else {
        hour = 0;
        minutes = 50;
        seconds = 0;
        setOption(40);
        timelimit();
    }
}