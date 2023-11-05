<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/GuestMaster.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="DigitalServiceCenter.Guest.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-lg-6 col-md-6">
                    <div class="contact__form">
                        <h3>Get in touch</h3>
        
                         <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
                        <asp:TextBox ID="txtpasword" runat="server"></asp:TextBox>
                          <asp:Button ID="Button1" runat="server" Text="Button" />
                      
                    </div>
                </div>
            
</asp:Content>
