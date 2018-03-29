<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="outside_fund.aspx.cs" Inherits="project2v3.outside_fund" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br /><br />
    <div class="row">
        <div class="col-md-4">
            <div class="list-group" id="list-tab" role="tablist">
                <a class="list-group-item list-group-item-action active" id="list-funds-list" data-toggle="list" href="#list-funds" role="tab" aria-controls="funds">ทุน</a>
            </div>
        </div>
        <div class="col-md-8">
            <div class="tab-content" id="nav-tabContent">
                <div class="tab-pane fade show active" id="list-funds" role="tabpanel" aria-labelledby="list-funds-list">
                    <div class="card">
                        <div class="card-header text-center" style="background-color: #28A745; color: #ffffff;">
                            รายละเอียด
                        </div>
                        <div class="card-body">
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
