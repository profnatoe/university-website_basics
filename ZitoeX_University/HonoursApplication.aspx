<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="HonoursApplication.aspx.cs" Inherits="HonoursApplication" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h1>Online Computer Science Honours Application</h1>
    <hr />
    <p>You must be a third year student to complete this application</p>

    <hr />

    <div class="container">
            <div class="form-horizontal">
           
          
                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="First Name"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="FirstName" runat="server" CssClass="form-control" placeholder="First Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" CssClass="text-danger" runat="server" ErrorMessage="First Name Field Required !" ControlToValidate="FirstName"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="form-group">
                    <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Last Name"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Last Name"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="text-danger" runat="server" ErrorMessage="Last Name Field Required !" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                    </div>
                </div>
    
                <div class="form-group">
                    <asp:Label ID="Label3" runat="server" CssClass="col-md-2 control-label" Text="ID Number"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="ID Number"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="text-danger" runat="server" ErrorMessage="First Name Field Required !" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="form-group">
                    <asp:Label ID="Label4" runat="server" CssClass="col-md-2 control-label" Text="Home Language"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder="Home Language"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="text-danger" runat="server" ErrorMessage="First Name Field Required !" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="form-group">
                    <asp:Label ID="Label5" runat="server" CssClass="col-md-2 control-label" Text="EmailID"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" placeholder="Email Address"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" CssClass="text-danger" runat="server" ErrorMessage=" Field Required !" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="form-group">
                    <asp:Label ID="Label6" runat="server" CssClass="col-md-2 control-label" Text="Degree"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" placeholder="BSCCSI / BSCCM"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" CssClass="text-danger" runat="server" ErrorMessage="Degree Field Required !" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
                    </div>
                </div>


                <div class="form-group">
                    <asp:Label ID="Label7" runat="server" CssClass="col-md-2 control-label" Text="Level Of Study"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" placeholder="3rd Level"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" CssClass="text-danger" runat="server" ErrorMessage="Level of Study Field Required !" ControlToValidate="TextBox6"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="form-group">
                    <asp:Label ID="Label8" runat="server" CssClass="col-md-2 control-label" Text="Current University Name"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" placeholder="Univen / UL / TUT / None"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" CssClass="text-danger" runat="server" ErrorMessage="Current University Field Required !" ControlToValidate="TextBox7"></asp:RequiredFieldValidator>
                    </div>
                </div>
                   <div class="form-group">
                     <div class="col-md-2"></div>
                         <div class="col-md-6">
                             <asp:Button ID="Button1" runat="server" Text="Register" CssClass="btn btn-default" OnClick="Button1_Click"/>
                             <asp:Label ID="lblMsg" runat="server"></asp:Label>
                            
                     </div>
                </div>
                </div>
        </div>

</asp:Content>

