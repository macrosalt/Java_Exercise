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
        </font></strong></div></font></strong></div>
  </div>
  <!-- /header -->
  <div id="navbar">
    <ul>
<%--      <li><a href="admin_home.jsp">Home</a></li>--%>
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
      <div id="text"> </div>
      <!-- /text -->
      <table height="350" align="center" width="700">
        <tr bgcolor="#CC3300">
          <td width="610" bgcolor="#FBF7E1" valign="top">
            <br><br><br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <div style="text-align: center;"><font color="#FF0000" size="+1" face="Courier New"><strong>Unpaid Bill</strong></font></div> <br><br><br>
            <%--                        <form name="f" action="off_search.jsp" method="post" onsubmit="return valid()">--%>
            <table bgcolor="#FFFFFF" width="700" border="0">

              <tr bgcolor="#E4E4F1">
                <td align="center"><strong>Inpatient ID</strong></td>
                <td align="center"> <font color="#110022"><strong>Treatment name</strong></font></td>
                <td align="center"><font color="#110022"><strong>Price</strong></font></td>
                <td align="center"><font color="#110022"><strong>Date</strong></font></td>
              </tr>
              <%
                String pname=(String)session.getAttribute("patient");
                String mobile=(String)session.getAttribute("mobile");


                int cost = 0;
                ResultSet rs=null;
                String tr="Unregistered";
                try {
                  Connection con = databasecon.getconnection();
                  PreparedStatement st = con.prepareStatement("select * from patient where authorize=? && name=? && mobile=?");

                  st.setString(1, tr);
                  st.setString(2, pname);
                  st.setString(3, mobile);
                  rs = st.executeQuery();
                  while (rs.next()) {
                    String pid = rs.getString("uid");
                    String tname = rs.getString("cname");
                    String price = rs.getString("price");
                    String date = rs.getString("date");
                    cost += Integer.parseInt(rs.getString("price"));
                    %>
              <tr bgcolor="#FFFFCC">
                <td align="center"> <strong><font color="#6300C6"> <%=pid%>
                </font></strong></td>
                <td align="center"><strong><font color="#6300C6"> <%=tname%>
                </font></strong></td>
                <td align="center"><strong><font color="#6300C6"> <%=price%>
                </font></strong></td>
                <td align="center"><strong><font color="#6300C6"> <%=date%>
                </font></strong></td>
              </tr>
              <%
                  }
                  %>
              <tr bgcolor="#FFFFCC">
                <td align="center" bgcolor="#E4E4F1"> <strong><font> Unpaid Total
                </font></strong></td>
                <td align="center"><strong><font color="#6300C6"> <%=cost%>
                </font></strong></td>
                </tr>
            </table>
            <br>
            <br>
            <div style="text-align: center;"><font color="#FF0000" size="+1" face="Courier New"><strong>Paid Bill</strong></font></div> <br><br><br>
            <table bgcolor="#FFFFFF" width="700" border="0">
              <tr bgcolor="#E4E4F1">
                <td align="center"><strong>Outpatient ID</strong></td>
                <td align="center"> <font color="#110022"><strong>Treatment name</strong></font></td>
                <td align="center"><font color="#110022"><strong>Price</strong></font></td>
                <td align="center"><font color="#110022"><strong>Date</strong></font></td>
              </tr>
              <%
                  cost = 0;
                  rs=null;
                  tr="registered";
                st.setString(1, tr);
                st.setString(2, pname);
                st.setString(3, mobile);
                rs = st.executeQuery();
                while (rs.next()) {
                  String pid = rs.getString("uid");
                  String tname = rs.getString("cname");
                  String price = rs.getString("price");
                  String date = rs.getString("date");
                  cost += Integer.parseInt(rs.getString("price"));
              %>
              <tr bgcolor="#FFFFCC">
                <td align="center"> <strong><font color="#6300C6"> <%=pid%>
                </font></strong></td>
                <td align="center"><strong><font color="#6300C6"> <%=tname%>
                </font></strong></td>
                <td align="center"><strong><font color="#6300C6"> <%=price%>
                </font></strong></td>
                <td align="center"><strong><font color="#6300C6"> <%=date%>
                </font></strong></td>
              </tr>
              <%
                }
              %>
              <tr bgcolor="#FFFFCC">
                <td align="center" bgcolor="#E4E4F1"> <strong><font> Paid Total
                </font></strong></td>
                <td align="center"><strong><font color="#6300C6"> <%=cost%>
                </font></strong></td>
              </tr>
            </table>
            <%
                } catch(Exception e1)
                {
                  out.println(e1.getMessage());
                }

              %>
            <%--                        </form>--%>

            <br><br><br><br><br><br><br><br><br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
