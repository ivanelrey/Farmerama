function validate(form)
{
    //variables
    var re = /^\w+$/;
    
    if(!re.test(form.un.value)) 
    {
        alert("Error: Username must contain only letters, numbers and underscores!");
        form.un.focus();
        return false;
    }
    if(form.un.value.length < 6)
    {
        alert("Error: Username must contain at least 6 characters!");
        form.un.focus();
        return false;
    }
    
    if(form.pw.value === form.pw1.value) 
    {
        if(form.pw.value.length < 6) 
        {
            alert("Error: Password must contain at least six characters!");
            form.pw.focus();
            return false;
        }
        if(form.pw.value === form.un.value) 
        {
            alert("Error: Password must be different from Username!");
            form.pw.focus();
            return false;
        }
        re = /[0-9]/;
        if(!re.test(form.pw.value)) 
        {
            alert("Error: Password must contain at least one number (0-9)!");
            form.pw.focus();
            return false;
        }
        re = /[a-z]/;
        if(!re.test(form.pw.value)) 
        {
            alert("Error: Password must contain at least one lowercase letter (a-z)!");
            form.pw.focus();
            return false;
        }
        re = /[A-Z]/;
        if(!re.test(form.pw.value)) 
        {
            alert("Error: Password must contain at least one uppercase letter (A-Z)!");
            form.pw.focus();
            return false;
        }
    } 
    else 
    {
      alert("Error: Please check that you've entered and confirmed your password!");
      form.pw.focus();
      return false;
    }

    alert("You entered a valid password: " + form.pw.value + "\nPlease take note of your password\nfor maximum security.");
    return true;
}



