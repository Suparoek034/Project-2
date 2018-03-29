<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="officer_control.aspx.cs" Inherits="project2v3.officer_control" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <div class="row">
        <div class="col-md-3">
            <div class="list-group" id="list-tab" role="tablist">
                <a class="list-group-item list-group-item-action active" id="list-allStdFundApply-list" data-toggle="list" href="#list-allStdFundApply" role="tab" aria-controls="allStdFundApply">รายชื่อนักศึกษาที่สมัครทุน</a>
                <a class="list-group-item list-group-item-action" id="list-allStdWhoGotFund-list" data-toggle="list" href="#list-allStdWhoGotFund" role="tab" aria-controls="allStdWhoGotFund">รายชื่อนักศึกษาที่ได้รับทุน</a>
                <a class="list-group-item list-group-item-action" id="list-stdWorkResuest-list" data-toggle="list" href="#list-stdWorkResuest" role="tab" aria-controls="stdWorkResuest">ความต้องการนักศึกษาช่วยงาน</a>
                <a class="list-group-item list-group-item-action" id="list-stdWorkSelected-list" data-toggle="list" href="#list-stdWorkSelected" role="tab" aria-controls="stdWorkSelected">รายชื่อนักศึกษาที่เลือกสถานที่ทำงานแล้ว</a>
                <a class="list-group-item list-group-item-action" id="list-allStdTimeTable-list" data-toggle="list" href="#list-allStdTimeTable" role="tab" aria-controls="allStdTimeTable">ตารางการทำงานของนักศึกษา</a>
                <a class="list-group-item list-group-item-action" id="list-uploadManagement-list" data-toggle="list" href="#list-uploadManagement" role="tab" aria-controls="uploadManagement">จัดการ Upload</a>

            </div>
        </div>
        <div class="col-md-9">
            <div class="tab-content" id="nav-tabContent">
                <div class="tab-pane fade show active" id="list-allStdFundApply" role="tabpanel" aria-labelledby="list-allStdFundApply-list">
                    <div class="card">
                        <div class="card-header text-center" style="background-color: #28A745; color: #ffffff;">
                            รายชื่อนักศึกษาที่สมัครทุน
                        </div>
                        <div class="card-body">
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="input-group">
                                            <asp:DropDownList ID="ddl_funds" runat="server" CssClass="form-control" DataSourceID="ListofFunds" DataTextField="NAME" DataValueField="ID" AutoPostBack="True"></asp:DropDownList>
                                            <asp:SqlDataSource runat="server" ID="ListofFunds" ConnectionString='<%$ ConnectionStrings:psustfdbConnectionString %>' SelectCommand="SELECT * FROM [LIST_INSIDE_FUNDS]"></asp:SqlDataSource>
                                        </div>
                                        <br />
                                        <asp:UpdatePanel ID="Udpn_allStdFundApply" runat="server">
                                            <ContentTemplate>
                                                <asp:GridView ID="Gv_allStdFundApply" runat="server" BorderStyle="None" CssClass="table-responsive" GridLines="None" Width="100%" DataSourceID="ListofStudent" AutoGenerateColumns="False" HeaderStyle-ForeColor="#28A745" AllowPaging="True" AllowSorting="True">
                                                    <Columns>
                                                        <asp:TemplateField HeaderText="รหัสนักศึกษา" SortExpression="STD_ID">
                                                            <EditItemTemplate>
                                                                <div style="width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:TextBox runat="server" Text='<%# Bind("STD_ID") %>' ID="txt_STD_ID" ReadOnly="True" CssClass="form-control"></asp:TextBox>
                                                                </div>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <div style="width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:Label runat="server" Text='<%# Bind("STD_ID") %>' ID="Lb_STD_ID"></asp:Label>
                                                                </div>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="ชื่อ" SortExpression="STUD_NAME_THAI">
                                                            <EditItemTemplate>
                                                                <div style="width: 150px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:TextBox runat="server" Text='<%# Bind("STUD_NAME_THAI") %>' ID="txt_STUD_NAME_THAI" ReadOnly="True" CssClass="form-control"></asp:TextBox>
                                                                </div>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <div style="width: 150px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:Label runat="server" Text='<%# Bind("STUD_NAME_THAI") %>' ID="Lb_STUD_NAME_THAI"></asp:Label>
                                                                </div>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="นามสกุล" SortExpression="STUD_SNAME_THAI">
                                                            <EditItemTemplate>
                                                                <div style="width: 150px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:TextBox runat="server" Text='<%# Bind("STUD_SNAME_THAI") %>' ID="txt_STUD_SNAME_THAI" ReadOnly="True" CssClass="form-control"></asp:TextBox>
                                                                </div>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <div style="width: 150px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:Label runat="server" Text='<%# Bind("STUD_SNAME_THAI") %>' ID="Lb_STUD_SNAME_THAI"></asp:Label>
                                                                </div>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="สถานะ" SortExpression="APPROVE_STATUS">
                                                            <EditItemTemplate>
                                                                <div style="width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:DropDownList ID="ddl_approve_status" runat="server" SelectedValue='<%# Bind("APPROVE_STATUS") %>' DataSourceID="SqlDataSource_approve_status" DataTextField="APPROVE_STATUS" DataValueField="APPROVE_STATUS" CssClass="form-control">
                                                                    </asp:DropDownList>
                                                                    <asp:SqlDataSource ID="SqlDataSource_approve_status" runat="server" ConnectionString="<%$ ConnectionStrings:psustfdbConnectionString %>" SelectCommand="SELECT [APPROVE_STATUS] FROM [ESSENTIAL_DATA_APPROVE_STATUS]"></asp:SqlDataSource>
                                                                </div>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <div style="width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:Label runat="server" Text='<%# Bind("APPROVE_STATUS") %>' ID="Lb_APPROVE_STATUS"></asp:Label>
                                                                </div>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="รหัสเจ้าหน้าที่" SortExpression="OFFICER_ID">
                                                            <EditItemTemplate>
                                                                <div style="width: 150px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:TextBox runat="server" Text='<%# Bind("OFFICER_ID") %>' ID="txt_OFFICER_ID" CssClass="form-control"></asp:TextBox>
                                                                </div>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <div style="width: 150px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:Label runat="server" Text='<%# Bind("OFFICER_ID") %>' ID="Lb_OFFICER_ID"></asp:Label>
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


                                                        <asp:TemplateField HeaderText="APPROVE_DATE" SortExpression="APPROVE_DATE" Visible="False">
                                                            <EditItemTemplate>
                                                                <asp:TextBox ID="TextBox1" runat="server" Text="<%# DateTime.Now.ToString() %>"></asp:TextBox>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <asp:Label ID="Label1" runat="server" Text="<%# DateTime.Now.ToString() %>"></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>


                                                    </Columns>

                                                    <HeaderStyle ForeColor="#28A745" />

                                                    <RowStyle BorderStyle="None" />
                                                </asp:GridView>

                                                <asp:SqlDataSource ID="ListofStudent" runat="server" ConnectionString='<%$ ConnectionStrings:psustfdbConnectionString %>' SelectCommand="SELECT HISTORYOFFUND_APPLICATION.STD_ID, STD_INFORMATION.STUD_NAME_THAI, STD_INFORMATION.STUD_SNAME_THAI, HISTORYOFFUND_APPLICATION.APPROVE_STATUS, HISTORYOFFUND_APPLICATION.OFFICER_ID, HISTORYOFFUND_APPLICATION.APPROVE_DATE FROM HISTORYOFFUND_APPLICATION INNER JOIN STD_INFORMATION ON HISTORYOFFUND_APPLICATION.STD_ID = STD_INFORMATION.STUDENT_ID AND HISTORYOFFUND_APPLICATION.FUND_ID = @FUND_ID" UpdateCommand="UPDATE HISTORYOFFUND_APPLICATION SET OFFICER_ID = @OFFICER_ID, APPROVE_STATUS = @APPROVE_STATUS, APPROVE_DATE =@APPROVE_DATE">
                                                    <SelectParameters>
                                                        <asp:ControlParameter ControlID="ddl_funds" PropertyName="SelectedValue" DefaultValue="1" Name="FUND_ID"></asp:ControlParameter>
                                                    </SelectParameters>
                                                    <UpdateParameters>
                                                        <asp:Parameter Name="OFFICER_ID"></asp:Parameter>
                                                        <asp:Parameter Name="APPROVE_STATUS"></asp:Parameter>
                                                        <asp:Parameter Name="APPROVE_DATE"></asp:Parameter>
                                                    </UpdateParameters>
                                                </asp:SqlDataSource>
                                            </ContentTemplate>
                                            <Triggers>
                                            </Triggers>
                                        </asp:UpdatePanel>
                                        <asp:UpdateProgress ID="UpdtPs_allStdFundApply" runat="server">
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
                            <asp:Button ID="Btn_allStdFundApplySave" runat="server" Text="บันทึก" CssClass="btn btn-primary"  />
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="list-allStdWhoGotFund" role="tabpanel" aria-labelledby="list-allStdWhoGotFund-list">
                    <div class="card">
                        <div class="card-header text-center" style="background-color: #28A745; color: #ffffff;">
                            รายชื่อนักศึกษาที่ได้รับทุน
                        </div>
                        <div class="card-body">
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="input-group">
                                            <asp:TextBox ID="Tb_allStdWhoGotFund" runat="server" CssClass="form-control" placeholder="ชื่อนักศึกษา" aria-label="ชื่อนักศึกษา"></asp:TextBox>
                                            <div class="input-group-append">
                                                <asp:Button ID="Btn_allStdWhoGotFundFilter" runat="server" Text="ค้นหา" CssClass="btn btn-outline-success" />
                                            </div>
                                        </div>
                                        <asp:UpdatePanel ID="Udpn_allStdWhoGotFund" runat="server">
                                            <ContentTemplate>
                                                <asp:GridView ID="Gv_allStdWhoGotFund" runat="server" CssClass="table-responsive" GridLines="None" ShowHeader="True" Width="100%" AutoGenerateColumns="False" DataSourceID="SqlDataSource_ListofStudentGotFund">
                                                    <Columns>
                                                        <asp:TemplateField HeaderText="รหัสทุนการศึกษา" SortExpression="FUND_ID">
                                                            <EditItemTemplate>
                                                                <div style="width: 50px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:TextBox runat="server" Text='<%# Bind("FUND_ID") %>' ID="txt_FUND_ID"></asp:TextBox>
                                                                </div>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <div style="width: 50px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:Label runat="server" Text='<%# Bind("FUND_ID") %>' ID="Lb_FUND_ID"></asp:Label>
                                                                </div>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="ชื่อทุนการศึกษา" SortExpression="NAME">
                                                            <EditItemTemplate>
                                                                <div style="width: 200px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:TextBox runat="server" Text='<%# Bind("NAME") %>' ID="txt_FUNDNAME"></asp:TextBox>
                                                                </div>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <div style="width: 200px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:Label runat="server" Text='<%# Bind("NAME") %>' ID="Lb_FUNDNAME"></asp:Label>
                                                                </div>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="รหัสนักศึกษา" SortExpression="STD_ID">
                                                            <EditItemTemplate>
                                                                <div style="width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:TextBox runat="server" Text='<%# Bind("STD_ID") %>' ID="txt_STD_ID"></asp:TextBox>
                                                                </div>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <div style="width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:Label runat="server" Text='<%# Bind("STD_ID") %>' ID="Lb_STD_ID"></asp:Label>
                                                                </div>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="ชื่อ" SortExpression="STUD_NAME_THAI">
                                                            <EditItemTemplate>
                                                                <div style="width: 150px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:TextBox runat="server" Text='<%# Bind("STUD_NAME_THAI") %>' ID="txt_STUD_NAME_THAI"></asp:TextBox>
                                                                </div>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <div style="width: 150px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:Label runat="server" Text='<%# Bind("STUD_NAME_THAI") %>' ID="Lb_STUD_NAME_THAI"></asp:Label>
                                                                </div>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="นามสกุล" SortExpression="STUD_SNAME_THAI">
                                                            <EditItemTemplate>
                                                                <div style="width: 150px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:TextBox runat="server" Text='<%# Bind("STUD_SNAME_THAI") %>' ID="txt_STUD_SNAME_THAI"></asp:TextBox>
                                                                </div>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <div style="width: 150px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:Label runat="server" Text='<%# Bind("STUD_SNAME_THAI") %>' ID="Lb_STUD_SNAME_THAI"></asp:Label>
                                                                </div>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                    </Columns>

                                                    <RowStyle BorderStyle="None" />
                                                </asp:GridView>
                                                <asp:SqlDataSource runat="server" ID="SqlDataSource_ListofStudentGotFund" ConnectionString='<%$ ConnectionStrings:psustfdbConnectionString %>' SelectCommand="SELECT HISTORYOFFUND_APPLICATION.FUND_ID,LIST_INSIDE_FUNDS.NAME, HISTORYOFFUND_APPLICATION.STD_ID,STD_INFORMATION.STUD_NAME_THAI,STD_INFORMATION.STUD_SNAME_THAI
FROM HISTORYOFFUND_APPLICATION,STD_INFORMATION,LIST_INSIDE_FUNDS WHERE HISTORYOFFUND_APPLICATION.STD_ID=STD_INFORMATION.STUDENT_ID AND HISTORYOFFUND_APPLICATION.FUND_ID=LIST_INSIDE_FUNDS.ID"></asp:SqlDataSource>
                                            </ContentTemplate>
                                            <Triggers>
                                                <asp:AsyncPostBackTrigger ControlID="Btn_allStdWhoGotFundFilter" EventName="Click" />
                                               
                                            </Triggers>
                                        </asp:UpdatePanel>
                                        <asp:UpdateProgress ID="UpdtPs_allStdWhoGotFund" runat="server">
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
                    </div>
                </div>
                <div class="tab-pane fade" id="list-stdWorkResuest" role="tabpanel" aria-labelledby="list-stdWorkResuest-list">
                    <div class="card">
                        <div class="card-header text-center" style="background-color: #28A745; color: #ffffff;">
                            ความต้องการนักศึกษาช่วยงาน
                        </div>
                        <div class="card-body">
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="input-group">
                                            <asp:TextBox ID="Tb_stdWorkRequest" runat="server" CssClass="form-control" placeholder="สถานที่" aria-label="สถานที่"></asp:TextBox>
                                            <div class="input-group-append">
                                                <asp:Button ID="Btn_stdWorkRequestFilter" runat="server" Text="ค้นหา" CssClass="btn btn-outline-success" OnClick="Btn_stdWorkRequestFilter_Click" />
                                            </div>
                                        </div>
                                        <br />
                                        <asp:UpdatePanel ID="Udpn_stdWorkRequest" runat="server">
                                            <ContentTemplate>
                                                <asp:GridView ID="Gv_stdWorkRequest" runat="server" BorderStyle="None" CssClass="table-responsive" GridLines="None" Width="100%" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSourceRS__STUDENT_REQUEST" AllowPaging="True" AllowSorting="True" HeaderStyle-ForeColor="#28A745">
                                                    <Columns>
                                                        <asp:TemplateField HeaderText="สถานที่ทำงาน" SortExpression="WORK_DEPARTMENT">
                                                            <EditItemTemplate>
                                                                <div style="width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:TextBox runat="server" Text='<%# Bind("WORK_DEPARTMENT") %>' ID="Tb_WORK_DEPARTMENT" ReadOnly="True" CssClass="form-control"></asp:TextBox>
                                                                </div>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <div style="width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:Label runat="server" Text='<%# Bind("WORK_DEPARTMENT") %>' ID="Lb_WORK_DEPARTMENT"></asp:Label>
                                                                </div>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="จำนวน" SortExpression="REQUEST_AMOUNT">
                                                            <EditItemTemplate>
                                                                <div style="width: 70px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:TextBox runat="server" Text='<%# Bind("REQUEST_AMOUNT") %>' ID="Tb_REQUEST_AMOUNT" ReadOnly="True" CssClass="form-control"></asp:TextBox>
                                                                </div>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <div style="width: 70px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:Label runat="server" Text='<%# Bind("REQUEST_AMOUNT") %>' ID="Lb_REQUEST_AMOUNT"></asp:Label>
                                                                </div>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="ลักษณะของงาน" SortExpression="WORK_DESCRIPTION">
                                                            <EditItemTemplate>
                                                                <div style="width: 150px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:TextBox runat="server" Text='<%# Bind("WORK_DESCRIPTION") %>' ID="Tb_WORK_DESCRIPTION" ReadOnly="True" CssClass="form-control"></asp:TextBox>
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
                                                                    <asp:TextBox runat="server" Text='<%# Bind("STUDY_TERMS") %>' ID="Tb_STUDY_TERMS" ReadOnly="True" CssClass="form-control"></asp:TextBox>
                                                                </div>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <div style="width: 70px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:Label runat="server" Text='<%# Bind("STUDY_TERMS") %>' ID="Lb_STUDY_TERMS"></asp:Label>
                                                                </div>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="ปีการศึกษา" SortExpression="STUDY_YEARS">
                                                            <EditItemTemplate>
                                                                <div style="width: 70px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:TextBox runat="server" Text='<%# Bind("STUDY_YEARS") %>' ID="Tb_STUDY_YEARS" ReadOnly="True" CssClass="form-control"></asp:TextBox>
                                                                </div>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <div style="width: 70px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:Label runat="server" Text='<%# Bind("STUDY_YEARS") %>' ID="Lb_STUDY_YEARS"></asp:Label>
                                                                </div>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="รหัสเจ้าหน้าที่" SortExpression="AUTH_CONTROL_ID">
                                                            <EditItemTemplate>
                                                                <div style="width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:TextBox runat="server" Text='<%# Bind("AUTH_CONTROL_ID") %>' ID="Tb_AUTH_CONTROL_ID" ReadOnly="True" CssClass="form-control"></asp:TextBox>
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
                                                                    <asp:DropDownList ID="Ddl_EDS_REQUEST_STUDENT" runat="server" DataSourceID="SqlDataSourceEDS_REQUEST_STUDENT" DataTextField="STATUS" DataValueField="STATUS" CssClass="form-control" SelectedValue='<%# Bind("STATUS") %>'>
                                                                    </asp:DropDownList>
                                                                    <asp:SqlDataSource ID="SqlDataSourceEDS_REQUEST_STUDENT" runat="server" ConnectionString="<%$ ConnectionStrings:psustfdbConnectionString %>" SelectCommand="SELECT [STATUS] FROM [ESSENTIAL_DATA_STATUS]"></asp:SqlDataSource>
                                                                </div>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <div style="width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:Label runat="server" Text='<%# Bind("STATUS") %>' ID="Lb_STATUS"></asp:Label>
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
                                                <asp:SqlDataSource runat="server" ID="SqlDataSourceRS__STUDENT_REQUEST" ConnectionString='<%$ ConnectionStrings:psustfdbConnectionString %>' DeleteCommand="DELETE FROM [REQUEST_STUDENT] WHERE [ID] = @ID" InsertCommand="INSERT INTO [REQUEST_STUDENT] ([WORK_DEPARTMENT], [REQUEST_AMOUNT], [WORK_DESCRIPTION], [STUDY_TERMS], [STUDY_YEARS], [AUTH_CONTROL_ID], [AUTH_CONTROL_FIRSTNAME], [AUTH_CONTROL_LASTNAME], [STATUS], [TIMESTAMP]) VALUES (@WORK_DEPARTMENT, @REQUEST_AMOUNT, @WORK_DESCRIPTION, @STUDY_TERMS, @STUDY_YEARS, @AUTH_CONTROL_ID, @AUTH_CONTROL_FIRSTNAME, @AUTH_CONTROL_LASTNAME, @STATUS, @TIMESTAMP)" SelectCommand="SELECT * FROM [REQUEST_STUDENT]" UpdateCommand="UPDATE [REQUEST_STUDENT] SET [STATUS] = @STATUS WHERE [ID] = @ID">
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
                                                <asp:AsyncPostBackTrigger ControlID="Btn_stdWorkRequestFilter" EventName="Click" />
                                            </Triggers>
                                        </asp:UpdatePanel>
                                        <asp:UpdateProgress ID="UpdtPs_stdWorkRequest" runat="server">
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
                    </div>
                </div>
                <div class="tab-pane fade" id="list-stdWorkSelected" role="tabpanel" aria-labelledby="list-stdWorkSelected-list">
                    <div class="card">
                        <div class="card-header text-center" style="background-color: #28A745; color: #ffffff;">
                            รายชื่อนักศึกษาที่เลือกสถานที่ทำงานแล้ว
                        </div>
                        <div class="card-body">
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="input-group">
                                            <asp:TextBox ID="Tb_stdWorkSelected" runat="server" CssClass="form-control" placeholder="ชื่อนักศึกษา" aria-label="ชื่อนักศึกษา"></asp:TextBox>
                                            <div class="input-group-append">
                                                <asp:Button ID="Btn_stdWorkSelectedFilter" runat="server" Text="ค้นหา" CssClass="btn btn-outline-success" />
                                            </div>
                                        </div>
                                        <asp:UpdatePanel ID="Udpn_stdWorkSelected" runat="server">
                                            <ContentTemplate>
                                                <asp:GridView ID="Gv_stdWorkSelected" runat="server" BorderStyle="None" CssClass="table-responsive" GridLines="None" Width="100%" DataSourceID="list_of_student_selectworkarea" AutoGenerateColumns="False">
                                                    <Columns>
                                                        <asp:TemplateField HeaderText="รหัสนักศึกษา" SortExpression="STUDENT_ID">
                                                            <EditItemTemplate>
                                                                <div style="width: 200px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:TextBox runat="server" Text='<%# Bind("STUDENT_ID") %>' ID="TextBox1"></asp:TextBox>
                                                                </div>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <div style="width: 200px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:Label runat="server" Text='<%# Bind("STUDENT_ID") %>' ID="Label1"></asp:Label>
                                                                </div>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="ชื่อ" SortExpression="STUD_NAME_THAI">
                                                            <EditItemTemplate>
                                                                <div style="width: 200px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:TextBox runat="server" Text='<%# Bind("STUD_NAME_THAI") %>' ID="TextBox2"></asp:TextBox>
                                                                </div>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <div style="width: 200px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:Label runat="server" Text='<%# Bind("STUD_NAME_THAI") %>' ID="Label2"></asp:Label>
                                                                </div>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="นามสกุล" SortExpression="STUD_SNAME_THAI">
                                                            <EditItemTemplate>
                                                                <div style="width: 200px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:TextBox runat="server" Text='<%# Bind("STUD_SNAME_THAI") %>' ID="TextBox3"></asp:TextBox>
                                                                </div>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <div style="width: 200px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:Label runat="server" Text='<%# Bind("STUD_SNAME_THAI") %>' ID="Label3"></asp:Label>
                                                                </div>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="สถานที่ทำงาน" SortExpression="WORK_DEPARTMENT">
                                                            <EditItemTemplate>
                                                                <div style="width: 200px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:TextBox runat="server" Text='<%# Bind("WORK_DEPARTMENT") %>' ID="TextBox4"></asp:TextBox>
                                                                </div>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <div style="width: 200px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:Label runat="server" Text='<%# Bind("WORK_DEPARTMENT") %>' ID="Label4"></asp:Label>
                                                                </div>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>

                                                    </Columns>
                                                </asp:GridView>
                                                <asp:SqlDataSource runat="server" ID="list_of_student_selectworkarea" ConnectionString='<%$ ConnectionStrings:psustfdbConnectionString %>' SelectCommand="SELECT STD_SELECT_WORKAREA.STUDENT_ID,STD_INFORMATION.STUD_NAME_THAI,STD_INFORMATION.STUD_SNAME_THAI,REQUEST_STUDENT.WORK_DEPARTMENT
FROM STD_SELECT_WORKAREA,STD_INFORMATION,REQUEST_STUDENT
WHERE STD_SELECT_WORKAREA.STUDENT_ID=STD_INFORMATION.STUDENT_ID AND STD_SELECT_WORKAREA.WORKING_ID=REQUEST_STUDENT.ID"></asp:SqlDataSource>
                                            </ContentTemplate>
                                            <Triggers>
                                                <asp:AsyncPostBackTrigger ControlID="Btn_stdWorkSelectedFilter" EventName="Click" />
                                            </Triggers>
                                        </asp:UpdatePanel>
                                        <asp:UpdateProgress ID="UpdtPs_stdWorkSelected" runat="server">
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
                    </div>
                </div>
                <div class="tab-pane fade" id="list-allStdTimeTable" role="tabpanel" aria-labelledby="list-allStdTimeTable-list">
                    <div class="card">
                        <div class="card-header text-center" style="background-color: #28A745; color: #ffffff;">
                            ตารางการทำงานของนักศึกษา
                        </div>
                        <div class="card-body">
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="input-group">
                                            <asp:TextBox ID="Tb_allStdTimeTable" runat="server" CssClass="form-control" placeholder="รหัสนักศึกษา" aria-label="รหัสนักศึกษา"></asp:TextBox>
                                            <div class="input-group-append">
                                                <asp:Button ID="Btn_allStdTimeTableFilter" runat="server" Text="ค้นหา" CssClass="btn btn-outline-success" OnClick="Btn_allStdTimeTableFilter_Click" />
                                            </div>
                                        </div>
                                        <br />
                                        <asp:UpdatePanel ID="Udpn_allStdTimeTable" runat="server">
                                            <ContentTemplate>
                                                <asp:GridView ID="Gv_allStdTimeTable" runat="server" BorderStyle="None" CssClass="table-responsive" EditRowStyle-BorderStyle="None" GridLines="None" Width="100%" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSourceSTUDENT_WORKING_TIME" AllowPaging="True" AllowSorting="True" HeaderStyle-ForeColor="#28A745">
                                                    <Columns>
                                                        <asp:TemplateField HeaderText="รหัสนักศึกษา" SortExpression="STUDENT_ID">
                                                            <ItemTemplate>
                                                                <div style="width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:Label runat="server" Text='<%# Bind("STUDENT_ID") %>' ID="Lb_STUDENT_ID"></asp:Label>
                                                                </div>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="ชื่อ" SortExpression="STUDENT_FIRSTNAME">
                                                            <ItemTemplate>
                                                                <div style="width: 125px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:Label runat="server" Text='<%# Bind("STUDENT_FIRSTNAME") %>' ID="Lb_STUDENT_FIRSTNAME"></asp:Label>
                                                                </div>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="นามสกุล" SortExpression="STUDENT_LASTNAME">
                                                            <ItemTemplate>
                                                                <div style="width: 125px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:Label runat="server" Text='<%# Bind("STUDENT_LASTNAME") %>' ID="Lb_STUDENT_LASTNAME"></asp:Label>
                                                                </div>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="สถานที่ทำงาน" SortExpression="WORKING_DEPARTMENT">
                                                            <ItemTemplate>
                                                                <div style="width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:Label runat="server" Text='<%# Bind("WORKING_DEPARTMENT") %>' ID="Lb_WORKING_DEPARTMENT"></asp:Label>
                                                                </div>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="ชั่วโมง" SortExpression="WORK_HOURS">
                                                            <ItemTemplate>
                                                                <div style="width: 70px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:Label runat="server" Text='<%# Bind("WORK_HOURS") %>' ID="Lb_WORK_HOURS"></asp:Label>
                                                                </div>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="ภาคเรียน" SortExpression="STUDY_TERMS">
                                                            <ItemTemplate>
                                                                <div style="width: 70px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:Label runat="server" Text='<%# Bind("STUDY_TERMS") %>' ID="Lb_STUDY_TERMS"></asp:Label>
                                                                </div>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="ปีการศึกษา" SortExpression="STUDY_YEARS">
                                                            <ItemTemplate>
                                                                <div style="width: 70px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:Label runat="server" Text='<%# Bind("STUDY_YEARS") %>' ID="Lb_STUDY_YEARS"></asp:Label>
                                                                </div>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField HeaderText="สถานะ" SortExpression="APPROVE_STATUS">
                                                            <ItemTemplate>
                                                                <div style="width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                    <asp:Label runat="server" Text='<%# Bind("APPROVE_STATUS") %>' ID="Lb_APPROVE_STATUS"></asp:Label>
                                                                </div>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>

                                                    </Columns>

                                                </asp:GridView>
                                                <asp:SqlDataSource runat="server" ID="SqlDataSourceSTUDENT_WORKING_TIME" ConnectionString='<%$ ConnectionStrings:psustfdbConnectionString %>' SelectCommand="SELECT * FROM [STUDENT_WORKING_TIME]"></asp:SqlDataSource>
                                            </ContentTemplate>
                                            <Triggers>
                                                <asp:AsyncPostBackTrigger ControlID="Btn_allStdTimeTableFilter" EventName="Click" />
                                            </Triggers>
                                        </asp:UpdatePanel>
                                        <asp:UpdateProgress ID="UpdtPs_allStdTimeTable" runat="server">
                                            <ProgressTemplate>
                                                <progresstemplate>
                                                <div style="position: fixed; text-align: center; height: 100%; width: 100%; top: 0; right: 0; left: 0; z-index: 9999999; background-color: #000000; opacity: 0.7;">
                                                    <asp:Image ID="imgUpdateProgress" runat="server" ImageUrl="~/Content/animation/Flickr-1s-100px.gif" AlternateText="Loading ..." ToolTip="Loading ..." Style="padding: 10px; position: fixed; top: 45%; left: 50%;" />
                                                </div>
                                            </progresstemplate>
                                            </ProgressTemplate>
                                        </asp:UpdateProgress>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="list-uploadManagement" role="tabpanel" aria-labelledby="list-uploadManagement-list">
                    <div class="card">
                        <div class="card-header text-center" style="background-color: #28A745; color: #ffffff;">
                            จัดการ Upload
                        </div>
                        <div class="card-body">
                            <p>
                                <a class="btn btn-primary" data-toggle="collapse" href="#collapseDocUpload" role="button" aria-expanded="false" aria-controls="collapseDocUpload">Upload เอกสาร</a>
                                <a class="btn btn-primary" data-toggle="collapse" href="#collapsePicUpload" role="button" aria-expanded="false" aria-controls="collapsePicUpload">Upload ภาพ</a>
                                <a class="btn btn-primary" data-toggle="collapse" href="#collapseCalendar" role="button" aria-expanded="false" aria-controls="collapseCalendar">จัดการปฏิทิน</a>
                            </p>
                            <div class="collapse" id="collapseDocUpload">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="input-group mb-3">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text">ชื่อเอกสาร</span>
                                            </div>
                                            <asp:TextBox ID="Tb_filename" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="input-group mb-3">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text">อัปโหลด</span>
                                            </div>
                                            <div class="custom-file">
                                                <asp:FileUpload ID="FileUploadDoc" runat="server" accept=".pdf" class="custom-file-input" />
                                                <asp:Label ID="lb_uploaddoc" runat="server" Text="เลือกไฟล์" CssClass="custom-file-label" for="inputDoc"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="input-group mb-3">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text">วันที่อัปโหลดเอกสาร</span>
                                            </div>
                                            <asp:TextBox ID="Tb_uploaddate" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                                        </div>
                                        <div class="input-group mb-3">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text">วันหมดอายุ</span>
                                            </div>
                                            <asp:TextBox ID="Tb_expiredate" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                                        </div>
                                        <div class="input-group mb-3">
                                            <div class="input-group-prepend">
                                                <label class="input-group-text" for="Ddl_inputGroupSelectType">ประเภท</label>
                                            </div>
                                            <asp:DropDownList ID="Ddl_inputGroupSelectType" runat="server" CssClass="custom-select" DataSourceID="uploadDocArea" DataTextField="area" DataValueField="Id"></asp:DropDownList>
                                            <asp:SqlDataSource ID="uploadDocArea" runat="server" ConnectionString="<%$ ConnectionStrings:psustfdbConnectionString %>" SelectCommand="SELECT * FROM [uploadDocArea]"></asp:SqlDataSource>
                                        </div>
                                    </div>
                                    <div class="card-footer text-center">
                                        <asp:Button ID="Btn_docUpload" runat="server" Text="Upload" CssClass="btn btn-primary" OnClick="Btn_docUpload_Click" />
                                    </div>
                                </div>
                            </div>
                            <div class="collapse" id="collapsePicUpload">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="input-group mb-3">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text">ภาพที่ 1</span>
                                            </div>
                                            <div class="custom-file">
                                                <asp:FileUpload ID="FileUploadPic1" runat="server" accept=".png" class="custom-file-input" />
                                                <asp:Label ID="Lb_inputPic1" runat="server" Text="เลือกไฟล์" CssClass="custom-file-label" for="inputPic1"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="input-group mb-3">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text">ภาพที่ 2</span>
                                            </div>
                                            <div class="custom-file">
                                                <asp:FileUpload ID="FileUploadPic2" runat="server" accept=".png" class="custom-file-input" />
                                                <asp:Label ID="Lb_inputPic2" runat="server" Text="เลือกไฟล์" CssClass="custom-file-label" for="inputPic2"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="input-group mb-3">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text">ภาพที่ 3</span>
                                            </div>
                                            <div class="custom-file">
                                                <asp:FileUpload ID="FileUploadPic3" runat="server" accept=".png" class="custom-file-input" />
                                                <asp:Label ID="Lb_inputPic3" runat="server" Text="เลือกไฟล์" CssClass="custom-file-label" for="inputPic3"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="input-group mb-3">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text">ภาพที่ 4</span>
                                            </div>
                                            <div class="custom-file">
                                                <asp:FileUpload ID="FileUploadPic4" runat="server" accept=".png" class="custom-file-input" />
                                                <asp:Label ID="Lb_inputPic4" runat="server" Text="เลือกไฟล์" CssClass="custom-file-label" for="inputPic4"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="input-group mb-3">
                                            <div class="input-group-prepend">
                                                <span class="input-group-text">ภาพที่ 5</span>
                                            </div>
                                            <div class="custom-file">
                                                <asp:FileUpload ID="FileUploadPic5" runat="server" accept=".png" class="custom-file-input" />
                                                <asp:Label ID="Lb_inputPic5" runat="server" Text="เลือกไฟล์" CssClass="custom-file-label" for="inputPic5"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="input-group mb-3">
                                            <div class="input-group-prepend">
                                                <label class="input-group-text" for="Ddl_inputPicType">ประเภท</label>
                                            </div>
                                            <asp:DropDownList ID="Ddl_inputPicType" runat="server" CssClass="custom-select" DataSourceID="uploadPicArea2" DataTextField="area" DataValueField="Id"></asp:DropDownList>
                                            <asp:SqlDataSource ID="uploadPicArea2" runat="server" ConnectionString="<%$ ConnectionStrings:psustfdbConnectionString %>" SelectCommand="SELECT * FROM [officer_stdPicarea]"></asp:SqlDataSource>
                                        </div>
                                    </div>
                                    <div class="card-footer text-center">
                                        <asp:Button ID="Btn_picUpload" runat="server" Text="Upload" CssClass="btn btn-primary" OnClick="Btn_picUpload_Click" />
                                    </div>
                                </div>
                            </div>
                            <div class="collapse" id="collapseCalendar">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="container">
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="input-group">
                                                        <asp:TextBox ID="Tb_calendarFilter" runat="server" CssClass="form-control" placeholder="หัวข้อ" aria-label="หัวข้อ"></asp:TextBox>
                                                        <div class="input-group-append">
                                                            <asp:Button ID="Btn_carlendarSearch" runat="server" Text="ค้นหา" CssClass="btn btn-outline-success" OnClick="Btn_carlendarSearch_Click" />
                                                        </div>
                                                    </div>
                                                    <br />
                                                    <asp:UpdatePanel ID="Udpn_calendar" runat="server">
                                                        <ContentTemplate>
                                                            <asp:GridView ID="Gv_calendar" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSourceEVENT_CALENDAR" AllowPaging="True" AllowSorting="True" BorderStyle="None" CssClass="table-responsive" GridLines="None" RowStyle-BorderStyle="None" Width="100%" HeaderStyle-ForeColor="#28A745">

                                                                <Columns>
                                                                    <asp:TemplateField HeaderText="เรื่อง" SortExpression="SUBJECT">
                                                                        <EditItemTemplate>
                                                                            <div style="width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                            <asp:TextBox runat="server" Text='<%# Bind("SUBJECT") %>' ID="Tb_SUBJECT" CssClass="form-control"></asp:TextBox>
                                                                                </div>
                                                                        </EditItemTemplate>
                                                                        <ItemTemplate>
                                                                            <div style="width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                            <asp:Label runat="server" Text='<%# Bind("SUBJECT") %>' ID="Lb_SUBJECT"></asp:Label>
                                                                                </div>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderText="รายละเอียด" SortExpression="DESCRIPTION">
                                                                        <EditItemTemplate>
                                                                            <div style="width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                            <asp:TextBox runat="server" Text='<%# Bind("DESCRIPTION") %>' ID="Tb_DESCRIPTION" CssClass="form-control"></asp:TextBox>
                                                                                </div>
                                                                        </EditItemTemplate>
                                                                        <ItemTemplate>
                                                                            <div style="width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                            <asp:Label runat="server" Text='<%# Bind("DESCRIPTION") %>' ID="Lb_DESCRIPTION"></asp:Label>
                                                                                </div>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderText="เริ่ม" SortExpression="START">
                                                                        <EditItemTemplate>
                                                                            <div style="width: 70px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                            <asp:TextBox runat="server" Text='<%# Bind("START") %>' ID="Tb_START" CssClass="from-control" TextMode="Date"></asp:TextBox>
                                                                                </div>
                                                                        </EditItemTemplate>
                                                                        <ItemTemplate>
                                                                            <div style="width: 70px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                            <asp:Label runat="server" Text='<%# Bind("START") %>' ID="Lb_START"></asp:Label>
                                                                                </div>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderText="สิ้นสุด" SortExpression="END">
                                                                        <EditItemTemplate>
                                                                            <div style="width: 70px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                            <asp:TextBox runat="server" Text='<%# Bind("END") %>' ID="Tb_END" CssClass="form-control" TextMode="Date"></asp:TextBox>
                                                                                </div>
                                                                        </EditItemTemplate>
                                                                        <ItemTemplate>
                                                                            <div style="width: 70px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                            <asp:Label runat="server" Text='<%# Bind("END") %>' ID="Lb_END"></asp:Label>
                                                                                </div>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderText="ประเภท" SortExpression="CATEGORY">
                                                                        <EditItemTemplate>
                                                                            <div style="width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                          <!--  <asp:TextBox runat="server" Text='<%# Bind("CATEGORY") %>' ID="Tb_CATEGORY" CssClass="form-control"></asp:TextBox> -->
                                                                                <asp:DropDownList ID="Ddl_CATEGORY" runat="server" CssClass="form-control" SelectedValue='<%# Bind("CATEGORY") %>'>
                                                                                    <asp:ListItem>กยศ.</asp:ListItem>
                                                                                    <asp:ListItem>กรอ.</asp:ListItem>
                                                                                    <asp:ListItem>ทุนภายใน</asp:ListItem>
                                                                                    <asp:ListItem>ทุนภายนอก</asp:ListItem>
                                                                                </asp:DropDownList>
                                                                                </div>
                                                                        </EditItemTemplate>
                                                                        <ItemTemplate>
                                                                            <div style="width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                            <asp:Label runat="server" Text='<%# Bind("CATEGORY") %>' ID="Lb_CATEGORY"></asp:Label>
                                                                                </div>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderText="สถานะ" SortExpression="STATUS">
                                                                        <EditItemTemplate>
                                                                            <div style="width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                            <asp:TextBox runat="server" Text='<%# Bind("STATUS") %>' ID="Tb_STATUS" CssClass="form-control"></asp:TextBox>
                                                                                </div>
                                                                        </EditItemTemplate>
                                                                        <ItemTemplate>
                                                                            <div style="width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                            <asp:Label runat="server" Text='<%# Bind("STATUS") %>' ID="Lb_STATUS"></asp:Label>
                                                                                </div>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderText="รหัสเจ้าหน้าที่" SortExpression="CREATOR_ID">
                                                                        <EditItemTemplate>
                                                                            <div style="width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                            <asp:TextBox runat="server" Text='<%# Bind("CREATOR_ID") %>' ID="Tb_CREATOR_ID" CssClass="form-control"></asp:TextBox>
                                                                                </div>
                                                                        </EditItemTemplate>
                                                                        <ItemTemplate>
                                                                            <div style="width: 100px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis">
                                                                            <asp:Label runat="server" Text='<%# Bind("CREATOR_ID") %>' ID="Lb_CREATOR_ID"></asp:Label>
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
                                                            </asp:GridView>
                                                            <asp:SqlDataSource runat="server" ID="SqlDataSourceEVENT_CALENDAR" ConnectionString='<%$ ConnectionStrings:psustfdbConnectionString %>' DeleteCommand="DELETE FROM [EVENT_CALENDAR] WHERE [ID] = @ID" InsertCommand="INSERT INTO [EVENT_CALENDAR] ([SUBJECT], [DESCRIPTION], [START], [END], [CATEGORY], [THEME_COLOR], [ISFULLDAY], [STATUS], [CREATOR_ID], [CREATE_TIMESTAMP]) VALUES (@SUBJECT, @DESCRIPTION, @START, @END, @CATEGORY, @THEME_COLOR, @ISFULLDAY, @STATUS, @CREATOR_ID, @CREATE_TIMESTAMP)" SelectCommand="SELECT * FROM [EVENT_CALENDAR] WHERE ([STATUS] = @STATUS) ORDER BY [CREATE_TIMESTAMP] DESC" UpdateCommand="UPDATE [EVENT_CALENDAR] SET [SUBJECT] = @SUBJECT, [DESCRIPTION] = @DESCRIPTION, [START] = @START, [END] = @END, [CATEGORY] = @CATEGORY, [THEME_COLOR] = @THEME_COLOR, [ISFULLDAY] = @ISFULLDAY, [STATUS] = @STATUS, [CREATOR_ID] = @CREATOR_ID, [CREATE_TIMESTAMP] = @CREATE_TIMESTAMP WHERE [ID] = @ID">
                                                                <DeleteParameters>
                                                                    <asp:Parameter Name="ID" Type="Int32"></asp:Parameter>
                                                                </DeleteParameters>
                                                                <InsertParameters>
                                                                    <asp:Parameter Name="SUBJECT" Type="String"></asp:Parameter>
                                                                    <asp:Parameter Name="DESCRIPTION" Type="String"></asp:Parameter>
                                                                    <asp:Parameter Name="START" DbType="Date"></asp:Parameter>
                                                                    <asp:Parameter Name="END" DbType="Date"></asp:Parameter>
                                                                    <asp:Parameter Name="CATEGORY" Type="String"></asp:Parameter>
                                                                    <asp:Parameter Name="THEME_COLOR" Type="String"></asp:Parameter>
                                                                    <asp:Parameter Name="ISFULLDAY" Type="Boolean"></asp:Parameter>
                                                                    <asp:Parameter Name="STATUS" Type="String"></asp:Parameter>
                                                                    <asp:Parameter Name="CREATOR_ID" Type="String"></asp:Parameter>
                                                                    <asp:Parameter Name="CREATE_TIMESTAMP" Type="DateTime"></asp:Parameter>
                                                                </InsertParameters>
                                                                <SelectParameters>
                                                                    <asp:Parameter DefaultValue="Activate" Name="STATUS" Type="String"></asp:Parameter>
                                                                </SelectParameters>
                                                                <UpdateParameters>
                                                                    <asp:Parameter Name="SUBJECT" Type="String"></asp:Parameter>
                                                                    <asp:Parameter Name="DESCRIPTION" Type="String"></asp:Parameter>
                                                                    <asp:Parameter Name="START" DbType="Date"></asp:Parameter>
                                                                    <asp:Parameter Name="END" DbType="Date"></asp:Parameter>
                                                                    <asp:Parameter Name="CATEGORY" Type="String"></asp:Parameter>
                                                                    <asp:Parameter Name="THEME_COLOR" Type="String"></asp:Parameter>
                                                                    <asp:Parameter Name="ISFULLDAY" Type="Boolean"></asp:Parameter>
                                                                    <asp:Parameter Name="STATUS" Type="String"></asp:Parameter>
                                                                    <asp:Parameter Name="CREATOR_ID" Type="String"></asp:Parameter>
                                                                    <asp:Parameter Name="CREATE_TIMESTAMP" Type="DateTime"></asp:Parameter>
                                                                    <asp:Parameter Name="ID" Type="Int32"></asp:Parameter>
                                                                </UpdateParameters>
                                                            </asp:SqlDataSource>
                                                        </ContentTemplate>
                                                        <Triggers>
                                                            <asp:AsyncPostBackTrigger ControlID="Btn_carlendarSearch" EventName="Click" />
                                                            <asp:AsyncPostBackTrigger ControlID="Btn_calendar" EventName="Click" />
                                                            <asp:AsyncPostBackTrigger ControlID="Btn_addNewEventAdd" EventName="Click" />
                                                        </Triggers>
                                                    </asp:UpdatePanel>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-footer text-center">
                                        <asp:Button ID="Btn_calendar" runat="server" Text="เพิ่ม" CssClass="btn btn-primary" data-toggle="modal" data-target="#addNewEventModalCenter" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- add new event modal -->
    <div class="modal fade" id="addNewEventModalCenter" tabindex="-1" role="dialog" aria-labelledby="เพิ่มกิจกรรม" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="addNewEventModalLongTitle">เพิ่มกิจกรรม</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="">หัวข้อ</span>
                        </div>
                        <asp:TextBox ID="Tb_addNewSubjectName" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="">รายละเอียด</span>
                        </div>
                        <asp:TextBox ID="Tb_eventDiscription" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="">เริ่ม</span>
                        </div>
                        <asp:TextBox ID="Tb_eventStart" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="">สิ้นสุด</span>
                        </div>
                        <asp:TextBox ID="Tb_eventEnd" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="">ประเภท</span>
                        </div>
                        <asp:DropDownList ID="Ddl_category" runat="server" CssClass="form-control">
                            <asp:ListItem>กยศ.</asp:ListItem>
                            <asp:ListItem>กรอ.</asp:ListItem>
                            <asp:ListItem>ทุนภายใน</asp:ListItem>
                            <asp:ListItem>ทุนภายนอก</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="">สถานะ</span>
                        </div>
                        <asp:DropDownList ID="Ddl_eventStatus" runat="server" DataSourceID="SqlDataSourceEvent_Status" DataTextField="STATUS" DataValueField="STATUS" CssClass="form-control"></asp:DropDownList>
                        <asp:SqlDataSource runat="server" ID="SqlDataSourceEvent_Status" ConnectionString='<%$ ConnectionStrings:psustfdbConnectionString %>' SelectCommand="SELECT [STATUS] FROM [ESSENTIAL_DATA_EVENT_STATUS]"></asp:SqlDataSource>
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="">รหัสเจ้าหน้าที่</span>
                        </div>
                        <asp:TextBox ID="Tb_eventCreator_ID" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                </div>
                <div class="modal-footer">
                    <asp:Button ID="Btn_addNewEventCancel" runat="server" Text="ยกเลิก" CssClass="btn btn-secondary" data-dismiss="modal" />
                    <asp:Button ID="Btn_addNewEventAdd" runat="server" Text="เพิ่ม" CssClass="btn btn-primary" OnClick="Btn_addNewEventAdd_Click" />
                </div>
            </div>
        </div>
    </div>
    <br />
</asp:Content>
