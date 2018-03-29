<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="auth_control.aspx.cs" Inherits="project2v3.auth_control" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <div class="row">
        <div class="col-md-3">
            <div class="list-group" id="list-tab" role="tablist">
                <a class="list-group-item list-group-item-action active" id="list_authRequestStd_list" data-toggle="list" href="#list_authRequestStd" role="tab" aria-controls="authRequestStd">ส่งคำร้องขอนักศึกษาช่วยงาน</a>
                <a class="list-group-item list-group-item-action" id="list_authStdTimeConfirm_list" data-toggle="list" href="#list_authStdTimeConfirm" role="tab" aria-controls="authStdTimeConfirm">ยืนยันชั่วโมงทำงาน</a>
            </div>
        </div>
        <div class="col-md-9">
            <div class="tab-content" id="nav-tabContent">
                <div class="tab-pane fade show active" id="list_authRequestStd" role="tabpanel" aria-labelledby="list_authRequestStd_list">
                    <div class="card">
                        <div class="card-header text-center" style="background-color: #28A745; color: #ffffff;">
                            ส่งคำร้องขอนักศึกษาช่วยงาน
                        </div>
                        <div class="card-body">
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="input-group">
                                            <asp:TextBox ID="Tb_authRequestStdFilter" runat="server" CssClass="form-control" placeholder="ลักษณะของงาน" aria-label="ลักษณะของงาน"></asp:TextBox>
                                            <div class="input-group-append">
                                                <asp:Button ID="Btn_authRequestStdFilter" runat="server" Text="ค้นหา" CssClass="btn btn-outline-success" OnClick="Btn_authRequestStdFilter_Click" />
                                            </div>
                                        </div>
                                        <br />
                                        <asp:UpdatePanel ID="Udpn_authRequestStd" runat="server">
                                            <ContentTemplate>
                                                <asp:GridView ID="Gv_authRequestStd" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSourceREQUEST_STUDENT" AllowPaging="True" BorderStyle="None" CssClass="table-responsive" GridLines="None" RowStyle-BorderStyle="None" Width="100%" HeaderStyle-ForeColor="#28A745" AllowSorting="True">
                                                    <Columns>
                                                        <asp:TemplateField HeaderText="หน่วยงาน" SortExpression="WORK_DEPARTMENT">
                                                            <EditItemTemplate>
                                                                <div style="width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:DropDownList ID="Ddl_EDD_REQUEST_STUDENT_ET" runat="server" SelectedValue='<%# Bind("WORK_DEPARTMENT") %>' CssClass="form-control" DataSourceID="SqlDataSourceAUTH_GV_DEPARTMENT" DataTextField="DEPARTMENT" DataValueField="DEPARTMENT">
                                                                    </asp:DropDownList>

                                                                    <asp:SqlDataSource runat="server" ID="SqlDataSourceAUTH_GV_DEPARTMENT" ConnectionString='<%$ ConnectionStrings:psustfdbConnectionString %>' SelectCommand="SELECT [DEPARTMENT] FROM [ADD_WORKAREA] WHERE ([STATUS] = @STATUS)">
                                                                        <SelectParameters>
                                                                            <asp:Parameter DefaultValue="Open" Name="STATUS" Type="String"></asp:Parameter>
                                                                        </SelectParameters>
                                                                    </asp:SqlDataSource>
                                                                </div>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <div style="width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:Label runat="server" Text='<%# Bind("WORK_DEPARTMENT") %>' ID="Lb_EDD_REQUEST_STUDENT_ET"></asp:Label>
                                                                </div>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="จำนวน" SortExpression="REQUEST_AMOUNT">
                                                            <EditItemTemplate>
                                                                <div style="width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:DropDownList ID="Ddl_EDRS_REQUEST_STUDENT_ET" runat="server" DataSourceID="SqlDataSourceEDRS_REQUEST_STUDENT_ET" DataTextField="STUDENT_REQUESTED" DataValueField="STUDENT_REQUESTED" SelectedValue='<%# Bind("REQUEST_AMOUNT") %>' CssClass="form-control">
                                                                    </asp:DropDownList>
                                                                    <asp:SqlDataSource ID="SqlDataSourceEDRS_REQUEST_STUDENT_ET" runat="server" ConnectionString="<%$ ConnectionStrings:psustfdbConnectionString %>" SelectCommand="SELECT [STUDENT_REQUESTED] FROM [ESSENTIAL_DATA_STUDENT_REQUESTED]"></asp:SqlDataSource>
                                                                </div>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <div style="width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:Label runat="server" Text='<%# Bind("REQUEST_AMOUNT") %>' ID="Lb_EDRS_REQUEST_STUDENT_ET"></asp:Label>
                                                                </div>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="ลักษณะของงาน" SortExpression="WORK_DESCRIPTION">
                                                            <EditItemTemplate>
                                                                <div style="width: 150px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:TextBox runat="server" Text='<%# Bind("WORK_DESCRIPTION") %>' ID="Tb_WORK_DESCRIPTION" CssClass="form-control"></asp:TextBox>
                                                                </div>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <div style="width: 150px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:Label runat="server" Text='<%# Bind("WORK_DESCRIPTION") %>' ID="Lb_WORK_DESCRIPTION"></asp:Label>
                                                                </div>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="ภาคเรียน" SortExpression="STUDY_TERMS">
                                                            <EditItemTemplate>
                                                                <div style="width: 70px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:DropDownList ID="Ddl_EDT_REQUEST_STUDENT_ET" runat="server" DataSourceID="SqlDataSourceEDT_REQUEST_STUDENT_ET" DataTextField="STUDY_TERMS" DataValueField="STUDY_TERMS" SelectedValue='<%# Bind("STUDY_TERMS") %>' CssClass="form-control">
                                                                    </asp:DropDownList>
                                                                    <asp:SqlDataSource ID="SqlDataSourceEDT_REQUEST_STUDENT_ET" runat="server" ConnectionString="<%$ ConnectionStrings:psustfdbConnectionString %>" SelectCommand="SELECT [STUDY_TERMS] FROM [ESSENTIAL_DATA_TERMS]"></asp:SqlDataSource>
                                                                </div>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <div style="width: 70px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:Label runat="server" Text='<%# Bind("STUDY_TERMS") %>' ID="Lb_EDT_REQUEST_STUDENT_ET"></asp:Label>
                                                                </div>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="ปีการศึกษา" SortExpression="STUDY_YEARS">
                                                            <EditItemTemplate>
                                                                <div style="width: 70px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:DropDownList ID="Ddl_EDY_REQUEST_STUDENT_ET" runat="server" DataSourceID="SqlDataSourceEDY_REQUEST_STUDENT_ET" DataTextField="STUDY_YEARS" DataValueField="STUDY_YEARS" SelectedValue='<%# Bind("STUDY_YEARS") %>' CssClass="form-control">
                                                                    </asp:DropDownList>
                                                                    <asp:SqlDataSource ID="SqlDataSourceEDY_REQUEST_STUDENT_ET" runat="server" ConnectionString="<%$ ConnectionStrings:psustfdbConnectionString %>" SelectCommand="SELECT [STUDY_YEARS] FROM [ESSENTIAL_DATA_YEARS]"></asp:SqlDataSource>
                                                                </div>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <div style="width: 70px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:Label runat="server" Text='<%# Bind("STUDY_YEARS") %>' ID="Lb_EDY_REQUEST_STUDENT_ET"></asp:Label>
                                                                </div>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="รหัสเจ้าหน้าที่" SortExpression="AUTH_CONTROL_ID">
                                                            <EditItemTemplate>
                                                                <div style="width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:TextBox runat="server" Text='<%# Bind("AUTH_CONTROL_ID") %>' ID="Tb_AUTH_CONTROL_ID" CssClass="form-control"></asp:TextBox>
                                                                </div>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <div style="width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:Label runat="server" Text='<%# Bind("AUTH_CONTROL_ID") %>' ID="Lb_AUTH_CONTROL_ID"></asp:Label>
                                                                </div>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="สถานะ" SortExpression="STATUS">
                                                            <EditItemTemplate>
                                                                <div style="width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:TextBox ID="Tb_EDS_REQUEST_STUDENT_ET" runat="server" Text='<%# Bind("STATUS") %>' CssClass="form-control" ReadOnly="True"></asp:TextBox>
                                                                </div>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <div style="width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:Label runat="server" Text='<%# Bind("STATUS") %>' ID="Lb_EDS_REQUEST_STUDENT_ET"></asp:Label>
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
                                                <asp:SqlDataSource runat="server" ID="SqlDataSourceREQUEST_STUDENT" ConnectionString='<%$ ConnectionStrings:psustfdbConnectionString %>' DeleteCommand="DELETE FROM [REQUEST_STUDENT] WHERE [ID] = @ID" InsertCommand="INSERT INTO [REQUEST_STUDENT] ([WORK_DEPARTMENT], [REQUEST_AMOUNT], [WORK_DESCRIPTION], [STUDY_TERMS], [STUDY_YEARS], [AUTH_CONTROL_ID], [AUTH_CONTROL_FIRSTNAME], [AUTH_CONTROL_LASTNAME], [STATUS], [TIMESTAMP]) VALUES (@WORK_DEPARTMENT, @REQUEST_AMOUNT, @WORK_DESCRIPTION, @STUDY_TERMS, @STUDY_YEARS, @AUTH_CONTROL_ID, @AUTH_CONTROL_FIRSTNAME, @AUTH_CONTROL_LASTNAME, @STATUS, @TIMESTAMP)" SelectCommand="SELECT * FROM [REQUEST_STUDENT]" UpdateCommand="UPDATE [REQUEST_STUDENT] SET [WORK_DEPARTMENT] = @WORK_DEPARTMENT, [REQUEST_AMOUNT] = @REQUEST_AMOUNT, [WORK_DESCRIPTION] = @WORK_DESCRIPTION, [STUDY_TERMS] = @STUDY_TERMS, [STUDY_YEARS] = @STUDY_YEARS, [AUTH_CONTROL_ID] = @AUTH_CONTROL_ID, [AUTH_CONTROL_FIRSTNAME] = @AUTH_CONTROL_FIRSTNAME, [AUTH_CONTROL_LASTNAME] = @AUTH_CONTROL_LASTNAME WHERE [ID] = @ID">
                                                    <DeleteParameters>
                                                        <asp:Parameter Name="ID" Type="Int32"></asp:Parameter>
                                                    </DeleteParameters>
                                                    <InsertParameters>
                                                        <asp:Parameter Name="WORK_DEPARTMENT" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="REQUEST_AMOUNT" Type="Int32"></asp:Parameter>
                                                        <asp:Parameter Name="WORK_DESCRIPTION" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="STUDY_TERMS" Type="Int32"></asp:Parameter>
                                                        <asp:Parameter Name="STUDY_YEARS" Type="Int32"></asp:Parameter>
                                                        <asp:Parameter Name="AUTH_CONTROL_ID" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="AUTH_CONTROL_FIRSTNAME" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="AUTH_CONTROL_LASTNAME" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="STATUS" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="TIMESTAMP" Type="DateTime"></asp:Parameter>
                                                    </InsertParameters>
                                                    <UpdateParameters>
                                                        <asp:Parameter Name="WORK_DEPARTMENT" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="REQUEST_AMOUNT" Type="Int32"></asp:Parameter>
                                                        <asp:Parameter Name="WORK_DESCRIPTION" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="STUDY_TERMS" Type="Int32"></asp:Parameter>
                                                        <asp:Parameter Name="STUDY_YEARS" Type="Int32"></asp:Parameter>
                                                        <asp:Parameter Name="AUTH_CONTROL_ID" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="AUTH_CONTROL_FIRSTNAME" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="AUTH_CONTROL_LASTNAME" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="STATUS" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="TIMESTAMP" Type="DateTime"></asp:Parameter>
                                                        <asp:Parameter Name="ID" Type="Int32"></asp:Parameter>
                                                    </UpdateParameters>
                                                </asp:SqlDataSource>
                                            </ContentTemplate>
                                            <Triggers>
                                                <asp:AsyncPostBackTrigger ControlID="Btn_authRequestStdFilter" EventName="Click" />
                                                <asp:AsyncPostBackTrigger ControlID="Btn_authRequestStudent" EventName="Click" />
                                                <asp:AsyncPostBackTrigger ControlID="Btn_requestStudentSend" EventName="Click" />
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
                            <asp:Button ID="Btn_authRequestStudent" runat="server" Text="เพิ่มคำขอ" CssClass="btn btn-primary" data-toggle="modal" data-target="#requestStudentModalCenter" />
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="list_authStdTimeConfirm" role="tabpanel" aria-labelledby="list_authStdTimeConfirm_list">
                    <div class="card">
                        <div class="card-header text-center" style="background-color: #28A745; color: #ffffff;">
                            ยืนยันชั่วโมงทำงาน
                        </div>
                        <div class="card-body">
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-12">
                                       <div class="input-group">
                                            <asp:TextBox ID="Tb_authStudentTimeConfirmFilter" runat="server" CssClass="form-control" placeholder="รหัสนักศึกษา" aria-label="รหัสนักศึกษา"></asp:TextBox>
                                            <div class="input-group-append">
                                                <asp:Button ID="Tb_authStudentTimeConfirmSearch" runat="server" Text="ค้นหา" CssClass="btn btn-outline-success" OnClick="Tb_authStudentTimeConfirmSearch_Click" />
                                            </div>
                                        </div>
                                        <br />
                                        <asp:UpdatePanel ID="Udpn_authStudentTimeConfirm" runat="server">
                                            <ContentTemplate>
                                                <asp:GridView ID="Gv_authStudentTimeConfirm" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSourceSTUDENT_WORKING_TIME_APPROVE" AllowPaging="True" AllowSorting="True" Width="100%" GridLines="None" RowStyle-BorderStyle="None" HeaderStyle-ForeColor="#28A745">
                                                    <Columns>
                                                        <asp:TemplateField HeaderText="รหัสนักศึกษา" SortExpression="STUDENT_ID">
                                                            <EditItemTemplate>
                                                                <div style="width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                <asp:TextBox runat="server" Text='<%# Bind("STUDENT_ID") %>' ID="Tb_STUDENT_ID" CssClass="form-control" ReadOnly="True"></asp:TextBox>
                                                                    </div>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <div style="width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                <asp:Label runat="server" Text='<%# Bind("STUDENT_ID") %>' ID="Lb_STUDENT_ID"></asp:Label>
                                                                    </div>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="รายละเอียด" SortExpression="WORK_DESCRIPTION">
                                                            <EditItemTemplate>
                                                                <div style="width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                <asp:TextBox runat="server" Text='<%# Bind("WORK_DESCRIPTION") %>' ID="Tb_WORK_DESCRIPTION" CssClass="form-control" ReadOnly="True"></asp:TextBox>
                                                                    </div>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <div style="width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                <asp:Label runat="server" Text='<%# Bind("WORK_DESCRIPTION") %>' ID="Lb_WORK_DESCRIPTION"></asp:Label>
                                                                    </div>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="เริ่มงาน" SortExpression="START_WORKING_TIME">
                                                            <EditItemTemplate>
                                                                <div style="width: 70px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                <asp:TextBox runat="server" Text='<%# Bind("START_WORKING_TIME") %>' ID="Tb_START_WORKING_TIME" CssClass="form-control" ReadOnly="True"></asp:TextBox>
                                                                    </div>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <div style="width: 70px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                <asp:Label runat="server" Text='<%# Bind("START_WORKING_TIME") %>' ID="Lb_START_WORKING_TIME"></asp:Label>
                                                                    </div>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="เลิกงาน" SortExpression="END_WORKING_TIME">
                                                            <EditItemTemplate>
                                                                <div style="width: 70px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                <asp:TextBox runat="server" Text='<%# Bind("END_WORKING_TIME") %>' ID="Tb_END_WORKING_TIME" CssClass="form-control" ReadOnly="True"></asp:TextBox>
                                                                    </div>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <div style="width: 70px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                <asp:Label runat="server" Text='<%# Bind("END_WORKING_TIME") %>' ID="Lb_END_WORKING_TIME"></asp:Label>
                                                                    </div>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="วันที่ทำงาน" SortExpression="WORKING_DATE">
                                                            <EditItemTemplate>
                                                                <div style="width: 70px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                <asp:TextBox runat="server" Text='<%# Bind("WORKING_DATE") %>' ID="Tb_WORKING_DATE" CssClass="form-control" ReadOnly="True"></asp:TextBox>
                                                                    </div>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <div style="width: 70px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                <asp:Label runat="server" Text='<%# Bind("WORKING_DATE") %>' ID="Lb_WORKING_DATE"></asp:Label>
                                                                    </div>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="รหัสเจ้าหน้าที่" SortExpression="APPROVER_ID">
                                                            <EditItemTemplate>
                                                                <div style="width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                <asp:TextBox runat="server" Text='<%# Bind("APPROVER_ID") %>' ID="Tb_APPROVER_ID" CssClass="form-control"></asp:TextBox>
                                                                    </div>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <div style="width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                <asp:Label runat="server" Text='<%# Bind("APPROVER_ID") %>' ID="Lb_APPROVER_ID"></asp:Label>
                                                                    </div>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="สถานะ" SortExpression="APPROVE_STATUS">
                                                            <EditItemTemplate>
                                                                <div style="width: 70px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:DropDownList ID="Ddl_authStudentTimeConfirm" runat="server" DataSourceID="SqlDataSourceEDAS_authStudentTimeConfirm" DataTextField="APPROVE_STATUS" DataValueField="APPROVE_STATUS" SelectedValue='<%# Bind("APPROVE_STATUS") %>' CssClass="form-control">
                                                                    </asp:DropDownList>
                                                                    <asp:SqlDataSource ID="SqlDataSourceEDAS_authStudentTimeConfirm" runat="server" ConnectionString="<%$ ConnectionStrings:psustfdbConnectionString %>" SelectCommand="SELECT [APPROVE_STATUS] FROM [ESSENTIAL_DATA_APPROVE_STATUS]"></asp:SqlDataSource>
                                                                    </div>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <div style="width: 70px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                <asp:Label runat="server" Text='<%# Bind("APPROVE_STATUS") %>' ID="Lb_APPROVE_STATUS"></asp:Label>
                                                                    </div>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField>
                                                            <ItemTemplate>
                                                                <asp:ImageButton ImageUrl="~/Content/flaticon/003-edit.png" runat="server" CommandName="Edit" ToolTip="Edit" Width="20px" Height="20px" />
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

                                                <asp:SqlDataSource runat="server" ID="SqlDataSourceSTUDENT_WORKING_TIME_APPROVE" ConnectionString='<%$ ConnectionStrings:psustfdbConnectionString %>' DeleteCommand="DELETE FROM [STUDENT_WORKING_TIME] WHERE [ID] = @ID" InsertCommand="INSERT INTO [STUDENT_WORKING_TIME] ([STUDENT_ID], [STUDENT_FIRSTNAME], [STUDENT_LASTNAME], [WORKING_DEPARTMENT], [WORK_DESCRIPTION], [START_WORKING_TIME], [END_WORKING_TIME], [WORK_HOURS], [WORKING_DATE], [STUDY_TERMS], [STUDY_YEARS], [CREATE_TIMESTAMP], [APPROVER_ID], [APPROVE_STATUS], [APPROVE_TIMESTAMP]) VALUES (@STUDENT_ID, @STUDENT_FIRSTNAME, @STUDENT_LASTNAME, @WORKING_DEPARTMENT, @WORK_DESCRIPTION, @START_WORKING_TIME, @END_WORKING_TIME, @WORK_HOURS, @WORKING_DATE, @STUDY_TERMS, @STUDY_YEARS, @CREATE_TIMESTAMP, @APPROVER_ID, @APPROVE_STATUS, @APPROVE_TIMESTAMP)" SelectCommand="SELECT * FROM [STUDENT_WORKING_TIME]" UpdateCommand="UPDATE [STUDENT_WORKING_TIME] SET [APPROVER_ID] = @APPROVER_ID, [APPROVE_STATUS] = @APPROVE_STATUS WHERE [ID] = @ID">
                                                    <DeleteParameters>
                                                        <asp:Parameter Name="ID" Type="Int32"></asp:Parameter>
                                                    </DeleteParameters>
                                                    <InsertParameters>
                                                        <asp:Parameter Name="STUDENT_ID" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="STUDENT_FIRSTNAME" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="STUDENT_LASTNAME" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="WORKING_DEPARTMENT" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="WORK_DESCRIPTION" Type="String"></asp:Parameter>
                                                        <asp:Parameter DbType="Time" Name="START_WORKING_TIME"></asp:Parameter>
                                                        <asp:Parameter DbType="Time" Name="END_WORKING_TIME"></asp:Parameter>
                                                        <asp:Parameter Name="WORK_HOURS" Type="String"></asp:Parameter>
                                                        <asp:Parameter DbType="Date" Name="WORKING_DATE"></asp:Parameter>
                                                        <asp:Parameter Name="STUDY_TERMS" Type="Int32"></asp:Parameter>
                                                        <asp:Parameter Name="STUDY_YEARS" Type="Int32"></asp:Parameter>
                                                        <asp:Parameter Name="CREATE_TIMESTAMP" Type="DateTime"></asp:Parameter>
                                                        <asp:Parameter Name="APPROVER_ID" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="APPROVE_STATUS" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="APPROVE_TIMESTAMP" Type="DateTime"></asp:Parameter>
                                                    </InsertParameters>
                                                    <UpdateParameters>
                                                        <asp:Parameter Name="STUDENT_ID" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="STUDENT_FIRSTNAME" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="STUDENT_LASTNAME" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="WORKING_DEPARTMENT" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="WORK_DESCRIPTION" Type="String"></asp:Parameter>
                                                        <asp:Parameter DbType="Time" Name="START_WORKING_TIME"></asp:Parameter>
                                                        <asp:Parameter DbType="Time" Name="END_WORKING_TIME"></asp:Parameter>
                                                        <asp:Parameter Name="WORK_HOURS" Type="String"></asp:Parameter>
                                                        <asp:Parameter DbType="Date" Name="WORKING_DATE"></asp:Parameter>
                                                        <asp:Parameter Name="STUDY_TERMS" Type="Int32"></asp:Parameter>
                                                        <asp:Parameter Name="STUDY_YEARS" Type="Int32"></asp:Parameter>
                                                        <asp:Parameter Name="CREATE_TIMESTAMP" Type="DateTime"></asp:Parameter>
                                                        <asp:Parameter Name="APPROVER_ID" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="APPROVE_STATUS" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="APPROVE_TIMESTAMP" Type="DateTime"></asp:Parameter>
                                                        <asp:Parameter Name="ID" Type="Int32"></asp:Parameter>
                                                    </UpdateParameters>
                                                </asp:SqlDataSource>
                                            </ContentTemplate>
                                            <Triggers>
                                                <asp:AsyncPostBackTrigger ControlID="Tb_authStudentTimeConfirmSearch" EventName="Click" />
                                            </Triggers>
                                        </asp:UpdatePanel>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- request student modal -->
    <div class="modal fade" id="requestStudentModalCenter" tabindex="-1" role="dialog" aria-labelledby="ส่งคำขอนักศึกษาช่วยงาน" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="addNewWorkAreaModalLongTitle">ส่งคำขอนักศึกษาช่วยงาน</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="">หน่วยงาน</span>
                        </div>
                        <asp:DropDownList ID="Ddl_requestStudentDepartment" runat="server" placeholder="หน่วยงาน" aria-label="หน่วยงาน" CssClass="form-control" DataSourceID="SqlDataSourceAUTH_DEPARTMENT" DataTextField="DEPARTMENT" DataValueField="DEPARTMENT"></asp:DropDownList>
                        <asp:SqlDataSource runat="server" ID="SqlDataSourceAUTH_DEPARTMENT" ConnectionString='<%$ ConnectionStrings:psustfdbConnectionString %>' SelectCommand="SELECT [DEPARTMENT] FROM [ADD_WORKAREA] WHERE ([STATUS] = @STATUS)">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="Open" Name="STATUS" Type="String"></asp:Parameter>
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="">จำนวนนักศึกษา</span>
                        </div>
                        <asp:DropDownList ID="Ddl_requestStudentAmount" runat="server" placeholder="จำนวนนักศึกษา" aria-label="จำนวนนักศึกษา" CssClass="form-control" DataSourceID="SqlDataSourceEDSR_REQUEST_STUDENT" DataTextField="STUDENT_REQUESTED" DataValueField="STUDENT_REQUESTED">
                        </asp:DropDownList>
                        <asp:SqlDataSource runat="server" ID="SqlDataSourceEDSR_REQUEST_STUDENT" ConnectionString='<%$ ConnectionStrings:psustfdbConnectionString %>' SelectCommand="SELECT [STUDENT_REQUESTED] FROM [ESSENTIAL_DATA_STUDENT_REQUESTED]"></asp:SqlDataSource>
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="">รายละเอียดของงาน</span>
                        </div>
                        <asp:TextBox ID="Tb_requestStudentWorkDescription" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3" placeholder="เช่น...ทำความสะอาด ปัด กวาด เช็ด ถู" aria-label="เช่น...ทำความสะอาด ปัด กวาด เช็ด ถู"></asp:TextBox>
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="">ภาคเรียน</span>
                        </div>
                        <asp:DropDownList ID="Ddl_requestStudentStudyYear" runat="server" placeholder="ภาคการศึกษา" aria-label="ภาคการศึกษา" CssClass="form-control" DataSourceID="SqlDataSourceEDT_REQUEST_STUDENT" DataTextField="STUDY_TERMS" DataValueField="STUDY_TERMS"></asp:DropDownList>
                        <asp:SqlDataSource runat="server" ID="SqlDataSourceEDT_REQUEST_STUDENT" ConnectionString='<%$ ConnectionStrings:psustfdbConnectionString %>' SelectCommand="SELECT [STUDY_TERMS] FROM [ESSENTIAL_DATA_TERMS]"></asp:SqlDataSource>
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="">ปีการศึกษา</span>
                        </div>
                        <asp:DropDownList ID="Ddl_requestStudentStudyYears" runat="server" placeholder="ปีการศึกษา" aria-label="ปีการศึกษา" CssClass="form-control" DataSourceID="SqlDataSourceEDY_REQUEST_STUDENT" DataTextField="STUDY_YEARS" DataValueField="STUDY_YEARS"></asp:DropDownList>
                        <asp:SqlDataSource runat="server" ID="SqlDataSourceEDY_REQUEST_STUDENT" ConnectionString='<%$ ConnectionStrings:psustfdbConnectionString %>' SelectCommand="SELECT [STUDY_YEARS] FROM [ESSENTIAL_DATA_YEARS]"></asp:SqlDataSource>
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="">รหัสเจ้าหน้าที่</span>
                        </div>
                        <asp:TextBox ID="Tb_requestStudentAuthID" runat="server" placeholder="เช่น..Tom.T" aria-label="เช่น..Tom.T" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="">ชื่อ-นามสกุล</span>
                        </div>
                        <asp:TextBox ID="Tb_requestStudentAuthFirstname" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:TextBox ID="Tb_requestStudentAuthLastname" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="modal-footer">
                    <asp:Button ID="Btn_requestStudentCancel" runat="server" Text="ยกเลิก" CssClass="btn btn-secondary" data-dismiss="modal" />
                    <asp:Button ID="Btn_requestStudentSend" runat="server" Text="ส่งคำขอ" CssClass="btn btn-primary" OnClick="Btn_requestStudentSend_Click" />
                </div>
            </div>
        </div>
    </div>
    <br />
</asp:Content>
