<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">

    <title>Hello, world!</title>
  </head>
  <body>
  <script type="text/javascript">

  function check_pass() {
	  var str = document.getElementById('email').value
	  var textBox = document.getElementById('pwd1');
      var textLength = textBox.value.length;
		console.log(textLength);
	  
		 if ((str.indexOf("albany.edu")>=0) ) {
	        
	    } 
		 //if(//length<8|| !hasAtleastOneUpperCase ||   )
	    else
	    {
	    	alert("invalid email id")
	    	return false
	      
	    }
		 if((document.getElementById('pwd1').value !=
	         document.getElementById('pwd2').value) )  {
		    	alert("password do not match")
		        return false
		    	    
		    }else if((document.getElementById('pwd1').value=='' || document.getElementById('pwd1').value.length<8 || !hasLowerCase(textBox.value) || !hasUpperCase(textBox.value) || !hasDigitCase(textBox.value))){
		    	alert("password length should be morethan 8 and Itshould contain one uppercase and one lowercase")
		    	return false
		    }
		    
		 else{
		    	alert("password match")
		    	return true
		    }
		
	}
  
 
  function hasLowerCase(str) {
	  
	  return (/[a-z]/.test(str));
	}
  function hasUpperCase(str) {
	    return (/[A-Z]/.test(str));
	}
  function hasDigitCase(str) {
	    return (/[0-9]/.test(str));
	}


</script>
    <h1>Sign Up </h1>
    <form action="/register" method="post" onsubmit="return check_pass();">
    
    <div class="form-group">
    
    <label for="name">Name</label>
    <input type="text" class="form-control" name="name" id="name" aria-describedby="emailHelp" placeholder="Enter name" value="${user.name}" required>
    
  </div>
  <div class="form-group">
    
    <label for="email">Email address</label>
    <input type="email" class="form-control" name="email" id="email" aria-describedby="emailHelp" placeholder="Enter email" value="${user.email}" required >
   
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" name="password" id="pwd1" placeholder="Password" value="${user.password}" required>
  </div>
<div class="form-group">
    <label for="exampleInputPassword2">Confirm Password</label>
    <input type="password" class="form-control" name="pwd2" id="pwd2" placeholder="ConfirmPassword" required >
  </div>
  <button type="submit" class="btn btn-primary"  id="submit" >Submit</button>
</form>
    
    

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
  </body>
</html>