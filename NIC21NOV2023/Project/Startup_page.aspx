<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Startup_page.aspx.cs" Inherits="NIC21NOV2023.Project.Startup_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   
<meta name="viewport" content="width=device-width, initial-scale=1">
     <!--include jQuery -->  
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"  
type="text/javascript"></script>   
<!--include jQuery Validation Plugin-->  
<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.12.0/jquery.validate.min.js"  
type="text/javascript"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <style>
    .container {
      border-radius: 5px;
      background-color: #f2f2f2;
      padding: 20px;
      margin:20px 450px;
      width:400px;
      height:320px;
     
    }
    </style>
</head>
<body>
    <div class="container">
    <form id="form1" runat="server">

           <div class="row">
     <div class="col-25">
       <label for="Username">User Name</label>
     </div>
     <div class="col-75">
         <asp:TextBox ID="txtUsername" runat="server" name="Username" ></asp:TextBox>
     <br />
         <asp:RequiredFieldValidator ID="reqUname" ControlToValidate="txtUsername" ValidationGroup="login"
 runat="server" ErrorMessage="*Username is required" CssClass="red"></asp:RequiredFieldValidator>

     </div>
   </div>
      <div class="row">
  <div class="col-25">
    <label for="reg">Register Number</label>
  </div>
  <div class="col-75">
      <asp:TextBox ID="txtregister" runat="server" name="Register No"  ></asp:TextBox>
      <br />
      <asp:RequiredFieldValidator ID="reqregister" ControlToValidate="txtregister" ValidationGroup="login"
     runat="server" ErrorMessage="*Register Number is required" CssClass="red"></asp:RequiredFieldValidator>
      </div>
</div>
            <div class="col-25">
                <asp:Button ID="login" CssClass="btn btn-primary" runat="server" type="submit" Text="Login" OnClick="login_Click" ValidationGroup="login" />
            </div>
        <br />
            <div class="col-25">
                <asp:Button ID="NewReg" CssClass="btn btn-primary" runat="server" type="submit" Text="New Registration" OnClick="NewReg_Click" />
            </div>
        </form>
        </div>
</body>
</html>
