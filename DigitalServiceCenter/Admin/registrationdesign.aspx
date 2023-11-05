<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="registrationdesign.aspx.cs" Inherits="DigitalServiceCenter.Admin.registrationdesign" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <div class="container-xxl flex-grow-1 container-p-y">
<div class="col-xxl">
                  <div class="card mb-4">
                    <div class="card-header d-flex align-items-center justify-content-between">
                      <h5 class="mb-0">Basic Layout</h5>
                      <small class="text-muted float-end">Default label</small>
                    </div>
                    <div class="card-body">
                  
                        <div class="row mb-3">
                          <label class="col-sm-2 col-form-label" for="basic-default-name">Name</label>
                          <div class="col-sm-10">
                            <input type="text" class="form-control" id="basic-default-name" placeholder="John Doe" />
                          </div>
                        </div>
                        <div class="row mb-3">
                          <label class="col-sm-2 col-form-label" for="basic-default-company">Company</label>
                          <div class="col-sm-10">
                            <input
                              type="text"
                              class="form-control"
                              id="basic-default-company"
                              placeholder="ACME Inc."
                            />
                          </div>
                        </div>
                        <div class="row mb-3">
                          <label class="col-sm-2 col-form-label" for="basic-default-email">Email</label>
                          <div class="col-sm-10">
                            <div class="input-group input-group-merge">
                              <input
                                type="text"
                                id="basic-default-email"
                                class="form-control"
                                placeholder="john.doe"
                                aria-label="john.doe"
                                aria-describedby="basic-default-email2"
                              />
                              <span class="input-group-text" id="basic-default-email2">@example.com</span>
                            </div>
                            <div class="form-text">You can use letters, numbers & periods</div>
                          </div>
                        </div>
                        <div class="row mb-3">
                          <label class="col-sm-2 col-form-label" for="basic-default-phone">Phone No</label>
                          <div class="col-sm-10">
                        <input class="form-control" type="number" value="18" id="html5-number-input" />
                          </div>
                        </div>

                        <div class="mb-3 row">
                           <label class="col-sm-2 col-form-label" for="basic-default-phone">Date</label>
                        <div class="col-md-10">
                          <input class="form-control" type="date" value="2021-06-18" id="html5-date-input" />
                        </div>
                      </div>
                     <div class="mb-3 row">
               <label class="col-sm-2 col-form-label" for="basic-default-phone">Default file input example</label>
                            <div class="col-md-10">
                        <input class="form-control" type="file" id="formFile" />
                                  </div>
                      </div>

                        <div class="row mb-3">
                          <label class="col-sm-2 col-form-label" for="basic-default-message">Message</label>
                          <div class="col-sm-10">
                            <textarea
                              id="basic-default-message"
                              class="form-control"
                              placeholder="Hi, Do you have a moment to talk Joe?"
                              aria-label="Hi, Do you have a moment to talk Joe?"
                              aria-describedby="basic-icon-default-message2"
                            ></textarea>
                          </div>
                        </div>

                        <div class="row mb-3">
                           <label class="col-sm-2 col-form-label" for="basic-default-message">Radio</label>
                          <div class="col-sm-10">
                              &nbsp;
                            &nbsp; &nbsp; <input class="form-check-input"  type="radio" name="inlineRadioOptions"  id="inlineRadio1"  value="option1"/>
                            <label class="form-check-label" for="inlineRadio1">1</label> &nbsp; &nbsp;
                                  <input class="form-check-input"  type="radio" name="inlineRadioOptions"  id="inlineRadio1"  value="option1"/>
                            <label class="form-check-label" for="inlineRadio1">2</label>
                          </div>
                        
                          
                        </div>

                      <div class="row mb-3">
                        <label class="col-sm-2 col-form-label" for="basic-default-message">Example select</label>
                          <div class="col-sm-10">
                        <select class="form-control" id="exampleFormControlSelect1" aria-label="Default select example">
                          <option selected>Open this select menu</option>
                          <option value="1">One</option>
                          <option value="2">Two</option>
                          <option value="3">Three</option>
                        </select>
                      </div>
                              </div>
                        <div class="row justify-content-end">
                          <div class="col-sm-10">
                            <button type="submit" class="btn btn-primary">Send</button>
                          </div>
                        </div>
                  
                    </div>
                  </div>
                </div>
 </div>
</asp:Content>
