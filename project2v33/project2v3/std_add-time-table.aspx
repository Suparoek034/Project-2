<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="std_add-time-table.aspx.cs" Inherits="project2v3.std_add_time_table" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <div class="row">
        <div class="col-md-3">
            <div class="list-group" id="list-tab" role="tablist">
                <a class="list-group-item list-group-item-action active" id="list_addWorkingTime_list" data-toggle="list" href="#list_addWorkingTime" role="tab" aria-controls="addWorkingTime">บันทึกชั่วโมงการทำงาน</a>
            </div>
        </div>
        <div class="col-md-9">
            <div class="tab-content" id="nav-tabContent">
                <div class="tab-pane fade show active" id="list_addWorkingTime" role="tabpanel" aria-labelledby="list_addWorkingTime_list">
                    <div class="card">
                        <div class="card-header text-center" style="background-color: #28A745; color: #ffffff;">
                            รายละเอียดชั่วโมงการทำงาน
                        </div>
                        <div class="card-body">
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="input-group">
                                            <asp:TextBox ID="Tb_addWorkingTimeFilter" runat="server" CssClass="form-control" placeholder="รหัสนักศึกษา" aria-label="รหัสนักศึกษา"></asp:TextBox>
                                            <div class="input-group-append">
                                                <asp:Button ID="Btn_addWorkingTimeSearch" runat="server" Text="ค้นหา" CssClass="btn btn-outline-success" OnClick="Btn_addWorkingTimeSearch_Click" />
                                            </div>
                                        </div>
                                        <br />
                                        <asp:UpdatePanel ID="Upd_list_addWroking" runat="server">
                                            <ContentTemplate>
                                                <asp:GridView ID="Gv_STUDENT_WORKING_TIME" runat="server" AllowPaging="True" AutoGenerateColumns="False" BorderStyle="None" DataKeyNames="id" DataSourceID="SqlDataSourceSTUDENT_WORKING_TIME" GridLines="None" Width="100%" AllowSorting="True" HeaderStyle-ForeColor="#28A745">
                                                    <Columns>
                                                        <asp:TemplateField HeaderText="รหัสนักศึกษา" SortExpression="STUDENT_ID">
                                                            <EditItemTemplate>
                                                                <div style="width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:TextBox runat="server" Text='<%# Bind("STUDENT_ID") %>' ID="Tb_STUDENT_ID" CssClass="form-control"></asp:TextBox>
                                                                </div>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <div style="width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:Label runat="server" Text='<%# Bind("STUDENT_ID") %>' ID="Lb_STUDENT_ID"></asp:Label>
                                                                </div>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="หน่วยงาน" SortExpression="WORKING_DEPARTMENT">
                                                            <EditItemTemplate>
                                                                <div style="width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:DropDownList ID="Ddl_WORKING_DEPARTMENT" runat="server" CssClass="form-control" DataSourceID="SqlDataSourceSTUDENT_GV_SELECT_DEPARTMENT" DataTextField="DEPARTMENT" DataValueField="DEPARTMENT" SelectedValue='<%# Bind("WORKING_DEPARTMENT") %>' ></asp:DropDownList>
                                                                    <asp:SqlDataSource ID="SqlDataSourceSTUDENT_GV_SELECT_DEPARTMENT" runat="server" ConnectionString="<%$ ConnectionStrings:psustfdbConnectionString %>" SelectCommand="SELECT [DEPARTMENT] FROM [ADD_WORKAREA] WHERE ([STATUS] = @STATUS)">
                                                                        <SelectParameters>
                                                                            <asp:Parameter DefaultValue="Open" Name="STATUS" Type="String" />
                                                                        </SelectParameters>
                                                                    </asp:SqlDataSource>
                                                                </div>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <div style="width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:Label runat="server" Text='<%# Bind("WORKING_DEPARTMENT") %>' ID="Lb_WORKING_DEPARTMENT"></asp:Label>
                                                                </div>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="รายละเอียด" SortExpression="WORK_DESCRIPTION">
                                                            <EditItemTemplate>
                                                                <div style="width: 200px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:TextBox runat="server" Text='<%# Bind("WORK_DESCRIPTION") %>' ID="Tb_WORK_DESCRIPTION" CssClass="form-control"></asp:TextBox>
                                                                </div>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <div style="width: 200px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:Label runat="server" Text='<%# Bind("WORK_DESCRIPTION") %>' ID="Lb_WORK_DESCRIPTION"></asp:Label>
                                                                </div>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="ชั่วโมง" SortExpression="WORK_HOURS">
                                                            <EditItemTemplate>
                                                                <div style="width: 70px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:TextBox runat="server" Text='<%# Bind("WORK_HOURS") %>' ID="Tb_WORK_HOURS" CssClass="form-control"></asp:TextBox>
                                                                </div>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <div style="width: 70px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:Label runat="server" Text='<%# Bind("WORK_HOURS") %>' ID="Lb_WORK_HOURS"></asp:Label>
                                                                </div>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="วันที่" SortExpression="WORKING_DATE">
                                                            <EditItemTemplate>
                                                                <div style="width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:TextBox runat="server" Text='<%# Bind("WORKING_DATE") %>' ID="Tb_WORKING_DATE" TextMode="Date" CssClass="form-control"></asp:TextBox>
                                                                </div>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <div style="width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:Label runat="server" Text='<%# Bind("WORKING_DATE") %>' ID="Lb_WORKING_DATE"></asp:Label>
                                                                </div>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="สถานะ" SortExpression="APPROVE_STATUS">
                                                            <EditItemTemplate>
                                                                <div style="width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:TextBox runat="server" Text='<%# Bind("APPROVE_STATUS") %>' ID="Tb_APPROVE_STATUS" ReadOnly="True" CssClass="form-control"></asp:TextBox>
                                                                </div>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <div style="width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:Label runat="server" Text='<%# Bind("APPROVE_STATUS") %>' ID="Lb_APPROVE_STATUS"></asp:Label>
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
                                                <asp:SqlDataSource runat="server" ID="SqlDataSourceSTUDENT_WORKING_TIME" ConnectionString='<%$ ConnectionStrings:psustfdbConnectionString %>' SelectCommand="SELECT * FROM [STUDENT_WORKING_TIME]" DeleteCommand="DELETE FROM [STUDENT_WORKING_TIME] WHERE [ID] = @ID" InsertCommand="INSERT INTO [STUDENT_WORKING_TIME] ([STUDENT_ID], [STUDENT_FIRSTNAME], [STUDENT_LASTNAME], [WORKING_DEPARTMENT], [WORK_DESCRIPTION], [START_WORKING_TIME], [END_WORKING_TIME], [WORK_HOURS], [WORKING_DATE], [STUDY_TERMS], [STUDY_YEARS], [CREATE_TIMESTAMP], [APPROVER_ID], [APPROVE_STATUS], [APPROVE_TIMESTAMP]) VALUES (@STUDENT_ID, @STUDENT_FIRSTNAME, @STUDENT_LASTNAME, @WORKING_DEPARTMENT, @WORK_DESCRIPTION, @START_WORKING_TIME, @END_WORKING_TIME, @WORK_HOURS, @WORKING_DATE, @STUDY_TERMS, @STUDY_YEARS, @CREATE_TIMESTAMP, @APPROVER_ID, @APPROVE_STATUS, @APPROVE_TIMESTAMP)" UpdateCommand="UPDATE [STUDENT_WORKING_TIME] SET [STUDENT_ID] = @STUDENT_ID, [WORKING_DEPARTMENT] = @WORKING_DEPARTMENT, [WORK_DESCRIPTION] = @WORK_DESCRIPTION, [WORK_HOURS] = @WORK_HOURS, [WORKING_DATE] = @WORKING_DATE WHERE [ID] = @ID">
                                                    <DeleteParameters>
                                                        <asp:Parameter Name="ID" Type="Int32"></asp:Parameter>
                                                    </DeleteParameters>
                                                    <InsertParameters>
                                                        <asp:Parameter Name="STUDENT_ID" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="STUDENT_FIRSTNAME" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="STUDENT_LASTNAME" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="WORKING_DEPARTMENT" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="WORK_DESCRIPTION" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="START_WORKING_TIME" DbType="Time"></asp:Parameter>
                                                        <asp:Parameter Name="END_WORKING_TIME" DbType="Time"></asp:Parameter>
                                                        <asp:Parameter Name="WORK_HOURS" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="WORKING_DATE" DbType="Date"></asp:Parameter>
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
                                                        <asp:Parameter Name="START_WORKING_TIME" DbType="Time"></asp:Parameter>
                                                        <asp:Parameter Name="END_WORKING_TIME" DbType="Time"></asp:Parameter>
                                                        <asp:Parameter Name="WORK_HOURS" Type="String"></asp:Parameter>
                                                        <asp:Parameter Name="WORKING_DATE" DbType="Date"></asp:Parameter>
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
                                                <asp:AsyncPostBackTrigger ControlID="Btn_addWorkingTimeSearch" EventName="Click" />
                                                <asp:AsyncPostBackTrigger ControlID="Btn_student_working_time_add" EventName="Click" />
                                                <asp:AsyncPostBackTrigger ControlID="Btn_addWorkingTimeAdd" EventName="Click" />
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
                            <asp:Button ID="Btn_student_working_time_add" runat="server" Text="เพิ่ม" CssClass="btn btn-primary" data-toggle="modal" data-target="#addWorkingTimeModalCenter" OnClick="Btn_student_working_time_add_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- add working time modal -->
    <div class="modal fade" id="addWorkingTimeModalCenter" tabindex="-1" role="dialog" aria-labelledby="บันทึกเวลาทำงาน" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="addWorkingTimeModalLongTitle">บันทึกเวลาทำงาน</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="">Student ID</span>
                        </div>
                        <asp:TextBox ID="Tb_addWorkingTimestudentID" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="">ชื่อ-นามสกุล</span>
                        </div>
                        <asp:TextBox ID="Tb_addWorkingTimeStudentFirstname" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:TextBox ID="Tb_addWorkingTimeStudentLastname" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="">ชื่อสถานที่ทำงาน</span>
                        </div>
                        <asp:DropDownList ID="Ddl_addWorkingTimeDepartmentName" runat="server" CssClass="form-control" DataSourceID="SqlDataSourceSTUDENT_DELECT_DEPARTMENT" DataTextField="DEPARTMENT" DataValueField="DEPARTMENT"></asp:DropDownList>
                        <asp:SqlDataSource runat="server" ID="SqlDataSourceSTUDENT_DELECT_DEPARTMENT" ConnectionString='<%$ ConnectionStrings:psustfdbConnectionString %>' SelectCommand="SELECT [DEPARTMENT] FROM [ADD_WORKAREA] WHERE ([STATUS] = @STATUS)">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="Open" Name="STATUS" Type="String"></asp:Parameter>
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="">รายละเอียด</span>
                        </div>
                        <asp:TextBox ID="Tb_addWorkingTimeDescription" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3"></asp:TextBox>
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="">เวลาเริ่มงาน</span>
                        </div>
                        <asp:TextBox ID="Tb_addWorkingTimeStartTime" runat="server" CssClass="form-control timepicker" TextMode="Time"></asp:TextBox>
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="">เวลาเลิกงาน</span>
                        </div>
                        <asp:TextBox ID="Tb_addWorkingTimeEndTime" runat="server" CssClass="form-control" TextMode="Time"></asp:TextBox>
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="">จำนวนชั่วโมง</span>
                        </div>
                        <asp:TextBox ID="Tb_addWorkingTimeHours" runat="server" CssClass="form-control" TextMode="SingleLine"></asp:TextBox>
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="">วันที่ปฏิบัติงาน</span>
                        </div>
                        <asp:TextBox ID="Tb_addWorkingTimeDate" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="">ภาคการศึกษา</span>
                        </div>
                        <asp:DropDownList ID="Ddl_addWorkingTimeStudyYear" runat="server" CssClass="form-control" DataSourceID="SqlDataSourceEDT_STUDY_TERMS" DataTextField="STUDY_TERMS" DataValueField="STUDY_TERMS">
                        </asp:DropDownList>
                        <asp:SqlDataSource runat="server" ID="SqlDataSourceEDT_STUDY_TERMS" ConnectionString='<%$ ConnectionStrings:psustfdbConnectionString %>' SelectCommand="SELECT [STUDY_TERMS] FROM [ESSENTIAL_DATA_TERMS]"></asp:SqlDataSource>
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="">ปีการศึกษา</span>
                        </div>
                        <asp:DropDownList ID="Ddl_addWorkingTimeStudyYears" runat="server" CssClass="form-control" DataSourceID="SqlDataSourceEDY_STUDY_YEARS" DataTextField="STUDY_YEARS" DataValueField="STUDY_YEARS">
                        </asp:DropDownList>
                        <asp:SqlDataSource runat="server" ID="SqlDataSourceEDY_STUDY_YEARS" ConnectionString='<%$ ConnectionStrings:psustfdbConnectionString %>' SelectCommand="SELECT [STUDY_YEARS] FROM [ESSENTIAL_DATA_YEARS]"></asp:SqlDataSource>
                    </div>
                </div>
                <div class="modal-footer">
                    <asp:Button ID="Btn_addWorkingTimeCancel" runat="server" Text="ยกเลิก" CssClass="btn btn-secondary" data-dismiss="modal" />
                    <asp:Button ID="Btn_addWorkingTimeAdd" runat="server" Text="เพิ่ม" CssClass="btn btn-primary" OnClick="Btn_addWorkingTimeAdd_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
