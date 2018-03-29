<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="project2v3.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br /><br />
    <div class="card-deck">
        <div class="card">
            <asp:Image ID="Image1" runat="server" CssClass="card-img-top" AlternateText="Card image cap" ImageUrl="~/Content/Image/t.png" />
            <div class="card-body">
                <h5 class="card-title">นางสาวปฐมา อินทรสุวรรณ</h5>
                <h5 class="card-title">Ms.Patama Intarasuwan</h5>
                <p class="card-text">หน่วยงานทุนการศึกษา</p>
                <p class="card-text">Scholarship</p>
                <p class="card-text">โทรศัพท์ : 0 7627 6531</p>
                <p class="card-text">E-mail : patama.i@phuket.psu.ac.th</p>
                <p class="card-text">จันทร์ - ศุกร์ 08.30 -16.30 น.</p>
            </div>
        </div>
        <div class="card">
            <asp:Image ID="Image2" runat="server" CssClass="card-img-top" AlternateText="Card image cap" ImageUrl="~/Content/Image/m.png" />
            <div class="card-body">
                <h5 class="card-title">นางสาวชนิษฐา ทองเพียง</h5>
                <h5 class="card-title">Ms.Chanittha Thongpeang</h5>
                <p class="card-text">หน่วยงานทุนการศึกษา</p>
                <p class="card-text">Scholarship</p>
                <p class="card-text">โทรศัพท์ : 0 7627 6531</p>
                <p class="card-text">E-mail : chanittha.t@phuket.psu.ac.th</p>
                <p class="card-text">จันทร์ - ศุกร์ 08.30 -16.30 น.</p>

            </div>
        </div>
    </div>
    <br /><br />
</asp:Content>
