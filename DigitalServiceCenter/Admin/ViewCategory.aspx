<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ViewCategory.aspx.cs" Inherits="DigitalServiceCenter.Admin.ViewCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

       <br />
    <br />
    <div class="col-md-12">
          <div class="white_shd full margin_bottom_30">
                 <div class="full graph_head">
                        <div class="heading1 margin_0">
                                <h2>Responsive Tables</h2>
                         </div>
                  </div>
               <div class="table_section padding_infor_info">
                     <div class="table-responsive-sm">
             
                    

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  CssClass="table"  OnRowEditing="GridView1_RowEditing" DataKeyNames="CategoryId" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowUpdating="GridView1_RowUpdating">
        <Columns>
             <asp:TemplateField HeaderText="Sl.No">
        <ItemTemplate>
             <%#Container.DataItemIndex+1 %>
        </ItemTemplate>
    </asp:TemplateField>
            <asp:TemplateField HeaderText="Select">

                <ItemTemplate>
                     <ItemTemplate>
                         <input type="checkbox" runat="server" name="ch" id="ch" value='<%#Eval("CategoryId") %>' />
                     </ItemTemplate>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="CategoryName" HeaderText="CategoryName" />  
            <asp:TemplateField HeaderText="Category Photo">
                <EditItemTemplate>
                    <asp:FileUpload ID="FileUpload1" runat="server" Height="17px" Width="203px" />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("photo", "~/upload/{0}") %>'/>
                    <br />
                    <br />
                </ItemTemplate>
                <ControlStyle Height="100px" Width="100px" />
                <HeaderStyle Width="100px" />
            </asp:TemplateField>
            <asp:CommandField HeaderText="Edit" ShowEditButton="True" ControlStyle-CssClass="typcn typcn-edit btn-icon-append btn btn-success btn-sm btn-icon-text mr-3" >
<ControlStyle CssClass="typcn typcn-edit btn-icon-append btn btn-success btn-sm btn-icon-text mr-3"></ControlStyle>
            </asp:CommandField>
            <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" ControlStyle-CssClass="btn btn-danger btn-sm btn-icon-text typcn typcn-delete-outline btn-icon-append  margin-left: 555px;" >
<ControlStyle CssClass="btn btn-danger btn-sm btn-icon-text typcn typcn-delete-outline btn-icon-append"></ControlStyle>
            </asp:CommandField>
        </Columns>
    </asp:GridView>
                    <br />

                     <asp:Button ID="Button1" runat="server" CssClass="btn btn-danger" Text="DeleteAll"  style="margin-left: 350px;" OnClick="Button1_Click"/>
   
                    </div>

              </div>

                    </div>

              </div>

 
</asp:Content>
