<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="DigitalServiceCenter.Admin.Category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <div class="container-xxl flex-grow-1 container-p-y">
<div class="col-xxl">
                  <div class="card mb-4">
                    <div class="card-header d-flex align-items-center justify-content-between">
                      <h5 class="mb-0">Category Registration</h5>
                      <small class="text-muted float-end"> <asp:LinkButton ID="LinkButton1" runat="server"  CssClass="btn btn-primary" OnClick="LinkButton1_Click">View Category</asp:LinkButton></small>
                    </div>
                    <div class="card-body">
                  
                        <div class="row mb-3">
                          <label class="col-sm-2 col-form-label" for="basic-default-name"> Category Name</label>
                          <div class="col-sm-10">
                              <asp:TextBox ID="txtcategory" runat="server" CssClass="form-control"></asp:TextBox>
                            <%--<input type="text" class="form-control" id="basic-default-name" placeholder="John Doe" />--%>
                          </div>
                        </div>
 
                     <div class="mb-3 row">
               <label class="col-sm-2 col-form-label" for="basic-default-phone">Photo</label>
                            <div class="col-md-10">
                        <asp:FileUpload ID="FileUpload1" runat="server" class="file-upload-default" CssClass="form-control" />
                                  </div>
                      </div>
                        <div class="row justify-content-end">
                          <div class="col-sm-10">
                                <asp:Button ID="Button1" runat="server" CssClass="btn btn-danger" Text="Save" OnClick="Button1_Click" />
                                 <asp:Button ID="Button2" runat="server" CssClass="btn btn-success" Text="Cancel" />

                          </div>
                        </div>
                  
                    </div>
                  </div>
                </div>
 </div>


</asp:Content>
