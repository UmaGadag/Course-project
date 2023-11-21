<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CourseRegistration.aspx.cs" Inherits="NIC21NOV2023.Project.CourseRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
      <form name="BD"  runat="server">
      
   
    <div class="row">
      <div class="col-25">
        <label for="RegisterNo">Register No</label>
      </div>
      <div class="col-75">
          <asp:TextBox ID="txtRegisterNo" runat="server" name="RegisterNo" ></asp:TextBox>
      <br />
          

      </div>
    </div>
       
   
    <div class="row">
      <div class="col-25">
        <label for="CourseName">Course Name</label>
      </div>
    <div class="col-75">
        <asp:TextBox ID="txtCourseName" runat="server" name="CourseName" ></asp:TextBox>
        <br />
        <%--<asp:RegularExpressionValidator ID="re" runat="server" ErrorMessage="RegularExpressionValidator"></asp:RegularExpressionValidator>
       --%> <asp:RequiredFieldValidator ID="reqCoursename" ControlToValidate="txtCourseName" ValidationGroup="submit"
        runat="server" ErrorMessage="*Please enter Course Name" CssClass="red"></asp:RequiredFieldValidator>

    </div>
        </div>
              <div class="row">
  <div class="col-25">
    <label for="CourseDuration">Course Duration</label>
  </div>
  <div class="col-75">
      <asp:TextBox ID="txtCourseDuration" runat="server" name="Course Duration"  ></asp:TextBox>
      <br />
      <asp:RequiredFieldValidator ID="reqCD" ControlToValidate="txtCourseDuration" ValidationGroup="submit"
     runat="server" ErrorMessage="*Please enter Course Duration" CssClass="red"></asp:RequiredFieldValidator>
      </div>
</div>

   <br />
    <div class="row">

        <div class="col-25">
        <asp:Button ID="submit" runat="server" type="submit" Text="Save" Onclick="submit_Click" ValidationGroup="submit"/>
            </div>
        <div class="col-25">
         <asp:Button ID="back" runat="server" type="submit" Text="Back" Onclick="back_Click"/>
            </div>
  </div>
  </form>
</body>
</html>
