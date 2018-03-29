<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="loan1.aspx.cs" Inherits="project2v3.loan1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <div class="row">
        <div class="col-md-4">
            <div class="list-group" id="list-tab" role="tablist">
                <a class="list-group-item list-group-item-action active" id="list-currentStatus-list" data-toggle="list" href="#list-currentStatus" role="tab" aria-controls="currentStatus">สถานะปัจจุบัน</a>
                <a class="list-group-item list-group-item-action" id="list-documentDownload-list" data-toggle="list" href="#list-documentDownload" role="tab" aria-controls="documentDownload">ดาวน์โหลดเอกสาร</a>
            </div>
        </div>
        <div class="col-md-8">
            <div class="tab-content" id="nav-tabContent">
                <div class="tab-pane fade show active" id="list-currentStatus" role="tabpanel" aria-labelledby="list-currentStatus-list">
                    <div class="card">
                        <div class="card-header text-center" style="background-color: #28A745; color: #ffffff;">
                            สถานะปัจจุบัน
                        </div>
                        <div class="card-body">
                            <div class="alert alert-danger" role="alert">
                                This is a danger alert—check it out!
                            </div>
                            <div class="alert alert-danger" role="alert">
                                This is a danger alert—check it out!
                            </div>
                            <div class="alert alert-danger" role="alert">
                                This is a danger alert—check it out!
                            </div>
                            <div class="alert alert-danger" role="alert">
                                This is a danger alert—check it out!
                            </div>
                            <div class="alert alert-warning" role="alert">
                                This is a danger alert—check it out!
                            </div>
                            <div class="alert alert-warning" role="alert">
                                This is a danger alert—check it out!
                            </div>
                            <div class="alert alert-warning" role="alert">
                                This is a danger alert—check it out!
                            </div>
                            <div class="alert alert-warning" role="alert">
                                This is a danger alert—check it out!
                            </div>
                            <div class="alert alert-secondary" role="alert">
                                This is a danger alert—check it out!
                            </div>
                            <div class="alert alert-secondary" role="alert">
                                This is a danger alert—check it out!
                            </div>
                            <div class="alert alert-secondary" role="alert">
                                This is a danger alert—check it out!
                            </div>
                            <div class="alert alert-secondary" role="alert">
                                This is a danger alert—check it out!
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="list-documentDownload" role="tabpanel" aria-labelledby="list-documentDownload-list">
                    <div class="card">
                        <div class="card-header text-center" style="background-color: #28A745; color: #ffffff;">
                            ดาวน์โหลดเอกสาร
                        </div>
                        <div class="card-body">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
