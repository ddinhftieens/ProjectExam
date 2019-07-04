
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