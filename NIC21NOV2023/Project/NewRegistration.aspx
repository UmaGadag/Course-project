<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewRegistration.aspx.cs" Inherits="NIC21NOV2023.Project.NewRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"  
type="text/javascript"></script>   
<!--include jQuery Validation Plugin-->  
<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.12.0/jquery.validate.min.js"  
type="text/javascript"></script>   
    <style>
* {
  box-sizing: border-box;
}

input[type=text], select, textarea {
  width: 75%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}

label {
  padding: 12px 12px 12px 0;
  display: inline-block;
}

input[type=submit] {
  background-color: #04AA6D;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: left;

}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
  margin:20px;
}

.col-25 {
  float: left;
  width: 25%;
  margin-top: 6px;
}

.col-75 {
  float: left;
  width: 75%;
  margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

.red {
    color:red;
}
@media screen and (max-width: 600px) {
  .col-25, .col-75, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
}
</style>
</head>
<body>
        <div class="row">
<div class="col-25">
    
    <asp:Label ID="lblError" runat="server" Text="Label" ForeColor="red" Visible="false"></asp:Label>
 
</div>
        </div>
        <h3>New User Registration</h3>
  <form name="BD"  runat="server">
      
   
    <div class="row">
      <div class="col-25">
        <label for="txtname">Name</label>
      </div>
      <div class="col-75">
          <asp:TextBox ID="txtname" runat="server" name="Name" ></asp:TextBox>
      <br />
          <asp:RequiredFieldValidator ID="reqname" ControlToValidate="txtname" ValidationGroup="submit"
          runat="server" ErrorMessage="*Please enter Name" CssClass="red"></asp:RequiredFieldValidator>

      </div>
    </div>
       <div class="row">
   <div class="col-25">
     <label for="DOB">DOB</label>
   </div>
   <div class="col-75">
       <input type="datetime-local" ID="DtpDOB" runat="server">
       <br />
       
      
       </div>
 </div>
    <div class="row">
      <div class="col-25">
        <label for="Gender">Gender</label>
      </div>
      <div class="col-75">
           <asp:RadioButtonList ID="rbngender" runat="server" DataTextField="ans"  RepeatLayout="Flow" RepeatDirection="Horizontal" AutoPostBack="true"
                    DataValueField="ans">  
                    <asp:ListItem CssClass="radio-inline">Male</asp:ListItem>  
                    <asp:ListItem CssClass="radio-inline">Female</asp:ListItem>  
                </asp:RadioButtonList> 
    </div>
        </div>
    <div class="row">
      <div class="col-25">
        <label for="MobileNo">Mobile No</label>
      </div>
    <div class="col-75">
        <asp:TextBox ID="txtMobileNo" runat="server" name="Mobile No" MaxLength="10" ></asp:TextBox>
        <br />
        <%--<asp:RegularExpressionValidator ID="re" runat="server" ErrorMessage="RegularExpressionValidator"></asp:RegularExpressionValidator>
       --%> <asp:RequiredFieldValidator ID="reqtxtMobileNo" ControlToValidate="txtMobileNo" ValidationGroup="submit"
        runat="server" ErrorMessage="*Please enter Mobile No" CssClass="red"></asp:RequiredFieldValidator>

    </div>
        </div>
              <div class="row">
  <div class="col-25">
    <label for="Address">Address</label>
  </div>
  <div class="col-75">
      <asp:TextBox ID="txtAddress" runat="server" name="Address" TextMode="MultiLine" ></asp:TextBox>
      <br />
      <asp:RequiredFieldValidator ID="reqAddress" ControlToValidate="txtAddress" ValidationGroup="submit"
     runat="server" ErrorMessage="*Please enter Address" CssClass="red"></asp:RequiredFieldValidator>
      </div>
</div>

      <div class="row">
        <div class="col-25">
            <label for="Email">Email</label>
        </div>
        <div class="col-75">
            <asp:TextBox ID="txtEmail" runat="server" name="Email" TextMode="Email" ></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="reqEmail" ControlToValidate="txtMobileNo" ValidationGroup="submit"
            runat="server" ErrorMessage="*Please enter Email" CssClass="red"></asp:RequiredFieldValidator>

        </div>
    </div>

<div class="row">
  <div class="col-25">
    <label for="District">District Name</label>
  </div>
      <div class="col-75">
          <asp:DropDownList id="ddlDistrict" runat="server"  
                    onselectedindexchanged="ddlDistrict_SelectedIndexChanged" AutoPostBack = "true"></asp:DropDownList>
      <br />
          <asp:RequiredFieldValidator id="reqDistrict"  InitialValue="0" ValidationGroup="submit"
              ControlToValidate="ddlDistrict" Runat="server" ErrorMessage="*Please select District Name" CssClass="red"/> 
      </div>
    </div>
      <div class="row">
  <div class="col-25">
    <label for="TalukName">Taluk Name</label>
  </div>
  <div class="col-75">
      <asp:DropDownList ID="ddlTaluk" runat="server" ValidationGroup="submit"></asp:DropDownList>
    <br />
    <asp:RequiredFieldValidator id="reqScheme"  InitialValue="0" ValidationGroup="submit"
        ControlToValidate="ddlTaluk" Runat="server" ErrorMessage="*Please select Taluk" CssClass="red"/> 
   
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
