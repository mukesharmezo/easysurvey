
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title> :: EASYSURVEY :: </title>
		<link href="../css/global.css" rel="stylesheet" type="text/css">
    	<link href="../css/base.css" rel="stylesheet" type="text/css">
		<script language="javascript">
		if(window.history.forward(1)!=null)
            {
              window.history.forward(1);
            }
		function numeric()
			{	
				if((window.event.keyCode !=45) & (window.event.keyCode !=43) & (window.event.keyCode >= 48 & window.event.keyCode <= 57) == false)
				{
				 window.event.keyCode = 0;
				 alert("Please enter only digits");
				} 
			}
		function checkAddUser()
			{
				  var un=document.forms[0].loginid.value;
				  var company=document.forms[0].company.value;
				  var companyShortName=document.forms[0].companyShortName.value;
				  var email=document.forms[0].email_id.value;
				  var contact=document.forms[0].contact.value;
				  var upload=document.forms[0].photoflag.value;				  
				  
				  un = un.replace(/^\s*|\s*$/g,"");
				  company = company.replace(/^\s*|\s*$/g,"");
				  companyShortName = companyShortName.replace(/^\s*|\s*$/g,"");
				  email = email.replace(/^\s*|\s*$/g,"");
				  contact = contact.replace(/^\s*|\s*$/g,"");
				  upload = upload.replace(/^\s*|\s*$/g,"");
				  
		          
		          if(un=="")
		          {
		              alert("Please enter Login ID:");
		              document.forms[0].loginid.focus();
		              return false;
		          }
				  if(company=="")
		          {
		        	  alert("Please enter Company Name:");
		              document.forms[0].company.focus();
		              return false;
		          }
		          if(companyShortName=="")
		          {
		        	  alert("Please enter Company Short Name:");
		              document.forms[0].companyShortName.focus();
		              return false;
		          }
		          
		          if(email=="")
		          {
		              alert("Please enter Email ID:");
		              document.forms[0].email_id.focus();
		              return false;
		          }
		          else
			      {
		      		var emailstr=document.forms[0].email_id.value;
		      		var fieldLength = emailstr.length; 
		      		var err01   = "email field can not be blank!"; 
		      		var err02   = "Invalid E-mail ID"; 
		      	 
		      		if ( fieldLength < 1 )
		      		{ 
		      			alert( err01 ); 
		      				document.forms[0].email_id.focus();
		      			return false;
		      		}
		      		else
		      		{ 
		      			if( /^[\w\.-]{1,}\@([\da-zA-Z-]{1,}\.){1,}[\da-zA-Z-]+$/.test( emailstr )) 
		      			{ 
		      				
		      			} 
		      			else
		      			{ 
		      				alert( err02 ); 
		      					document.forms[0].email_id.focus();
		      				return false;
		      			} 
		      		}
		           }
		          
		          if(contact=="")
		          {
		              alert("Please enter Contact Number:");
		              document.forms[0].accessdays.focus();
		              return false;
		          }
		          
		          if(upload=="")
		          {
		              alert("Please Upload Client Logo:");
		              document.forms[0].upload.focus();
		              return false;
		          } 
				  
		          document.addUser.addbtn.value = "Please wait...";					
  		    	  document.addUser.upload.disabled = true;
  		    	  document.addUser.addbtn.disabled = true;
		          document.forms[0].method="post";
		          document.forms[0].action="addUserPro";
		          document.forms[0].submit();
			 
			}			

			function uploadPhoto()
    		{ 
				//alert("kjll...");
    			var filename = document.addUser.fuploadphoto.value;
				//alert("filename..."+filename);
				if((filename.substring(filename.length-4,filename.length)!=".png")
    				&&(filename.substring(filename.length-4,filename.length)!=".PNG"))
    			{
					alert("Please select a file of the format : png");
    				return false;
    			}
				if(filename=="")
    			{
    				alert("Please select a Filename to upload");
    				return false;
    			}
				 else
    			{

    		    	document.addUser.upload.value = "Please wait...";					
    		    	document.addUser.upload.disabled = true;
    		    	document.addUser.addbtn.disabled = true;
    		    	document.addUser.taskToDo.value = "PhotoUpload";
    		    	document.addUser.method = "Post";
    		    	document.addUser.action = "addUserPro";
    		    	document.addUser.submit();
    		 
    		    	return true;
    			}
    		}
		</script> 
	</head> 
	<body onload="fncPopulateJobProfile();">
		<table height="100%" width="100%" align="center" border="0" cellpadding="0" cellspacing="0" bordercolor="#FFFFFF">
			<tr valign="top"><td><%@include file="../headerfooter/header.jsp"%></td></tr>
			
			<tr valign="top">
			<caption><font color="red" size="3"><b></b></font></caption>
			 <tr><td align="center" class="txt-red"><font size="3"><b>
					  					
					     </b></font> </td>
					  </tr>
				<td>
					 <form name="addUser" ENCTYPE="multipart/form-data">
					<input type="hidden" name="taskToDo">
				    		<input type="hidden" name="todo" value="upload">
							<input type="hidden" name="photoflag" value=>
						<table width="70%" border="0" align="center" cellspacing="0" cellpadding="4"  bgcolor="#FFFFFF" class="">
							
							<tr> 
								<td>
									<table width="55%" align="center" border="0" cellspacing="0" cellpadding="4"  bgcolor="#FFFFFF" class="tblborder1">
										<caption class="header">:: Add New Client ::</caption>
										 <table border="0" align="center">
										<tr><td class="txt1">Login ID</td><td><input name="loginid" style="width:200" type="text" size="20" value="" /></td></tr>
										<tr><td class="txt1">Client Name</td><td><input style="width:200" name="company" type="text" size="20" value="" /></td></tr>
										<tr><td class="txt1">Client Short Name</td><td><input style="width:200" name="companyShortName" type="text" size="20" value="" /></td></tr>
									<tr><td class="txt1">Email ID</td><td><input name="email_id" style="width:200" type="text" size="20" value="" /></td></tr>
									<tr><td class="txt1">Contact Number</td><td><input style="width:200" name="contact" type="text" size="20" onkeypress="numeric();" maxlength="11" value="" /></td></tr>
									
																		
									
									<tr>	 
										<td class="txt1" valign="top">
											Upload Logo(PNG)<br>
											(Height 50 & Width 150 px Max)
										</td>
										<td class="txt1" valign="top">		
		                					<input type="file" name="imageFile" size="20">
											<br>
                        						
												
                    					</td>				                  		
									</tr>
									
										 
										</table>
										<tr>  
											<td align="center" class="txtheader" colspan="2"> 
												<input type="button" class="btn" name="addbtn" value=" Add " onclick="checkAddUser()">
												<input class="btn" name="reset" type="reset" value="Reset">
											</td>
										</tr>  
									</table><br><br>
									  
									
									</td> 
								</tr> 
						</table><br>
					</form>
				</td> 
			</tr> 
			<input type="hidden" name="todo" value="upload">
			<tr height="4%" valign="bottom"><td><%@include file="../headerfooter/footer.jsp"%></td></tr>
		</table>
	</body>
</html>

