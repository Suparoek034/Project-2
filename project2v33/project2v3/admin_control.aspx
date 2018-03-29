<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="admin_control.aspx.cs" Inherits="project2v3.admin_control" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <div class="row">
        <div class="col-md-3">
            <div class="list-group" id="list-tab" role="tablist">
                <a class="list-group-item list-group-item-action active" id="list-addWorkArea-list" data-toggle="list" href="#list-addWorkArea" role="tab" aria-controls="addWorkArea">เพิ่มสถานที่ทำงาน</a>
                <a class="list-group-item list-group-item-action" id="list-authControl-list" data-toggle="list" href="#list-authControl" role="tab" aria-controls="authControl">กำหนดสิทธิ์เจ้าหน้าที่คุมงาน</a>
                <a class="list-group-item list-group-item-action" id="list-officerControl-list" data-toggle="list" href="#list-officerControl" role="tab" aria-controls="officerControlok">กำหนดสิทธ์เจ้าหน้าที่งานทุน</a>
            </div>
        </div>
        <div class="col-md-9">
            <div class="tab-content" id="nav-tabContent">
                <div class="tab-pane fade show active" id="list-addWorkArea" role="tabpanel" aria-labelledby="list-addWorkArea-list">
                    <div class="card">
                        <div class="card-header text-center" style="background-color: #28A745; color: #ffffff;">
                            เพิ่มสถานที่ทำงาน
                        </div>
                        <div class="card-body">
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="input-group">
                                            <asp:TextBox ID="Tb_addWorkAreaFilter" runat="server" CssClass="form-control" placeholder="ชื่อสถานที่" aria-label="ชื่อสถานที่" ></asp:TextBox>
                                            <div class="input-group-append">
                                                <asp:Button ID="Btn_addWorkAreaSearch" runat="server" Text="ค้นหา" CssClass="btn btn-outline-success " OnClick="Btn_addWorkAreaSearch_Click" />
                                            </div>
                                        </div>
                                        <br />
                                        <asp:UpdatePanel ID="Udpn_addWorkArea" runat="server">
                                            <ContentTemplate>
                                                <asp:GridView ID="Gv_addWorkArea" runat="server" AllowPaging="True" AutoGenerateColumns="False" BorderStyle="None" CssClass="table-responsive" DataKeyNames="Id" DataSourceID="SqlDataSourceADD_WORKAREA" GridLines="None" Width="100%" HorizontalAlign="Justify" RowStyle-Wrap="false" AllowSorting="True" HeaderStyle-ForeColor="#28A745">
                                                    <Columns>
                                                        <asp:TemplateField HeaderText="สถานที่ทำงาน" SortExpression="DEPARTMENT">
                                                            <EditItemTemplate>
                                                                <div style="width: 200px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:TextBox runat="server" Text='<%# Bind("DEPARTMENT") %>' ID="Tb_ADDDEPARTMENT" CssClass="form-control"></asp:TextBox>
                                                                </div>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <div style="width: 200px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:Label runat="server" Text='<%# Bind("DEPARTMENT") %>' ID="Lb_ADDDEPARTMENT"></asp:Label>
                                                                </div>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="จำนวน" SortExpression="REQUEST_AMOUNT">
                                                            <EditItemTemplate>
                                                                <div style="width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:DropDownList ID="Ddl_EDSR_ADDWORKAREA1" runat="server" SelectedValue='<%# Bind("REQUEST_AMOUNT") %>' DataSourceID="SqlDataSourceEDSR_ADDWORKAREA1" DataTextField="STUDENT_REQUESTED" DataValueField="STUDENT_REQUESTED" CssClass="form-control">
                                                                    </asp:DropDownList>
                                                                    <asp:SqlDataSource ID="SqlDataSourceEDSR_ADDWORKAREA1" runat="server" ConnectionString="<%$ ConnectionStrings:psustfdbConnectionString %>" SelectCommand="SELECT [STUDENT_REQUESTED] FROM [ESSENTIAL_DATA_STUDENT_REQUESTED]"></asp:SqlDataSource>
                                                                </div>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <div style="width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:Label runat="server" Text='<%# Bind("REQUEST_AMOUNT") %>' ID="Lb_REQUEST_AMOUNT"></asp:Label>
                                                                </div>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="ภาคเรียน" SortExpression="STUDY_TERM">
                                                            <EditItemTemplate>
                                                                <div style="width: 70px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:DropDownList ID="Ddl_EDST_ADDWORKAREA1" runat="server" SelectedValue='<%# Bind("STUDY_TERM") %>' DataSourceID="SqlDataSourceEDST_ADDWORKAREA1" DataTextField="STUDY_TERMS" DataValueField="STUDY_TERMS" CssClass="form-control">
                                                                    </asp:DropDownList>
                                                                    <asp:SqlDataSource ID="SqlDataSourceEDST_ADDWORKAREA1" runat="server" ConnectionString="<%$ ConnectionStrings:psustfdbConnectionString %>" SelectCommand="SELECT [STUDY_TERMS] FROM [ESSENTIAL_DATA_TERMS]"></asp:SqlDataSource>
                                                                </div>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <div style="width: 70px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:Label runat="server" Text='<%# Bind("STUDY_TERM") %>' ID="Lb_ADDSTUDY_TERM"></asp:Label>
                                                                </div>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="รหัสเจ้าหน้าที่" SortExpression="AUTH_ID">
                                                            <EditItemTemplate>
                                                                <div style="width: 200px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:TextBox runat="server" Text='<%# Bind("AUTH_ID") %>' ID="Tb_ADDAUTH_ID" CssClass="form-control"></asp:TextBox>
                                                                </div>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <div style="width: 200px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:Label runat="server" Text='<%# Bind("AUTH_ID") %>' ID="Lb_ADDAUTH_ID"></asp:Label>
                                                                </div>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="สถานะ" SortExpression="STATUS">
                                                            <EditItemTemplate>
                                                                <div style="width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:DropDownList ID="Ddl_EDS_ADDWORKAREA1" runat="server" DataSourceID="SqlDataSourceEDS_ADDWORKAREA1" DataTextField="STATUS" DataValueField="STATUS" SelectedValue='<%# Bind("STATUS") %>' CssClass="form-control">
                                                                    </asp:DropDownList>
                                                                    <asp:SqlDataSource ID="SqlDataSourceEDS_ADDWORKAREA1" runat="server" ConnectionString="<%$ ConnectionStrings:psustfdbConnectionString %>" SelectCommand="SELECT [STATUS] FROM [ESSENTIAL_DATA_STATUS]"></asp:SqlDataSource>
                                                                </div>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <div style="width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:Label runat="server" Text='<%# Bind("STATUS") %>' ID="Lb_ADD_STATUS"></asp:Label>
                                                                </div>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField>
                                                            <ItemTemplate>
                                                                <asp:ImageButton ImageUrl="~/Content/flaticon/003-edit.png" runat="server" CommandName="Edit" ToolTip="Edit" Width="20px" Height="20px" />
                                                                <asp:ImageButton ImageUrl="~/Content/flaticon/002-delete-button.png" runat="server" CommandName="Delete" ToolTip="ลบ" Width="20px" Height="20px" OnClientClick="return confirm('คุณต้องการลบข้อมูลนี้ใช่หรือไม่');"
                                                                    AlternateText="ลบข้อมูล" />
                                                            </ItemTemplate>
                                                            <EditItemTemplate>
                                                                <asp:ImageButton ImageUrl="~/Content/flaticon/004-update-arrows.png" runat="server" CommandName="Update" ToolTip="Update" Width="20px" Height="20px" />
                                                                <asp:ImageButton ImageUrl="~/Content/flaticon/001-cancel.png" runat="server" CommandName="Cancel" ToolTip="Cancel" Width="20px" Height="20px" AlternateText="ยกเลิก" />
                                                            </EditItemTemplate>
                                                        </asp:TemplateField>
                                                    </Columns>
                                                    <HeaderStyle ForeColor="#28A745" />
                                                    <RowStyle BorderStyle="None" />
                                                </asp:GridView>
                                                <asp:SqlDataSource runat="server" ID="SqlDataSourceADD_WORKAREA" ConnectionString='<%$ ConnectionStrings:psustfdbConnectionString %>' DeleteCommand="DELETE FROM [ADD_WORKAREA] WHERE [ID] = @ID" InsertCommand="INSERT INTO [ADD_WORKAREA] ([DEPARTMENT], [REQUEST_AMOUNT], [STUDY_TERM], [STUDY_YEAR], [AUTH_FIRSTNAME], [AUTH_LASTNAME], [AUTH_ID], [STATUS], [ADMIN_ID], [TIMESTAMP]) VALUES (@DEPARTMENT, @REQUEST_AMOUNT, @STUDY_TERM, @STUDY_YEAR, @AUTH_FIRSTNAME, @AUTH_LASTNAME, @AUTH_ID, @STATUS, @ADMIN_ID, @TIMESTAMP)" SelectCommand="SELECT * FROM [ADD_WORKAREA]" UpdateCommand="UPDATE [ADD_WORKAREA] SET [DEPARTMENT] = @DEPARTMENT, [REQUEST_AMOUNT] = @REQUEST_AMOUNT, [STUDY_TERM] = @STUDY_TERM, [AUTH_ID] = @AUTH_ID, [STATUS] = @STATUS WHERE [ID] = @ID">
                                                    <DeleteParameters>
                                                        <asp:Parameter Name="ID" Type="Int32"></asp:Parameter>
                                                    </DeleteParameters>
                                                    <InsertParameters>
                                                        <asp:Parameter Name="DEPARTMENT" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="REQUEST_AMOUNT" Type="Int32"></asp:Parameter>
                                                        <asp:Parameter Name="STUDY_TERM" Type="Int32"></asp:Parameter>
                                                        <asp:Parameter Name="STUDY_YEAR" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="AUTH_FIRSTNAME" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="AUTH_LASTNAME" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="AUTH_ID" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="STATUS" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="ADMIN_ID" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="TIMESTAMP" Type="DateTime"></asp:Parameter>
                                                    </InsertParameters>
                                                    <UpdateParameters>
                                                        <asp:Parameter Name="DEPARTMENT" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="REQUEST_AMOUNT" Type="Int32"></asp:Parameter>
                                                        <asp:Parameter Name="STUDY_TERM" Type="Int32"></asp:Parameter>
                                                        <asp:Parameter Name="STUDY_YEAR" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="AUTH_FIRSTNAME" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="AUTH_LASTNAME" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="AUTH_ID" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="STATUS" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="ADMIN_ID" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="TIMESTAMP" Type="DateTime"></asp:Parameter>
                                                        <asp:Parameter Name="ID" Type="Int32"></asp:Parameter>
                                                    </UpdateParameters>
                                                </asp:SqlDataSource>
                                            </ContentTemplate>
                                            <Triggers>
                                                <asp:AsyncPostBackTrigger ControlID="Btn_addWorkAreaSearch" EventName="Click" />
                                                <asp:AsyncPostBackTrigger ControlID="Btn_addNewWorkAreaSave" EventName="Click" />
                                                <asp:AsyncPostBackTrigger ControlID="Btn_addNewWorkAreaAdd" EventName="Click" />
                                            </Triggers>
                                        </asp:UpdatePanel>
                                        <asp:UpdateProgress ID="UpdtPs_addWorkArea" runat="server">
                                            <ProgressTemplate>
                                                <div style="position: fixed; text-align: center; height: 100%; width: 100%; top: 0; right: 0; left: 0; z-index: 9999999; background-color: #000000; opacity: 0.7;">
                                                    <asp:Image ID="imgUpdateProgress" runat="server" ImageUrl="~/Content/animation/Flickr-1s-100px.gif" AlternateText="Loading ..." ToolTip="Loading ..." Style="padding: 10px; position: fixed; top: 45%; left: 50%;" />
                                                </div>
                                            </ProgressTemplate>
                                        </asp:UpdateProgress>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card-footer text-center">
                            <asp:Button ID="Btn_addNewWorkAreaSave" runat="server" Text="เพิ่ม" CssClass="btn btn-primary" data-toggle="modal" data-target="#addNewWorkAreaModalCenter" />
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="list-authControl" role="tabpanel" aria-labelledby="list-authControl-list">
                    <div class="card">
                        <div class="card-header text-center" style="background-color: #28A745; color: #ffffff;">
                            กำหนดสิทธิ์เจ้าหน้าที่คุมงาน
                        </div>
                        <div class="card-body">
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="input-group">
                                            <asp:TextBox ID="Tb_authControlFilter" runat="server" CssClass="form-control" placeholder="ชื่อเจ้าหน้าที่" aria-label="ชื่อเจ้าหน้าที่"></asp:TextBox>
                                            <div class="input-group-append">
                                                <asp:Button ID="Btb_authControlFilter" runat="server" Text="ค้นหา" CssClass="btn btn-outline-success" OnClick="Btb_authControlFilter_Click" />
                                            </div>
                                        </div>
                                        <br />
                                        <asp:UpdatePanel ID="Udpn_authControl" runat="server">
                                            <ContentTemplate>
                                                <asp:GridView ID="Gv_authControl" runat="server" AllowPaging="True" AutoGenerateColumns="False" BorderStyle="None" DataKeyNames="Id" DataSourceID="SqlDataSourceAUTH_CONTROL" CssClass="table-responsive" Width="100%" GridLines="None" HeaderStyle-ForeColor="#28A745" AllowSorting="True">
                                                    <Columns>
                                                        <asp:TemplateField HeaderText="รหัสเจ้าหน้าที่" SortExpression="OFFICER_ID">
                                                            <EditItemTemplate>
                                                                <div style="width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:TextBox runat="server" Text='<%# Bind("OFFICER_ID") %>' ID="Tb_AUTH_OFFICER_ID" CssClass="form-control"></asp:TextBox>
                                                                </div>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <div style="width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:Label runat="server" Text='<%# Bind("OFFICER_ID") %>' ID="Lb_AUTH_OFFICER_ID"></asp:Label>
                                                                </div>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="ชื่อ" SortExpression="OFFICER_FIRSTNAME">
                                                            <EditItemTemplate>
                                                                <div style="width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:TextBox runat="server" Text='<%# Bind("OFFICER_FIRSTNAME") %>' ID="Tb_AUTH_OFFICER_FIRSTNAME" CssClass="form-control"></asp:TextBox>
                                                                </div>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <div style="width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:Label runat="server" Text='<%# Bind("OFFICER_FIRSTNAME") %>' ID="Lb_AUTH_OFFICER_FIRSTNAME"></asp:Label>
                                                                </div>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="นามสกุล" SortExpression="AUTH_LASTNAME">
                                                            <EditItemTemplate>
                                                                <div style="width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:TextBox runat="server" Text='<%# Bind("AUTH_LASTNAME") %>' ID="Tb_AUTH_OFFICER_LASTNAME" CssClass="form-control"></asp:TextBox>
                                                                </div>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <div style="width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:Label runat="server" Text='<%# Bind("AUTH_LASTNAME") %>' ID="Tb_AUTH_OFFICER_LASTNAME"></asp:Label>
                                                                </div>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="หน่วยงาน" SortExpression="DEPARTMENT">
                                                            <EditItemTemplate>
                                                                <div style="width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:DropDownList ID="Ddl_EDD_AUTH_CONTROL_ET" runat="server" DataSourceID="SqlDataSourceEDD_AUTH_CONTROL" DataTextField="DEPARTMENT_NAME" DataValueField="DEPARTMENT_NAME" SelectedValue='<%# Bind("DEPARTMENT") %>' CssClass="form-control">
                                                                    </asp:DropDownList>
                                                                    <asp:SqlDataSource ID="SqlDataSourceEDD_AUTH_CONTROL" runat="server" ConnectionString="<%$ ConnectionStrings:psustfdbConnectionString %>" SelectCommand="SELECT [DEPARTMENT_NAME] FROM [ESSENTIAL_DATA_DEPARTMENT]"></asp:SqlDataSource>
                                                                </div>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <div style="width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:Label runat="server" Text='<%# Bind("DEPARTMENT") %>' ID="Lb_AUTH_DEPARTMENT"></asp:Label>
                                                                </div>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="ภาคเรียน" SortExpression="STUDY_TERM">
                                                            <EditItemTemplate>
                                                                <div style="width: 70px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:DropDownList ID="Ddl_EDST_AUTHCONTROL" runat="server" DataSourceID="SqlDataSourceESSENTIAL_DATA_STUDY_TERMS" DataTextField="STUDY_TERMS" DataValueField="STUDY_TERMS" SelectedValue='<%# Bind("STUDY_TERM") %>' CssClass="form-control">
                                                                    </asp:DropDownList>
                                                                </div>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <div style="width: 70px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:Label runat="server" Text='<%# Bind("STUDY_TERM") %>' ID="Lb_AUTH_STUDY_TERM"></asp:Label>
                                                                </div>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="ปีการศึกษา" SortExpression="STUDY_YEAR">
                                                            <EditItemTemplate>
                                                                <div style="width: 70px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:DropDownList ID="Ddl_EDSY_AUTHCONTROL" runat="server" DataSourceID="SqlDataSourceESSENTIAL_DATA_STUDY_YEARS" DataTextField="STUDY_YEARS" DataValueField="STUDY_YEARS" SelectedValue='<%# Bind("STUDY_YEAR") %>' CssClass="form-control">
                                                                    </asp:DropDownList>
                                                                </div>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <div style="width: 70px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:Label runat="server" Text='<%# Bind("STUDY_YEAR") %>' ID="Lb_AUTH_STUDY_YEAR"></asp:Label>
                                                                </div>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="การเข้าถึง" SortExpression="PERMISSION">
                                                            <EditItemTemplate>
                                                                <div style="width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:DropDownList ID="Ddl_EDP_AUTHCONTROL" runat="server" DataSourceID="SqlDataSourceESSENTIAL_DATA_PERMISSION" DataTextField="PERMISSION" DataValueField="PERMISSION" SelectedValue='<%# Bind("PERMISSION") %>' CssClass="form-control">
                                                                    </asp:DropDownList>
                                                                    <asp:SqlDataSource ID="SqlDataSourceESSENTIAL_DATA_PERMISSION" runat="server" ConnectionString="<%$ ConnectionStrings:psustfdbConnectionString %>" SelectCommand="SELECT [PERMISSION] FROM [ESSENTIAL_DATA_PERMISSION]"></asp:SqlDataSource>
                                                                </div>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <div style="width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:Label runat="server" Text='<%# Bind("PERMISSION") %>' ID="Lb_AUTH_PERMISSION"></asp:Label>
                                                                </div>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField>
                                                            <ItemTemplate>
                                                                <asp:ImageButton ImageUrl="~/Content/flaticon/003-edit.png" runat="server" CommandName="Edit" ToolTip="Edit" Width="20px" Height="20px" />
                                                                <asp:ImageButton ImageUrl="~/Content/flaticon/002-delete-button.png" runat="server" CommandName="Delete" ToolTip="ลบ" Width="20px" Height="20px" OnClientClick="return confirm('คุณต้องการลบข้อมูลนี้ใช่หรือไม่');"
                                                                    AlternateText="ลบข้อมูล" />
                                                            </ItemTemplate>
                                                            <EditItemTemplate>
                                                                <asp:ImageButton ImageUrl="~/Content/flaticon/004-update-arrows.png" runat="server" CommandName="Update" ToolTip="Update" Width="20px" Height="20px" />
                                                                <asp:ImageButton ImageUrl="~/Content/flaticon/001-cancel.png" runat="server" CommandName="Cancel" ToolTip="Cancel" Width="20px" Height="20px" AlternateText="ยกเลิก" />
                                                            </EditItemTemplate>
                                                        </asp:TemplateField>

                                                    </Columns>
                                                    <HeaderStyle ForeColor="#28A745" />
                                                    <RowStyle BorderStyle="None" />
                                                </asp:GridView>
                                                <asp:SqlDataSource runat="server" ID="SqlDataSourceAUTH_CONTROL" ConnectionString='<%$ ConnectionStrings:psustfdbConnectionString %>' DeleteCommand="DELETE FROM [AUTH_CONTROL] WHERE [ID] = @ID" InsertCommand="INSERT INTO [AUTH_CONTROL] ([OFFICER_FIRSTNAME], [AUTH_LASTNAME], [OFFICER_ID], [DEPARTMENT], [STUDY_TERM], [STUDY_YEAR], [PERMISSION], [ADMIN_ID], [TIMESTAMP]) VALUES (@OFFICER_FIRSTNAME, @AUTH_LASTNAME, @OFFICER_ID, @DEPARTMENT, @STUDY_TERM, @STUDY_YEAR, @PERMISSION, @ADMIN_ID, @TIMESTAMP)" SelectCommand="SELECT * FROM [AUTH_CONTROL]" UpdateCommand="UPDATE [AUTH_CONTROL] SET [OFFICER_FIRSTNAME] = @OFFICER_FIRSTNAME, [AUTH_LASTNAME] = @AUTH_LASTNAME, [OFFICER_ID] = @OFFICER_ID, [DEPARTMENT] = @DEPARTMENT, [STUDY_TERM] = @STUDY_TERM, [STUDY_YEAR] = @STUDY_YEAR, [PERMISSION] = @PERMISSION WHERE [ID] = @ID">
                                                    <DeleteParameters>
                                                        <asp:Parameter Name="ID" Type="Int32"></asp:Parameter>
                                                    </DeleteParameters>
                                                    <InsertParameters>
                                                        <asp:Parameter Name="OFFICER_FIRSTNAME" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="AUTH_LASTNAME" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="OFFICER_ID" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="DEPARTMENT" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="STUDY_TERM" Type="Int32"></asp:Parameter>
                                                        <asp:Parameter Name="STUDY_YEAR" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="PERMISSION" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="ADMIN_ID" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="TIMESTAMP" Type="DateTime"></asp:Parameter>
                                                    </InsertParameters>
                                                    <UpdateParameters>
                                                        <asp:Parameter Name="OFFICER_FIRSTNAME" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="AUTH_LASTNAME" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="OFFICER_ID" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="DEPARTMENT" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="STUDY_TERM" Type="Int32"></asp:Parameter>
                                                        <asp:Parameter Name="STUDY_YEAR" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="PERMISSION" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="ADMIN_ID" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="TIMESTAMP" Type="DateTime"></asp:Parameter>
                                                        <asp:Parameter Name="ID" Type="Int32"></asp:Parameter>
                                                    </UpdateParameters>
                                                </asp:SqlDataSource>
                                            </ContentTemplate>
                                            <Triggers>
                                                <asp:AsyncPostBackTrigger ControlID="Btb_authControlFilter" EventName="Click" />
                                                <asp:AsyncPostBackTrigger ControlID="Btn_authControlSave" EventName="Click" />
                                                <asp:AsyncPostBackTrigger ControlID="Btn_authControlAdd" EventName="Click" />
                                            </Triggers>
                                        </asp:UpdatePanel>
                                        <asp:UpdateProgress ID="UpdtPs_authControlFilter" runat="server">
                                            <ProgressTemplate>
                                                <div style="position: fixed; text-align: center; height: 100%; width: 100%; top: 0; right: 0; left: 0; z-index: 9999999; background-color: #000000; opacity: 0.7;">
                                                    <asp:Image ID="imgUpdateProgressAuthControl" runat="server" ImageUrl="~/Content/animation/Flickr-1s-100px.gif" AlternateText="Loading ..." ToolTip="Loading ..." Style="padding: 10px; position: fixed; top: 45%; left: 50%;" />
                                                </div>
                                            </ProgressTemplate>
                                        </asp:UpdateProgress>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card-footer text-center">
                            <asp:Button ID="Btn_authControlSave" runat="server" Text="เพิ่ม" CssClass="btn btn-primary" data-toggle="modal" data-target="#authControlModalCenter" />
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="list-officerControl" role="tabpanel" aria-labelledby="list-officerControl-list">
                    <div class="card">
                        <div class="card-header text-center" style="background-color: #28A745; color: #ffffff;">
                            กำหนดสิทธ์เจ้าหน้าที่งานทุน
                        </div>
                        <div class="card-body">
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="input-group">
                                            <asp:TextBox ID="Tb_officerControlFilter" runat="server" CssClass="form-control" placeholder="ชื่อเจ้าหน้าที่" aria-label="ชื่อเจ้าหน้าที่"></asp:TextBox>
                                            <div class="input-group-append">
                                                <asp:Button ID="Btn_officerControlFilter" runat="server" Text="ค้นหา" CssClass="btn btn-outline-success" OnClick="Btn_officerControlFilter_Click" />
                                            </div>
                                        </div>
                                        <br />
                                        <asp:UpdatePanel ID="Udpn_officerControl" runat="server">
                                            <ContentTemplate>
                                                <asp:GridView ID="Gv_officerControl" runat="server" AllowPaging="True" AutoGenerateColumns="False" BorderStyle="None" CssClass="table-responsive" DataKeyNames="Id" DataSourceID="SqlDataSourceOFFICER_CONTROL" GridLines="None" Width="100%" HeaderStyle-ForeColor="#28A745" AllowSorting="True">
                                                    <Columns>
                                                        <asp:TemplateField HeaderText="รหัสเจ้าหน้าที่" SortExpression="OFFICER_ID">
                                                            <EditItemTemplate>
                                                                <div style="width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:TextBox runat="server" Text='<%# Bind("OFFICER_ID") %>' ID="Tb_OFFICER_OFFICER_ID" CssClass="form-control"></asp:TextBox>
                                                                </div>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <div style="width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:Label runat="server" Text='<%# Bind("OFFICER_ID") %>' ID="Lb_OFFICER_OFFICER_ID"></asp:Label>
                                                                </div>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="ชื่อ" SortExpression="OFFICER_FIRSTNAME">
                                                            <EditItemTemplate>
                                                                <div style="width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:TextBox runat="server" Text='<%# Bind("OFFICER_FIRSTNAME") %>' ID="Tb_OFFICER_OFFICER_FIRSTNAME" CssClass="form-control"></asp:TextBox>
                                                                </div>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <div style="width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:Label runat="server" Text='<%# Bind("OFFICER_FIRSTNAME") %>' ID="Lb_OFFICER_OFFICER_FIRSTNAME"></asp:Label>
                                                                </div>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="นามสกุล" SortExpression="AUTH_LASTNAME">
                                                            <EditItemTemplate>
                                                                <div style="width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:TextBox runat="server" Text='<%# Bind("AUTH_LASTNAME") %>' ID="Tb_OFFICER_OFFICER_LASTNAME" CssClass="form-control"></asp:TextBox>
                                                                </div>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <div style="width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:Label runat="server" Text='<%# Bind("AUTH_LASTNAME") %>' ID="Lb_OFFICER_OFFICER_LASTNAME"></asp:Label>
                                                                </div>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="หน่วยงาน" SortExpression="DEPARTMENT">
                                                            <EditItemTemplate>
                                                                <div style="width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:DropDownList ID="Ddl_EDD_OFFICERCONTROL_EI" runat="server" DataSourceID="SqlDataSourceEDD_OFFICERCONTROL" DataTextField="DEPARTMENT_NAME" DataValueField="DEPARTMENT_NAME" SelectedValue='<%# Bind("DEPARTMENT") %>' CssClass="form-control">
                                                                    </asp:DropDownList>
                                                                    <asp:SqlDataSource ID="SqlDataSourceEDD_OFFICERCONTROL" runat="server" ConnectionString="<%$ ConnectionStrings:psustfdbConnectionString %>" SelectCommand="SELECT [DEPARTMENT_NAME] FROM [ESSENTIAL_DATA_DEPARTMENT]"></asp:SqlDataSource>
                                                                </div>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <div style="width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:Label runat="server" Text='<%# Bind("DEPARTMENT") %>' ID="Lb_OFFICER_DEPARTMENT"></asp:Label>
                                                                </div>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="ภาคเรียน" SortExpression="STUDY_TERM">
                                                            <EditItemTemplate>
                                                                <div style="width: 70px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:DropDownList ID="Ddl_EDST_OFFICERCONTROL_EI" runat="server" DataSourceID="SqlDataSourceEDST_OFFICERCONTROL" DataTextField="STUDY_TERMS" DataValueField="STUDY_TERMS" SelectedValue='<%# Bind("STUDY_TERM") %>' CssClass="form-control">
                                                                    </asp:DropDownList>
                                                                    <asp:SqlDataSource ID="SqlDataSourceEDST_OFFICERCONTROL" runat="server" ConnectionString="<%$ ConnectionStrings:psustfdbConnectionString %>" SelectCommand="SELECT [STUDY_TERMS] FROM [ESSENTIAL_DATA_TERMS]"></asp:SqlDataSource>
                                                                </div>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <div style="width: 70px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:Label runat="server" Text='<%# Bind("STUDY_TERM") %>' ID="Lb_OFFICER_STUDY_TERM"></asp:Label>
                                                                </div>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="ปีการศึกษา" SortExpression="STUDY_YEAR">
                                                            <EditItemTemplate>
                                                                <div style="width: 70px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:DropDownList ID="Ddl_EDSY_OFFICERCONTROL_EI" runat="server" DataSourceID="SqlDataSourceEDSY_OFFICERCONTROL" DataTextField="STUDY_YEARS" DataValueField="STUDY_YEARS" SelectedValue='<%# Bind("STUDY_YEAR") %>' CssClass="form-control">
                                                                    </asp:DropDownList>
                                                                    <asp:SqlDataSource ID="SqlDataSourceEDSY_OFFICERCONTROL" runat="server" ConnectionString="<%$ ConnectionStrings:psustfdbConnectionString %>" SelectCommand="SELECT [STUDY_YEARS] FROM [ESSENTIAL_DATA_YEARS]"></asp:SqlDataSource>
                                                                </div>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <div style="width: 70px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:Label runat="server" Text='<%# Bind("STUDY_YEAR") %>' ID="Lb_OFFICER_STUDY_YEAR"></asp:Label>
                                                                </div>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="การเข้าถึง" SortExpression="PERMISSION">
                                                            <EditItemTemplate>
                                                                <div style="width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:DropDownList ID="Ddl_EDP_OFFICERCONTROL_EI" runat="server" DataSourceID="SqlDataSourceEDP_OFFICERCONTROL" DataTextField="PERMISSION" DataValueField="PERMISSION" SelectedValue='<%# Bind("PERMISSION") %>' CssClass="form-control">
                                                                    </asp:DropDownList>
                                                                    <asp:SqlDataSource ID="SqlDataSourceEDP_OFFICERCONTROL" runat="server" ConnectionString="<%$ ConnectionStrings:psustfdbConnectionString %>" SelectCommand="SELECT [PERMISSION] FROM [ESSENTIAL_DATA_PERMISSION]"></asp:SqlDataSource>
                                                                </div>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <div style="width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:Label runat="server" Text='<%# Bind("PERMISSION") %>' ID="Lb_OFFICER_PERMISSION"></asp:Label>
                                                                </div>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField>
                                                            <ItemTemplate>
                                                                <asp:ImageButton ImageUrl="~/Content/flaticon/003-edit.png" runat="server" CommandName="Edit" ToolTip="Edit" Width="20px" Height="20px" />
                                                                <asp:ImageButton ImageUrl="~/Content/flaticon/002-delete-button.png" runat="server" CommandName="Delete" ToolTip="ลบ" Width="20px" Height="20px" OnClientClick="return confirm('คุณต้องการลบข้อมูลนี้ใช่หรือไม่');"
                                                                    AlternateText="ลบข้อมูล" />
                                                            </ItemTemplate>
                                                            <EditItemTemplate>
                                                                <asp:ImageButton ImageUrl="~/Content/flaticon/004-update-arrows.png" runat="server" CommandName="Update" ToolTip="Update" Width="20px" Height="20px" />
                                                                <asp:ImageButton ImageUrl="~/Content/flaticon/001-cancel.png" runat="server" CommandName="Cancel" ToolTip="Cancel" Width="20px" Height="20px" AlternateText="ยกเลิก" />
                                                            </EditItemTemplate>
                                                        </asp:TemplateField>
                                                    </Columns>
                                                    <HeaderStyle ForeColor="#28A745" />
                                                    <RowStyle BorderStyle="None" />
                                                </asp:GridView>
                                                <asp:SqlDataSource runat="server" ID="SqlDataSourceOFFICER_CONTROL" ConnectionString='<%$ ConnectionStrings:psustfdbConnectionString %>' DeleteCommand="DELETE FROM [OFFICER_CONTROL] WHERE [ID] = @ID" InsertCommand="INSERT INTO [OFFICER_CONTROL] ([OFFICER_FIRSTNAME], [AUTH_LASTNAME], [OFFICER_ID], [DEPARTMENT], [STUDY_TERM], [STUDY_YEAR], [PERMISSION], [ADMIN_ID], [TIMESTAMP]) VALUES (@OFFICER_FIRSTNAME, @AUTH_LASTNAME, @OFFICER_ID, @DEPARTMENT, @STUDY_TERM, @STUDY_YEAR, @PERMISSION, @ADMIN_ID, @TIMESTAMP)" SelectCommand="SELECT * FROM [OFFICER_CONTROL]" UpdateCommand="UPDATE [OFFICER_CONTROL] SET [OFFICER_FIRSTNAME] = @OFFICER_FIRSTNAME, [AUTH_LASTNAME] = @AUTH_LASTNAME, [OFFICER_ID] = @OFFICER_ID, [DEPARTMENT] = @DEPARTMENT, [STUDY_TERM] = @STUDY_TERM, [STUDY_YEAR] = @STUDY_YEAR, [PERMISSION] = @PERMISSION WHERE [ID] = @ID">
                                                    <DeleteParameters>
                                                        <asp:Parameter Name="ID" Type="Int32"></asp:Parameter>
                                                    </DeleteParameters>
                                                    <InsertParameters>
                                                        <asp:Parameter Name="OFFICER_FIRSTNAME" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="AUTH_LASTNAME" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="OFFICER_ID" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="DEPARTMENT" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="STUDY_TERM" Type="Int32"></asp:Parameter>
                                                        <asp:Parameter Name="STUDY_YEAR" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="PERMISSION" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="ADMIN_ID" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="TIMESTAMP" Type="DateTime"></asp:Parameter>
                                                    </InsertParameters>
                                                    <UpdateParameters>
                                                        <asp:Parameter Name="OFFICER_FIRSTNAME" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="AUTH_LASTNAME" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="OFFICER_ID" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="DEPARTMENT" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="STUDY_TERM" Type="Int32"></asp:Parameter>
                                                        <asp:Parameter Name="STUDY_YEAR" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="PERMISSION" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="ADMIN_ID" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="TIMESTAMP" Type="DateTime"></asp:Parameter>
                                                        <asp:Parameter Name="ID" Type="Int32"></asp:Parameter>
                                                    </UpdateParameters>
                                                </asp:SqlDataSource>
                                            </ContentTemplate>
                                            <Triggers>
                                                <asp:AsyncPostBackTrigger ControlID="Btn_officerControlFilter" EventName="Click" />
                                                <asp:AsyncPostBackTrigger ControlID="Btn_officerControlSave" EventName="Click" />
                                                <asp:AsyncPostBackTrigger ControlID="Btn_officerControlAdd" EventName="Click" />
                                            </Triggers>
                                        </asp:UpdatePanel>
                                        <asp:UpdateProgress ID="UpdtPs_officerControlFilter" runat="server">
                                            <ProgressTemplate>
                                                <div style="position: fixed; text-align: center; height: 100%; width: 100%; top: 0; right: 0; left: 0; z-index: 9999999; background-color: #000000; opacity: 0.7;">
                                                    <asp:Image ID="imgUpdateProgressOfficerControl" runat="server" ImageUrl="~/Content/animation/Flickr-1s-100px.gif" AlternateText="Loading ..." ToolTip="Loading ..." Style="padding: 10px; position: fixed; top: 45%; left: 50%;" />
                                                </div>
                                            </ProgressTemplate>
                                        </asp:UpdateProgress>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card-footer text-center">
                            <asp:Button ID="Btn_officerControlSave" runat="server" Text="เพิ่ม" CssClass="btn btn-primary" data-toggle="modal" data-target="#officerControlModalCenter" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- add new work area modal -->
    <div class="modal fade" id="addNewWorkAreaModalCenter" tabindex="-1" role="dialog" aria-labelledby="เพิ่มสถานที่ทำงาน" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="addNewWorkAreaModalLongTitle">เพิ่มสถานที่ทำงาน</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="">ชื่อสถานที่ทำงาน</span>
                        </div>
                        <asp:TextBox ID="Tb_addNewWorkAreaName" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="">จำนวนนักศึกษา</span>
                        </div>
                        <asp:DropDownList ID="Ddl_addNewWorkAreaAmount" runat="server" CssClass="form-control" DataSourceID="SqlDataSourceESSENTIAL_DATA_STUDENT_REQUESTED" DataTextField="STUDENT_REQUESTED" DataValueField="STUDENT_REQUESTED">
                        </asp:DropDownList>
                        <asp:SqlDataSource runat="server" ID="SqlDataSourceESSENTIAL_DATA_STUDENT_REQUESTED" ConnectionString='<%$ ConnectionStrings:psustfdbConnectionString %>' SelectCommand="SELECT [STUDENT_REQUESTED] FROM [ESSENTIAL_DATA_STUDENT_REQUESTED]"></asp:SqlDataSource>
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="">ภาคการศึกษา</span>
                        </div>
                        <asp:DropDownList ID="Ddl_addNewWorkAreaStudyYear" runat="server" CssClass="form-control" DataSourceID="SqlDataSourceESSENTIAL_DATA_STUDY_TERMS" DataTextField="STUDY_TERMS" DataValueField="STUDY_TERMS">
                        </asp:DropDownList>
                        <asp:SqlDataSource runat="server" ID="SqlDataSourceESSENTIAL_DATA_STUDY_TERMS" ConnectionString='<%$ ConnectionStrings:psustfdbConnectionString %>' SelectCommand="SELECT [STUDY_TERMS] FROM [ESSENTIAL_DATA_TERMS]"></asp:SqlDataSource>
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="">ปีการศึกษา</span>
                        </div>
                        <asp:DropDownList ID="Ddl_addNewWorkAreaStudyYears" runat="server" CssClass="form-control" DataSourceID="SqlDataSourceESSENTIAL_DATA_STUDY_YEARS" DataTextField="STUDY_YEARS" DataValueField="STUDY_YEARS">
                        </asp:DropDownList>
                        <asp:SqlDataSource runat="server" ID="SqlDataSourceESSENTIAL_DATA_STUDY_YEARS" ConnectionString='<%$ ConnectionStrings:psustfdbConnectionString %>' SelectCommand="SELECT [STUDY_YEARS] FROM [ESSENTIAL_DATA_YEARS]"></asp:SqlDataSource>
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="">ชื่อ-นามสกุล</span>
                        </div>
                        <asp:TextBox ID="Tb_addNewWorkAreaAuthFName" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:TextBox ID="Tb_addNewWorkAreaAuthLname" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="">รหัสเจ้าหน้าที่คุมงาน</span>
                        </div>
                        <asp:TextBox ID="Tb_addNewWorkAreaAuthID" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="">สถานะ</span>
                        </div>
                        <asp:DropDownList ID="Ddl_addNewWorkAreaStatus" runat="server" CssClass="form-control" DataSourceID="SqlDataSourceESSENTIAL_DATA_STATUS" DataTextField="STATUS" DataValueField="STATUS">
                        </asp:DropDownList>
                        <asp:SqlDataSource runat="server" ID="SqlDataSourceESSENTIAL_DATA_STATUS" ConnectionString='<%$ ConnectionStrings:psustfdbConnectionString %>' SelectCommand="SELECT [STATUS] FROM [ESSENTIAL_DATA_STATUS]"></asp:SqlDataSource>
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="">Admin ID</span>
                        </div>
                        <asp:TextBox ID="Tb_addNewWorkAreaAdminID" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="modal-footer">
                    <asp:Button ID="Btn_addNewWorkAreaCancel" runat="server" Text="ยกเลิก" CssClass="btn btn-secondary" data-dismiss="modal" />
                    <asp:Button ID="Btn_addNewWorkAreaAdd" runat="server" Text="เพิ่ม" CssClass="btn btn-primary" OnClick="Btn_addNewWorkAreaAdd_Click" />
                </div>
            </div>
        </div>
    </div>
    <!-- auth control modal -->
    <div class="modal fade" id="authControlModalCenter" tabindex="-1" role="dialog" aria-labelledby="กำหนดสิทธิ์เจ้าหน้าที่คุมงาน" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="authControlLongTitle">กำหนดสิทธิ์เจ้าหน้าที่คุมงาน</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="">ชื่อ-นามสกุล</span>
                        </div>
                        <asp:TextBox ID="Tb_authControlFirstName" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:TextBox ID="Tb_authControlLastName" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="input-group mb-3">
                                                <div class="input-group-prepend">
                            <span class="input-group-text" id="">รหัสเจ้าหน้าที่คุมงาน</span>
                        </div>
                        <asp:TextBox ID="Tb_authControlAuthID" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="input-group mb-3">
                                                                        <div class="input-group-prepend">
                            <span class="input-group-text" id="">หน่วยงาน</span>
                        </div>
                        <asp:DropDownList ID="Ddl_authControlAuthDepartment" runat="server" CssClass="form-control" DataSourceID="SqlDataSourceEDD_AUTHCONTROL" DataTextField="DEPARTMENT_NAME" DataValueField="DEPARTMENT_NAME"></asp:DropDownList>
                        <asp:SqlDataSource runat="server" ID="SqlDataSourceEDD_AUTHCONTROL" ConnectionString='<%$ ConnectionStrings:psustfdbConnectionString %>' SelectCommand="SELECT [DEPARTMENT_NAME] FROM [ESSENTIAL_DATA_DEPARTMENT]"></asp:SqlDataSource>
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="">ภาคการศึกษา</span>
                        </div>
                        <asp:DropDownList ID="Ddl_authControlStudyYear" runat="server" CssClass="form-control" DataSourceID="SqlDataSourceESSENTIAL_DATA_STUDY_TERMS" DataTextField="STUDY_TERMS" DataValueField="STUDY_TERMS">
                        </asp:DropDownList>
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="">ปีการศึกษา</span>
                        </div>
                        <asp:DropDownList ID="Ddl_authControlStudyYears" runat="server" CssClass="form-control" DataSourceID="SqlDataSourceESSENTIAL_DATA_STUDY_YEARS" DataTextField="STUDY_YEARS" DataValueField="STUDY_YEARS">
                        </asp:DropDownList>
                    </div>
                    <div class="input-group mb-3">
                                                <div class="input-group-prepend">
                            <span class="input-group-text" id="">การเข้าถึง</span>
                        </div>
                        <asp:DropDownList ID="Ddl_authControlAuthPermission" runat="server" CssClass="form-control" DataSourceID="SqlDataSourceEDP_AUTHCONTROL" DataTextField="PERMISSION" DataValueField="PERMISSION"></asp:DropDownList>
                        <asp:SqlDataSource runat="server" ID="SqlDataSourceEDP_AUTHCONTROL" ConnectionString='<%$ ConnectionStrings:psustfdbConnectionString %>' SelectCommand="SELECT [PERMISSION] FROM [ESSENTIAL_DATA_PERMISSION]"></asp:SqlDataSource>
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="">Admin ID</span>
                        </div>
                        <asp:TextBox ID="Tb_authControlAdminID" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="modal-footer">
                    <asp:Button ID="Btn_authControlCancel" runat="server" Text="ยกเลิก" CssClass="btn btn-secondary" data-dismiss="modal" />
                    <asp:Button ID="Btn_authControlAdd" runat="server" Text="เพิ่ม" CssClass="btn btn-primary" OnClick="Btn_authControlAdd_Click" />
                </div>
            </div>
        </div>
    </div>
    <!-- officer control modal -->
    <div class="modal fade" id="officerControlModalCenter" tabindex="-1" role="dialog" aria-labelledby="กำหนดสิทธิ์เจ้าหน้าที่งานทุน" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="officerControlLongTitle">กำหนดสิทธิ์เจ้าหน้าที่คุมงาน</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="">ชื่อ-นามสกุล</span>
                        </div>
                        <asp:TextBox ID="Tb_officerControlFirstname" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:TextBox ID="Tb_officerControlLastname" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="">รหัสเจ้าหน้าที่คุมงาน</span>
                        </div>
                        <asp:TextBox ID="Tb_officerControlOfficerID" runat="server" placeholder="รหัสเจ้าหน้าที่คุมงาน" aria-label="รหัสเจ้าหน้าที่คุมงาน" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="">หน่วยงาน</span>
                        </div>
                        <asp:DropDownList ID="Ddl_officerControlDept" runat="server" CssClass="form-control" DataSourceID="SqlDataSourceEDD_OFFICERCONTROL" DataTextField="DEPARTMENT_NAME" DataValueField="DEPARTMENT_NAME"></asp:DropDownList>
                        <asp:SqlDataSource runat="server" ID="SqlDataSourceEDD_OFFICERCONTROL" ConnectionString='<%$ ConnectionStrings:psustfdbConnectionString %>' SelectCommand="SELECT [DEPARTMENT_NAME] FROM [ESSENTIAL_DATA_DEPARTMENT]"></asp:SqlDataSource>
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="">ภาคการศึกษา</span>
                        </div>
                        <asp:DropDownList ID="Ddl_officerControlStudyYear" runat="server" CssClass="form-control" DataSourceID="SqlDataSourceEDSR_AUTHCONTROL" DataTextField="STUDY_TERMS" DataValueField="STUDY_TERMS">
                        </asp:DropDownList>
                        <asp:SqlDataSource runat="server" ID="SqlDataSourceEDSR_AUTHCONTROL" ConnectionString='<%$ ConnectionStrings:psustfdbConnectionString %>' SelectCommand="SELECT [STUDY_TERMS] FROM [ESSENTIAL_DATA_TERMS]"></asp:SqlDataSource>
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="">ปีการศึกษา</span>
                        </div>
                        <asp:DropDownList ID="Ddl_officerControlStudyYears" runat="server" CssClass="form-control" DataSourceID="SqlDataSourceEDY_AUTHCONTROL" DataTextField="STUDY_YEARS" DataValueField="STUDY_YEARS">
                        </asp:DropDownList>
                        <asp:SqlDataSource runat="server" ID="SqlDataSourceEDY_AUTHCONTROL" ConnectionString='<%$ ConnectionStrings:psustfdbConnectionString %>' SelectCommand="SELECT [STUDY_YEARS] FROM [ESSENTIAL_DATA_YEARS]"></asp:SqlDataSource>
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="">การเข้าถึง</span>
                        </div>
                        <asp:DropDownList ID="Ddl_officerControlPermission" runat="server" CssClass="form-control" DataSourceID="SqlDataSourceEDP_AUTHCONTROLFORM" DataTextField="PERMISSION" DataValueField="PERMISSION">
                        </asp:DropDownList>
                        <asp:SqlDataSource runat="server" ID="SqlDataSourceEDP_AUTHCONTROLFORM" ConnectionString='<%$ ConnectionStrings:psustfdbConnectionString %>' SelectCommand="SELECT [PERMISSION] FROM [ESSENTIAL_DATA_PERMISSION]"></asp:SqlDataSource>
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="">Admin ID</span>
                        </div>
                        <asp:TextBox ID="Tb_officerControlAdminID" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="modal-footer">
                    <asp:Button ID="Btn_officerControlCancel" runat="server" Text="ยกเลิก" CssClass="btn btn-secondary" data-dismiss="modal" />
                    <asp:Button ID="Btn_officerControlAdd" runat="server" Text="เพิ่ม" CssClass="btn btn-primary" OnClick="Btn_officerControlAdd_Click" />
                </div>
            </div>
        </div>
    </div>
    <br />
</asp:Content>
