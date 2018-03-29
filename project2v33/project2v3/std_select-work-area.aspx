<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="std_select-work-area.aspx.cs" Inherits="project2v3.std_select_work_area" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <div class="row">
        <div class="col-md-4">
            <div class="list-group" id="list-tab" role="tablist">
                <a class="list-group-item list-group-item-action active" id="list-stdSelectWorkArea-list" data-toggle="list" href="#list-stdSelectWorkArea" role="tab" aria-controls="stdSelectWorkArea">เลือกสถานที่ทำงาน</a>
            </div>
        </div>
        <div class="col-md-8">
            <div class="tab-content" id="nav-tabContent">
                <div class="tab-pane fade show active" id="list-stdSelectWorkArea" role="tabpanel" aria-labelledby="list-stdSelectWorkArea-list">
                    <div class="card">
                        <div class="card-header text-center" style="background-color: #28A745; color: #ffffff;">
                            เลือกสถานที่ทำงาน
                        </div>
                        <div class="card-body">
                            <asp:GridView ID="Gv_stdSelectWrokArea" runat="server" AllowPaging="True" BorderStyle="None" CssClass="table-responsive" DataSourceID="workAreaTable" GridLines="None" Width="100%" AutoGenerateColumns="False">
                                <Columns>
                                    <asp:TemplateField HeaderText="สถานที่ทำงาน" SortExpression="WORK_DEPARTMENT">
                                        <EditItemTemplate>
                                            <div style="width: 150px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                <asp:TextBox ID="txt_WORK_DEPARTMENT" runat="server" Text='<%# Bind("WORK_DEPARTMENT") %>'></asp:TextBox>
                                            </div>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <div style="width: 150px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                <asp:Label ID="Lb_WORK_DEPARTMENT" runat="server" Text='<%# Bind("WORK_DEPARTMENT") %>'></asp:Label>
                                            </div>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="จำนวนที่รับสมัคร" SortExpression="REQUEST_AMOUNT">
                                        <EditItemTemplate>
                                            <div style="width: 150px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                <asp:TextBox ID="txt_REQUEST_AMOUNT" runat="server" Text='<%# Bind("REQUEST_AMOUNT") %>'></asp:TextBox>
                                            </div>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <div style="width: 150px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                <asp:Label ID="Lb_REQUEST_AMOUNT" runat="server" Text='<%# Bind("REQUEST_AMOUNT") %>'></asp:Label>
                                            </div>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="เจ้าหน้าที่ผู้ดูแล" SortExpression="AUTH_CONTROL_FIRSTNAME">
                                        <EditItemTemplate>
                                            <div style="width: 150px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                <asp:TextBox ID="txt_AUTH_CONTROL_FIRSTNAME" runat="server" Text='<%# Bind("AUTH_CONTROL_FIRSTNAME") %>'></asp:TextBox>
                                            </div>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <div style="width: 150px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                <asp:Label ID="Lb_AUTH_CONTROL_FIRSTNAME" runat="server" Text='<%# Bind("AUTH_CONTROL_FIRSTNAME") %>'></asp:Label>
                                            </div>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="จำนวนนักเรียนที่สมัคร" SortExpression="ORDEROFSTD">
                                        <EditItemTemplate>
                                            <div style="width: 150px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                <asp:Label ID="Lb_ORDEROFSTD" runat="server" Text='<%# Eval("ORDEROFSTD") %>'></asp:Label>
                                            </div>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <div style="width: 150px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                <asp:Label ID="Lb_ORDEROFSTD" runat="server" Text='<%# Bind("ORDEROFSTD") %>'></asp:Label>
                                            </div>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <RowStyle BorderStyle="None" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="workAreaTable" runat="server" ConnectionString="<%$ ConnectionStrings:psustfdbConnectionString %>" SelectCommand="SELECT REQUEST_STUDENT.WORK_DEPARTMENT,REQUEST_STUDENT.REQUEST_AMOUNT,REQUEST_STUDENT.AUTH_CONTROL_FIRSTNAME,(SELECT COUNT(ID) FROM STD_SELECT_WORKAREA WHERE REQUEST_STUDENT.ID=STD_SELECT_WORKAREA .WORKING_ID) AS ORDEROFSTD
From REQUEST_STUDENT"></asp:SqlDataSource>
                        </div>
                        <div class="card-footer">
                            <div class="input-group">
                                <asp:DropDownList ID="ddl_std_SelectWorkArea" runat="server" CssClass="form-control" DataSourceID="SqlDataSourceSTUDENT_DEPARTMENT" DataTextField="WORK_DEPARTMENT" DataValueField="ID"></asp:DropDownList>
                                <asp:SqlDataSource runat="server" ID="SqlDataSourceSTUDENT_DEPARTMENT" ConnectionString='<%$ ConnectionStrings:psustfdbConnectionString %>' SelectCommand="SELECT [ID], [WORK_DEPARTMENT] FROM [REQUEST_STUDENT]"></asp:SqlDataSource>
                                <asp:SqlDataSource runat="server" ID="stdSelectWorkArea" ConnectionString='<%$ ConnectionStrings:psustfdbConnectionString %>' DeleteCommand="DELETE FROM [workarea] WHERE [Id] = @Id" InsertCommand="INSERT INTO [workarea] ([workareaName], [amount], [authName]) VALUES (@workareaName, @amount, @authName)" SelectCommand="SELECT * FROM [workarea]" UpdateCommand="UPDATE [workarea] SET [workareaName] = @workareaName, [amount] = @amount, [authName] = @authName WHERE [Id] = @Id">
                                    <DeleteParameters>
                                        <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
                                    </DeleteParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="workareaName" Type="String"></asp:Parameter>
                                        <asp:Parameter Name="amount" Type="Int32"></asp:Parameter>
                                        <asp:Parameter Name="authName" Type="String"></asp:Parameter>
                                    </InsertParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="workareaName" Type="String"></asp:Parameter>
                                        <asp:Parameter Name="amount" Type="Int32"></asp:Parameter>
                                        <asp:Parameter Name="authName" Type="String"></asp:Parameter>
                                        <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
                                    </UpdateParameters>
                                </asp:SqlDataSource>
                                <div class="input-group-append">
                                    <asp:Button ID="Btn_std_SelectWorkArea" runat="server" Text="บันทึก" CssClass="btn btn-outline-primary" OnClick="Btn_std_SelectWorkArea_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
