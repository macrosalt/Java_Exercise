<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,databaseconnection.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
<title>Auction Fraud</title>
<link href="style.css" rel="stylesheet" media="all" type="text/css" />
</head>

<body>
<div id="wrapper"> 
  <div id="container"> 
    <div id="header"> 
      <div id="logo"><br>
        <br>
        <br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong><font color="#FFFFFF" size="+2" face="Georgia, Times New Roman, Times, serif"> 
        Hospital Management <br>
        </font></strong></div>
    </div>
    <!-- /header -->
    <div id="navbar"> 
      <ul>
        <li><a href="admin_home.jsp">Home</a></li>
        <li><a href="admin_patient.jsp" class="active">Patient</a></li>
        <li><a href="index.html">Logout</a></li>
        <!-- <li><a href="#">Admin</a></li>
        <li><a href="#">Link</a></li>
        <li><a href="#">Link</a></li>
        <li><a href="#">Link</a></li>-->
      </ul>
    </div>
    <!-- /navbar -->
    <div id="main"> 
      <div id="intro"> 
        <!-- <div id="sellerpic">
        </div>-->
        <!-- /jakepic -->
        <div id="text"></a><a href="inpatient_signup.jsp"><font color="#FF0000" size="+1">Insert<strong>
        </strong></font></a></div>
        <!-- /text -->
        <table height="350" align="center" width="700">
          <tr bgcolor="#CC3300"> 
            <td width="610" bgcolor="#FBF7E1" valign="top"> <br> <br> <br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <font color="#FF0000" size="+1" face="Courier New"><strong>All
              Patients</strong></font> <br> <br> <br> <form name="f" action="off_search.jsp" method="post" onsubmit="return valid()">
                <table bgcolor="#FFFFFF" width="700" border="0">
                  <tr bgcolor="#E4E4F1"> 
                    <td align="center"><font color="#110022"><strong>Patient Id</strong></font></td>
                    <td align="center"> <font color="#110022"><strong>Patient
                      Name</strong></font></td>
                    <td align="center"><font color="#110022"><strong>Treatment Name</strong></font></td>
                      <td align="center"><font color="#110022"><strong>Price</strong></font></td>
                    <td align="center"><font color="#110022"><strong>Phone No</strong></font></td>
                    <td align="center"><font color="#110022"><strong>Email Id</strong></font></td>
                    <td align="center"><font color="#110022"><strong>Date</strong></font></td>
                    <td align="center"><font color="#110022"><strong>Status</strong></font></td>
                      <td align="center"><font color="#110022"><strong>Operation</strong></font></td>
                  </tr>
                  <%
			
			
			
			String name=null,cid=null,cname=null,ph=null,email=null,price=null,da=null,sta=null;
ResultSet rs=null;
String tr="unregistered";
try
{
	Connection con = databasecon.getconnection();
	Statement st = con.createStatement();	

    String qry="select * from patient";
		rs =st.executeQuery(qry);
	while(rs.next())
	{
	cid=rs.getString("uid");
	name=rs.getString("name");
	cname=rs.getString("cname");
	ph=rs.getString("mobile");
	email=rs.getString("email");
	price =rs.getString("price");
	da=rs.getString("date");
	sta=rs.getString("authorize");
	if (sta.equalsIgnoreCase(tr)) {
	    sta = "Untreated";
    } else {
	    sta = "Treated";
    }
	
%>
                  <tr bgcolor="#FFFFCC"> 
                    <td align="center"> <strong><font color="#6300C6"> <%=cid%> 
                      </font></strong></td>
                    <td align="center"><strong><font color="#6300C6"> <%=name%> 
                      </font></strong></td>
                    <td align="center"><strong><font color="#6300C6"> <%=cname%>
                      </font></strong></td>
                      <td align="center"><strong><font color="#6300C6"> <%=price%>
                      </font></strong></td>
                    <td align="center"><strong><font color="#6300C6"><%=ph%> </font></strong></td>
                    <td align="center"><strong><font color="#6300C6"> <%=email%> 
                      </font></strong></td>
                    <td align="center"><strong><font color="#6300C6"> <%=da%> 
                      </font></strong></td>
                    <td align="center"><strong><font color="#6300C6"> <%=sta%> 
                      </font></strong></td>
                      <td align="center"><a href="edit_patient.jsp?<%=cid%>"><font color="#FF0000" size="+1">Edit<strong>
                      </strong></font></a><a href="delete_patient.jsp?<%=cid%>"><font color="#FF0000" size="+1">Delete<strong>
                      </strong></font></a></td>
                  </tr>
                  <%	  
}
	   }
	   catch(Exception e1)
	   {
	     out.println(e1.getMessage());
	   }
 %>
                </table>
              </form>
</td>
          </tr>
        </table>
      </div>
      <!-- /intro -->
      <div id="columns-wrapper"> 
        <!-- /form-intro -->
        <!-- /newsletter -->
        <!-- /right -->
        <!-- /left -->
      </div>
      <!-- /columns-wrapper -->
    </div>
    <!-- /main -->
    <div id="footer"> 
      <div id="footer-right">&nbsp;</div>
      <div id="footer-left">&nbsp;</div>
      <br>
      <br>
      <strong><font color="#33CC66">Task 4</font></strong> </div>
    <!-- /footer -->
  </div>
  <!-- /container -->
</div>
<!-- /wrapper -->
</body>
</html>
