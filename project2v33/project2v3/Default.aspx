<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="project2v3._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
<br />
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <asp:Image ID="Image1" runat="server" CssClass="d-block w-100" AlternateText="First slide" ImageUrl="~/Content/SlideShow/s1.jpg" />
            </div>
            <div class="carousel-item">
                <asp:Image ID="Image2" runat="server" CssClass="d-block w-100" AlternateText="Second slide" ImageUrl="~/Content/SlideShow/s2.jpg" />
            </div>
            <div class="carousel-item">
                <asp:Image ID="Image3" runat="server" CssClass="d-block w-100" AlternateText="Third slide" ImageUrl="~/Content/SlideShow/s3.jpg" />
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
    <br />
    <br />
    <div class="row">
        <div class="col-md-3">
            <div class="list-group" id="list-tab" role="tablist">
                <a class="list-group-item list-group-item-action active" style="background-color: #ef5350" id="list-danger-list" data-toggle="list" href="#list-danger" role="tab" aria-controls="danger">ใกล้หมดเวลา</a>
                <a class="list-group-item list-group-item-action" style="background-color:   #FFCC33" id="list-warning-list" data-toggle="list" href="#list-warning" role="tab" aria-controls="warning">ต้องระวัง</a>
                <a class="list-group-item list-group-item-action" style="background-color: #4caf50" id="list-ok-list" data-toggle="list" href="#list-ok" role="tab" aria-controls="ok">มีเวลาอีกเยอะ</a>
            </div>
        </div>
        <div class="col-md-6">
            <div class="tab-content" id="nav-tabContent">
                <div class="tab-pane fade show active" id="list-danger" role="tabpanel" aria-labelledby="list-danger-list">
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
                </div>
                <div class="tab-pane fade" id="list-warning" role="tabpanel" aria-labelledby="list-warning-list">
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
                </div>
                <div class="tab-pane fade" id="list-ok" role="tabpanel" aria-labelledby="list-ok-list">
                    <div class="alert alert-success" role="alert">
                        This is a danger alert—check it out!
                    </div>
                    <div class="alert alert-success" role="alert">
                        This is a danger alert—check it out!
                    </div>
                    <div class="alert alert-success" role="alert">
                        This is a danger alert—check it out!
                    </div>
                    <div class="alert alert-success" role="alert">
                        This is a danger alert—check it out!
                    </div>
                </div>
            </div>
        </div>
    <div class="col-md-3">
        <asp:Calendar ID="Calendar1" runat="server" CssClass="form-control"></asp:Calendar>
    </div>
    </div>
    <br />
    <div class="row">
        <div class="col-md-12">
            <div class="card-deck">
                <div class="card">
                    <img class="card-img-top" src="Content/Image/w1.jpg" alt="Card image cap" />
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                    </div>
                    <div class="card-footer">
                        <small class="text-muted">Last updated 3 mins ago</small>
                    </div>
                </div>
                <div class="card">
                    <img class="card-img-top" src="Content/Image/w2.jpg" alt="Card image cap" />
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
                    </div>
                    <div class="card-footer">
                        <small class="text-muted">Last updated 3 mins ago</small>
                    </div>
                </div>
                <div class="card">
                    <img class="card-img-top" src="Content/Image/w3.jpg" alt="Card image cap" />
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
                    </div>
                    <div class="card-footer">
                        <small class="text-muted">Last updated 3 mins ago</small>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
