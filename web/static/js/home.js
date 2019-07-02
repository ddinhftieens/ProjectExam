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
function load(){
    var subject = document.getElementById("subject").value;
    if(subject == "Toán"){
        hour = 1;
        minutes = 30;
        seconds = 0;
        setOption(50);
    }
    else{
        hour = 0;
        minutes = 50;
        seconds = 0;
        setOption(40);
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
function finish(){
    clearTimeout(k);
}
$(document).ready(function(){
    $("#start").click(function(){
        $("#div_end").show();
        $("#div_start").hide();
        document.getElementById("class_").innerHTML = document.getElementById("class").value;
        document.getElementById("subject_").innerHTML = document.getElementById("subject").value;
        $("#class").hide();
        $("#subject").hide();
        $("#class_").show();
        $("#subject_").show();
        $("#showtext").show();
        // $("#showcontext").hide();
        // $("#showcontroller").hide();
    });
});
$(document).ready(function(){
    $("#subject").click(function(){
        var x = document.getElementById("class").value;
        if(x<12&&x>=2){
            alert("Xin lỗi! Lớp bạn chọn hiện tại chưa có dữ liệu. Xin vui lòng quay lại sau.");
        }
    });
});
function myselect(){
    var x = document.getElementById("class").value;
    document.getElementById("subject").value= document.getElementById("selectsubject").value;
    if(x == "1"){
        $("#physical").prop("disabled",true);
        $("#chemistry").prop("disabled",true);
        $("#biological").prop("disabled",true);
        $("#history").prop("disabled",true);
        $("#geography").prop("disabled",true);
        $("#english").prop("disabled",true);
    }
    else{
        $("#physical").prop("disabled",false);
        $("#chemistry").prop("disabled",false);
        $("#biological").prop("disabled",false);
        $("#history").prop("disabled",false);
        $("#geography").prop("disabled",false);
        $("#english").prop("disabled",false);
    }
    mysubject();
}
function mysubject(){
    var x = document.getElementById("subject").value;
    var y = document.getElementById("class").value;
    if( x != "Chọn môn" && y != "Chọn lớp"){
        $("#start").prop("disabled",false);
    }
    else{
        $("#start").prop("disabled",true);
    }
}