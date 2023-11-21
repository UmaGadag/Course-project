<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DefaultLogin.aspx.cs" Inherits="NIC21NOV2023.Project.DefaultLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    
</head>
<body>
    <form id="form" runat="server">
        <nav class="navbar navbar-expand-lg navbar-light bg-primary">
  <div class="container-fluid">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <form class="d-flex">
        <asp:Label ID="lbl"  runat="server" Text="Name" ForeColor="white" ></asp:Label>
          &nbsp;&nbsp;
          <asp:Label ID="lblName" runat="server" Text="Name" ForeColor="white" ></asp:Label>
      </form>
    </div>
  </div>
</nav>
        <br />
    <div>
        <a href="CourseRegistration.aspx" class="link-primary">Course Register</a>
        <br />

        <a href="ViewCourseRegistration.aspx" class="link-primary">View Course Registered</a>
        <br />
        <a href="Startup_page.aspx" class="link-primary">Logout</a>
    </div>
</form>
</body>
</html>
