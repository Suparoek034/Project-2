<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="project2v3.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-8">
            <div class="card">
                <div class="card-header text-center" style="background-color: #28A745; color: #ffffff;">
                    ติดต่อเรา
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-6">
                         <asp:Label ID="Lb_contactName" runat="server" Text="ชื่อ-สกุล"></asp:Label>
                        <asp:TextBox ID="Tb_contactName" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:Label ID="Lb_contactEmail" runat="server" Text="อีเมลล์"></asp:Label>
                        <asp:TextBox ID="Tb_contactEmail" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:Label ID="Lb_contactTel" runat="server" Text="เบอร์โทรศัพท์"></asp:Label>
                        <asp:TextBox ID="Tb_contactTel" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-md-6">
                        <asp:Label ID="Lb_contactDetail" runat="server" Text="รายละเอียด"></asp:Label>
                        <asp:TextBox ID="Tb_contactDetail" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="6"></asp:TextBox>
                    </div>
                    </div>
                </div>
                <div class="card-footer text-center">
                    <asp:Button ID="Btn_contactSave" runat="server" Text="ส่ง" CssClass="btn btn-success" />
                </div>
            </div>
        </div>
        <div class="col-md-2"></div>
    </div>
</asp:Content>
