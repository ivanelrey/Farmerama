/* global object */

function validate(form)
{   
    if(form.pw.value === form.pw1.value) 
    {
        if(form.pw.value === form.un.value) 
        {
            alert("Error: Password must be different from Username!");
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
