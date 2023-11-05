<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="districtview.aspx.cs" Inherits="DigitalServiceCenter.Admin.districtview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server">
        <Columns>
            <asp:TemplateField HeaderText="SI.No">
                <ItemTemplate>
                    <%#Container.DataItemIndex+1 %>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Select">
                <ItemTemplate>
                    <input type="checkbox" runat="server" name="ch" value="<%#Eval("Districtid") %>" />

                </ItemTemplate>
            </asp:TemplateField>

            <asp:BoundField DataField="Districtname" HeaderText="District Name" />
            <asp:BoundField DataField="Districtid" HeaderText="Districtid" />
        </Columns>
    </asp:GridView>
</asp:Content>
