<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="BotswanaStudExchange.aspx.cs" Inherits="BotswanaStudExchange" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h1>Botswana Student Exchange Online Application</h1>
    <hr />
    <p>You must be a second year student to complete this application</p>
    <br />
    
    <div class="container">
            <div class="form-horizontal">
           
            
                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Student Number"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="FirstName" runat="server" CssClass="form-control" placeholder="Student Number"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" CssClass="text-danger" runat="server" ErrorMessage="Username Field Required !" ControlToValidate="FirstName"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="form-group">
                    <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Level Of Study"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Level of Study"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="text-danger" runat="server" ErrorMessage="Level Of Study Field Required !" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
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

