function validate()
{
    //variables
    var x = document.forms["form1"]["un"].value;
    var y = document.forms["form1"]["pw"].value;
    var splitX = x.split('');
    
    //conditions
    if(splitX[0] >= '0' && splitX[0] <= '9')
    {
        //First character cannot be number. Please try again!
        alert("Invalid input.");
        document.forms["form1"]["un"].value = "";
        document.forms["form1"]["pw"].value = "";
        return false;
    }
    else if(x.length <= 6 && x.length => 14)
    {
        //Username must be between 6 to 14 characters
        alert("Invalid input.");
        document.forms["form1"]["un"].value = "";
        document.forms["form1"]["pw"].value = "";
        return false;
    }
    else if(y.length <= 6 && y.length => 14)
    {
        //Password must be between 6 to 14 characters
        alert("Invalid input.");
        document.forms["form1"]["un"].value = "";
        document.forms["form1"]["pw"].value = "";
        return false;
    }
    else if(special(x) === true)
    { 
        //Username must not contain special characters
        alert("Input invalid");
        document.forms["form1"]["un"].value = "";
        document.forms["form1"]["pw"].value = "";
        return false;
    }
    else if(isUpperCase(y) === true)
    {
        //Password must contain at least on LOWERCASE character
        alert("Invalid input.");
        document.forms["form1"]["un"].value = "";
        document.forms["form1"]["pw"].value = "";
        return false;
    }
    else if(isLowerCase(y) === true)
    {
        //Password must contain at least on UPPERCASE character
        alert("Invalid input.");
        document.forms["form1"]["un"].value = "";
        document.forms["form1"]["pw"].value = "";
        return false;
    }
    else
    {
        alert("Success!");
        return true;
    }
    
}
function isUpperCase(str)
{
    return str === str.toUpperCase();
}
function isLowerCase(str)
{
    return str === str.toLowerCase();
}
function special(str)
{
    var iChars = "~`!#$%^&*+=-[]\\\';,/{}|\":<>?";

    for (var i = 0; i < str.length; i++) {
       if (iChars.indexOf(str.charAt(i)) !== -1) {
           alert ("File name has special characters ~`!#$%^&*+=-[]\\\';,/{}|\":<>? \nThese are not allowed\n");
           return false;
       }
    }
    return true;
}


