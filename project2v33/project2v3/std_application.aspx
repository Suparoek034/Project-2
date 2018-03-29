<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="std_application.aspx.cs" Inherits="project2v3.std_application" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <br />
    <div class="row">
        <div class="col-md-3">
            <div class="list-group" id="list-tab" role="tablist">
                <a class="list-group-item list-group-item-action active" id="list-selfInfor-list" data-toggle="list" href="#list-selfInfor" role="tab" aria-controls="selfInfor">ประวัติส่วนตัว</a>
                <a class="list-group-item list-group-item-action" id="list-addressInfor-list" data-toggle="list" href="#list-addressInfor" role="tab" aria-controls="addressInfor">ประวัติที่อยู่</a>
                <a class="list-group-item list-group-item-action" id="list-familyInfor-list" data-toggle="list" href="#list-familyInfor" role="tab" aria-controls="familyInfor">ประวัติครอบครัว</a>
                <a class="list-group-item list-group-item-action" id="list-educationInfor-list" data-toggle="list" href="#list-educationInfor" role="tab" aria-controls="educationInfor">ประวัติการศึกษา</a>
                <a class="list-group-item list-group-item-action" id="list-parentInfor-list" data-toggle="list" href="#list-parentInfor" role="tab" aria-controls="parentInfor">ประวัติผู้ปกครอง</a>
                <a class="list-group-item list-group-item-action" id="list-parentMoreInfor-list" data-toggle="list" href="#list-parentMoreInfor" role="tab" aria-controls="parentMoreInfor">ประวัติผู้ปกครอง(ต่อ)</a>
                <a class="list-group-item list-group-item-action" id="list-moneyInfor-list" data-toggle="list" href="#list-moneyInfor" role="tab" aria-controls="moneyInfor">ประวัติด้านการเงิน</a>
                <a class="list-group-item list-group-item-action" id="list-ativitiesInfor-list" data-toggle="list" href="#list-ativitiesInfor" role="tab" aria-controls="ativitiesInfor">ประวัติการเข้าร่วมกิจกรรม</a>
            </div>
        </div>
        <div class="col-md-9">
            <div class="tab-content" id="nav-tabContent">
                <div class="tab-pane fade show active" id="list-selfInfor" role="tabpanel" aria-labelledby="list-selfInfor-list">
                    <div class="card">
                        <div class="card-header text-center" style="background-color: #28A745; color: #ffffff;">
                            ประวัติส่วนตัว
                        </div>
                        <div class="card-body">
                            <div class="container">
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                    <ContentTemplate>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="lb_citicen_id" runat="server" Text="เลขประจำตัวประชาชน"></asp:Label>
                                                <asp:TextBox ID="txt_citicen_id" runat="server" onkeypress="return this.value.length<=12" CssClass="form-control"></asp:TextBox>
                                                <asp:RegularExpressionValidator ID="regex_txt_citicen_id" runat="server" ErrorMessage="กรุณาใส่เลขบัตรประชาชน" ControlToValidate="txt_citicen_id" ValidationExpression="^[0-9]\d{13}$"></asp:RegularExpressionValidator>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Lb_stdId" runat="server" Text="รหัสนักศึกษา"></asp:Label>
                                                <asp:TextBox ID="txt_student_id" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Lb_stdName" runat="server" Text="ชื่อ"></asp:Label>
                                                <asp:TextBox ID="txt_stud_name_thai" runat="server" CssClass="form-control"></asp:TextBox>
                                                <asp:RegularExpressionValidator ID="regex_firstname_TH" runat="server" ErrorMessage="กรุณาใส่ชื่อภาษาไทยเท่านั้น" ControlToValidate="txt_stud_name_thai" ValidationExpression="^[ก-๙]+$"></asp:RegularExpressionValidator>

                                            </div>
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Lb_stdLastname" runat="server" Text="นามสกุล"></asp:Label>
                                                <asp:TextBox ID="txt_stud_sname_thai" runat="server" CssClass="form-control"></asp:TextBox>
                                                <asp:RegularExpressionValidator ID="regex_lastname_TH" runat="server" ErrorMessage="กรุณาใส่นามสกุลภาษาไทยเท่านั้น" ControlToValidate="txt_stud_sname_thai" ValidationExpression="^[ก-๙]+$"></asp:RegularExpressionValidator>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Lb_stdNameEng" runat="server" Text="ชื่อ(ภาษาอังกฤษ)"></asp:Label>
                                                <asp:TextBox ID="txt_stud_name_eng" runat="server" CssClass="form-control"></asp:TextBox>
                                                <asp:RegularExpressionValidator ID="regex_firstname_ENG" runat="server" ErrorMessage="กรุณาใส่ชื่อภาษาอังกฤษเท่านั้น" ControlToValidate="txt_stud_name_eng"></asp:RegularExpressionValidator>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Lb_stdLastnameEng" runat="server" Text="นามสกุล(ภาษาอังกฤษ)"></asp:Label>
                                                <asp:TextBox ID="txt_stud_sname_eng" runat="server" CssClass="form-control"></asp:TextBox>
                                                <asp:RegularExpressionValidator ID="regex_lastname_ENG" runat="server" ErrorMessage="กรุณาใส่นามสกุลภาษาอังกฤษเท่านั้น" ControlToValidate="txt_stud_sname_eng"></asp:RegularExpressionValidator>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Lb_stdFaculty" runat="server" Text="คณะ"></asp:Label>
                                                <asp:SqlDataSource ID="DEPT" runat="server" ConnectionString="<%$ ConnectionStrings:psustfdbConnectionString %>" SelectCommand="SELECT * FROM DEPT WHERE FAC_ID=23 OR FAC_ID=48 OR FAC_ID=62 OR FAC_ID=70"></asp:SqlDataSource>
                                                <asp:DropDownList ID="ddl_faculty_id" runat="server" CssClass="form-control" DataSourceID="DEPT" DataTextField="DEPT_NAME_THAI" DataValueField="DEPT_ID" AutoPostBack="True"></asp:DropDownList>

                                            </div>
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Lb_stdMajor" runat="server" Text="สาขา"></asp:Label>
                                                <asp:SqlDataSource ID="MAJOR" runat="server" ConnectionString="<%$ ConnectionStrings:psustfdbConnectionString %>" SelectCommand="SELECT * FROM [MAJOR] WHERE ([DEPT_ID] = @DEPT_ID)">
                                                    <SelectParameters>
                                                        <asp:ControlParameter ControlID="ddl_faculty_id" DefaultValue="210" Name="DEPT_ID" PropertyName="SelectedValue" Type="Int32" />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>
                                                <asp:DropDownList ID="ddl_major_id" runat="server" CssClass="form-control" DataSourceID="MAJOR" DataTextField="MAJOR_NAME_THAI" DataValueField="MAJOR_ID" AutoPostBack="True"></asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Lb_stdTel" runat="server" Text="เบอร์โทรศัพท์"></asp:Label>
                                                <asp:TextBox ID="txt_phone" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Lb_stdEmail" runat="server" Text="Email"></asp:Label>
                                                <asp:TextBox ID="txt_email" runat="server" CssClass="form-control"></asp:TextBox>
                                                <asp:RegularExpressionValidator ID="regex_email" runat="server" ErrorMessage="อีเมลของคุณไม่ถูกต้อง กรุณาใส่อีเมลอีกครั้งค่ะ" ControlToValidate="txt_email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Lb_stdBirthday" runat="server" Text="วัน/เดือน/ปี เกิด"></asp:Label>
                                                <asp:TextBox ID="txt_birthdate" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Lb_stdNationality" runat="server" Text="สัญชาติ"></asp:Label>
                                                <asp:TextBox ID="txt_nationality" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Lb_stdReligion" runat="server" Text="ศาสนา"></asp:Label>
                                                <asp:TextBox ID="txt_religion" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Lb_stdYears" runat="server" Text="ชั้นปี"></asp:Label>
                                                <asp:TextBox ID="txt_degree" runat="server" onkeypress="return this.value.length<=0" CssClass="form-control"></asp:TextBox>
                                                <asp:RegularExpressionValidator ID="regex_degree" runat="server" ErrorMessage="กรุณาระบุชั้นปี" ControlToValidate="txt_degree" ValidationExpression="^[1-4]$"></asp:RegularExpressionValidator>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Lb_stdLastGrade" runat="server" Text="เกรดเฉลี่ยภาคการศึกษาล่าสุด"></asp:Label>
                                                <asp:TextBox ID="txt_grade" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Lb_stdGpa" runat="server" Text="เกรดเฉลี่ยรวม(GPA)"></asp:Label>
                                                <asp:TextBox ID="txt_GPA" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group">
                                                <asp:Label ID="Lb_stdAdvisor" runat="server" Text="อาจารย์ที่ปรึกษา"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Lb_stdAdvisorName" runat="server" Text="ชื่อ"></asp:Label>
                                                <asp:TextBox ID="txt_advisor_firstname" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Lb_stdAdvisorLastname" runat="server" Text="นามสกุล"></asp:Label>
                                                <asp:TextBox ID="txt_advisor_lastname" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Lb_stdAdvisorTel" runat="server" Text="เบอร์โทรศัพท์"></asp:Label>
                                                <asp:TextBox ID="txt_advisor_phone" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Lb_stdAdvisorEmail" runat="server" Text="Email"></asp:Label>
                                                <asp:TextBox ID="txt_advisor_email" runat="server" CssClass="form-control"></asp:TextBox>
                                                <asp:RegularExpressionValidator ID="regex_txt_advisor_email" runat="server" ErrorMessage="อีเมลของคุณไม่ถูกต้อง กรุณาใส่อีเมลอีกครั้งค่ะ" ControlToValidate="txt_advisor_email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="lb_congenital_disease" runat="server" Text="โรคประจำตัว"></asp:Label>
                                                <asp:TextBox ID="txt_congenital_disease" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="lb_allergy" runat="server" Text="ประวัติการแพ้ยา"></asp:Label>
                                                <asp:TextBox ID="txt_allergy" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="Btn_std_save_information" EventName="Click" />
                                    </Triggers>
                                </asp:UpdatePanel>
                                <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                                    <ProgressTemplate>
                                        <div style="position: fixed; text-align: center; height: 100%; width: 100%; top: 0; right: 0; left: 0; z-index: 9999999; background-color: #000000; opacity: 0.7;">
                                            <asp:Image ID="imgUpdateProgress" runat="server" ImageUrl="~/Content/animation/Flickr-1s-100px.gif" AlternateText="Loading ..." ToolTip="Loading ..." Style="padding: 10px; position: fixed; top: 45%; left: 50%;" />
                                        </div>
                                    </ProgressTemplate>
                                </asp:UpdateProgress>
                            </div>
                        </div>
                        <div class="card-footer text-center">
                            <asp:Button ID="Btn_std_save_information" runat="server" Text="บันทึก" CssClass="btn btn-primary" OnClick="Btn_std_save_information_Click" />
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="list-addressInfor" role="tabpanel" aria-labelledby="list-addressInfor-list">
                    <div class="card">
                        <div class="card-header text-center" style="background-color: #28A745; color: #ffffff;">
                            ประวัติที่อยู่
                        </div>
                        <div class="card-body">
                            <div class="container">
                                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                    <ContentTemplate>
                                        <div class="form-row">
                                            <div class="form-group">
                                                <asp:Label ID="Lb_stdOldAddress" runat="server" Text="ภูมิลำเนาเดิม"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="lb_hometown_address" runat="server" Text="บ้านเลขที่"></asp:Label>
                                                <asp:TextBox ID="txt_hometown_address" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label2" runat="server" Text="หมู่"></asp:Label>
                                                <asp:TextBox ID="txt_hometown_moo" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label3" runat="server" Text="ถนน/ซอย"></asp:Label>
                                                <asp:TextBox ID="txt_hometown_road" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label4" runat="server" Text="ตำบล"></asp:Label>
                                                <asp:DropDownList ID="ddl_hometown_subdistrict_id" runat="server" CssClass="form-control" DataSourceID="stdSubDistrict" DataTextField="subdistrict_name" DataValueField="subdistrict_id"></asp:DropDownList>
                                                <asp:SqlDataSource ID="stdSubDistrict" runat="server" ConnectionString="<%$ ConnectionStrings:psustfdbConnectionString %>" SelectCommand="SELECT * FROM [subdistrict]"></asp:SqlDataSource>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label5" runat="server" Text="อำเภอ"></asp:Label>
                                                <asp:DropDownList ID="ddl_hometown_district_id" runat="server" CssClass="form-control" DataSourceID="stdDistrict" DataTextField="district_name" DataValueField="district_id"></asp:DropDownList>
                                                <asp:SqlDataSource ID="stdDistrict" runat="server" ConnectionString="<%$ ConnectionStrings:psustfdbConnectionString %>" SelectCommand="SELECT * FROM [district]"></asp:SqlDataSource>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label6" runat="server" Text="จังหวัด"></asp:Label>
                                                <asp:DropDownList ID="ddl_hometown_province_id" runat="server" CssClass="form-control" DataSourceID="stdProvince" DataTextField="province_name" DataValueField="province_id"></asp:DropDownList>
                                                <asp:SqlDataSource ID="stdProvince" runat="server" ConnectionString="<%$ ConnectionStrings:psustfdbConnectionString %>" SelectCommand="SELECT * FROM [province]"></asp:SqlDataSource>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label7" runat="server" Text="รหัสไปรษณีย์"></asp:Label>
                                                <asp:TextBox ID="txt_hometown_zipcode" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group">
                                                <asp:Label ID="Lb_stdCurrentAddress" runat="server" Text="ที่อยู่ปัจจุบัน"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label8" runat="server" Text="หอพัก"></asp:Label>
                                                <asp:TextBox ID="txt_current_domitory" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label9" runat="server" Text="ห้องพัก"></asp:Label>
                                                <asp:TextBox ID="txt_current_roomnumber" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label10" runat="server" Text="บ้านเลขที่"></asp:Label>
                                                <asp:TextBox ID="txt_current_address" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label11" runat="server" Text="หมู่ที่"></asp:Label>
                                                <asp:TextBox ID="txt_current_moo" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label12" runat="server" Text="ถนน/ซอย"></asp:Label>
                                                <asp:TextBox ID="txt_current_road" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label13" runat="server" Text="ตำบล"></asp:Label>
                                                <asp:DropDownList ID="ddl_current_subdistrict_id" runat="server" CssClass="form-control" DataSourceID="stdSubDistrict" DataTextField="subdistrict_name" DataValueField="subdistrict_id"></asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label14" runat="server" Text="อำเภอ"></asp:Label>
                                                <asp:DropDownList ID="ddl_current_district_id" runat="server" CssClass="form-control" DataSourceID="stdDistrict" DataTextField="district_name" DataValueField="district_id"></asp:DropDownList>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label15" runat="server" Text="จังหวัด"></asp:Label>
                                                <asp:DropDownList ID="ddl_current_province_id" runat="server" CssClass="form-control" DataSourceID="stdProvince" DataTextField="province_name" DataValueField="province_id"></asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label16" runat="server" Text="รหัสไปรษณีย์"></asp:Label>
                                                <asp:TextBox ID="txt_current_zipcode" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="Btn_std_save_address" EventName="Click" />
                                    </Triggers>
                                </asp:UpdatePanel>
                                <asp:UpdateProgress ID="UpdateProgress_address" runat="server">
                                    <ProgressTemplate>
                                        <div style="position: fixed; text-align: center; height: 100%; width: 100%; top: 0; right: 0; left: 0; z-index: 9999999; background-color: #000000; opacity: 0.7;">
                                            <asp:Image ID="imgUpdateProgress_address" runat="server" ImageUrl="~/Content/animation/Flickr-1s-100px.gif" AlternateText="Loading ..." ToolTip="Loading ..." Style="padding: 10px; position: fixed; top: 45%; left: 50%;" />
                                        </div>
                                    </ProgressTemplate>
                                </asp:UpdateProgress>
                            </div>
                        </div>
                        <div class="card-footer text-center">
                            <asp:Button ID="Btn_std_save_address" runat="server" Text="บันทึก" CssClass="btn btn-primary" OnClick="Btn_std_save_address_Click" />
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="list-familyInfor" role="tabpanel" aria-labelledby="list-familyInfor-list">
                    <div class="card">
                        <div class="card-header text-center" style="background-color: #28A745; color: #ffffff;">
                            ประวัติครอบครัว
                        </div>
                        <div class="card-body">
                            <div class="container">
                                <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                    <ContentTemplate>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label17" runat="server" Text="ผู้สมัครเป็นบุตรคนที่"></asp:Label>
                                                <asp:TextBox ID="txt_orderofson" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label18" runat="server" Text="จำนวนพี่น้องที่ยังมีชีวิตอยู่"></asp:Label>
                                                <asp:TextBox ID="txt_allson" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label19" runat="server" Text="จำนวนพี่น้องชายที่ยังมีชีวิตอยู่"></asp:Label>
                                                <asp:TextBox ID="txt_man" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label20" runat="server" Text="จำนวนพี่น้องหญิงที่ยังมีชีวิตอยู่"></asp:Label>
                                                <asp:TextBox ID="txt_wommen" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label21" runat="server" Text="จำนวนพี่น้องที่กำลังศึกษาอยู่"></asp:Label>
                                                <asp:TextBox ID="txt_numberofson_study" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group">
                                                <asp:Label ID="Label22" runat="server" Text="โปรดระบุเกี่ยวกับพี่น้องของท่าน"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label23" runat="server" Text="ชื่อ-สกุล"></asp:Label>
                                                <asp:TextBox ID="TextBox16" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label24" runat="server" Text="อายุ"></asp:Label>
                                                <asp:TextBox ID="TextBox17" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label25" runat="server" Text="การศึกษา"></asp:Label>
                                                <asp:TextBox ID="TextBox18" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label26" runat="server" Text="อาชีพ"></asp:Label>
                                                <asp:TextBox ID="TextBox19" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label27" runat="server" Text="สถานที่ทำงานหรือสถานศึกษา"></asp:Label>
                                                <asp:TextBox ID="TextBox20" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label28" runat="server" Text="รายได้ต่อเดือน"></asp:Label>
                                                <asp:TextBox ID="TextBox21" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="Btn_std_save_about_brethren" EventName="Click" />
                                    </Triggers>
                                </asp:UpdatePanel>
                                <asp:UpdateProgress ID="UpdateProgress2" runat="server">
                                    <ProgressTemplate>
                                        <div style="position: fixed; text-align: center; height: 100%; width: 100%; top: 0; right: 0; left: 0; z-index: 9999999; background-color: #000000; opacity: 0.7;">
                                            <asp:Image ID="img_UpdtPs_about_brethren" runat="server" ImageUrl="~/Content/animation/Flickr-1s-100px.gif" AlternateText="Loading ..." ToolTip="Loading ..." Style="padding: 10px; position: fixed; top: 45%; left: 50%;" />
                                        </div>
                                    </ProgressTemplate>
                                </asp:UpdateProgress>
                            </div>
                        </div>
                        <div class="card-footer text-center">
                            <asp:Button ID="Btn_std_save_about_brethren" runat="server" Text="บันทึก" CssClass="btn btn-primary" OnClick="Btn_std_save_about_brethren_Click" />
                        </div>
                    </div>

                </div>
                <div class="tab-pane fade" id="list-educationInfor" role="tabpanel" aria-labelledby="list-educationInfor-list">
                    <div class="card">
                        <div class="card-header text-center" style="background-color: #28A745; color: #ffffff;">
                            ประวัติการศึกษา
                        </div>
                        <div class="card-body">
                            <div class="container">
                                <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                                    <ContentTemplate>
                                        <div class="form-row">
                                            <div class="form-group">
                                                <asp:Label ID="Label33" runat="server" Text="ชั้นมัธยมศึกษาปีที่ 3"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label34" runat="server" Text="ปีการศึกษา"></asp:Label>
                                                <asp:TextBox ID="txt_education_hight_third_year" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label35" runat="server" Text="เกรดเฉลี่ย(GPA.)"></asp:Label>
                                                <asp:TextBox ID="txt_education_hight_third_GPA" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label36" runat="server" Text="อาจารย์ที่ปรึกษา"></asp:Label>
                                                <asp:TextBox ID="txt_education_hight_third_teacher_name" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label37" runat="server" Text="สาขา"></asp:Label>
                                                <asp:TextBox ID="txt_education_hight_third_major" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <%-- U3 --%>
                                        <div class="form-row">
                                            <div class="form-group">
                                                <asp:Label ID="Label38" runat="server" Text="ชั้นมัธยมศึกษาปีที่ 6"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label39" runat="server" Text="ปีการศึกษา"></asp:Label>
                                                <asp:TextBox ID="txt_education_hight_sixth_year" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label40" runat="server" Text="เกรดเฉลี่ย(GPA.)"></asp:Label>
                                                <asp:TextBox ID="txt_education_hight_sixth_GPA" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label41" runat="server" Text="อาจารย์ที่ปรึกษา"></asp:Label>
                                                <asp:TextBox ID="txt_education_hight_sixth_teacher_name" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label42" runat="server" Text="สาขา"></asp:Label>
                                                <asp:TextBox ID="txt_education_hight_sixth_major" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group">
                                                <asp:Label ID="Label43" runat="server" Text="อุดมศึกษาปีที่ 1"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label44" runat="server" Text="ปีการศึกษา"></asp:Label>
                                                <asp:TextBox ID="txt_education_higher_first_year" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label45" runat="server" Text="เกรดเฉลี่ย(GPA.)"></asp:Label>
                                                <asp:TextBox ID="txt_education_higher_first_GPA" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <%-- U4 --%>
                                        <div class="form-row">
                                            <div class="form-group">
                                                <asp:Label ID="Label48" runat="server" Text="อุดมศึกษาปีที่ 2"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label49" runat="server" Text="ปีการศึกษา"></asp:Label>
                                                <asp:TextBox ID="txt_education_higher_second_year" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label50" runat="server" Text="เกรดเฉลี่ย(GPA.)"></asp:Label>
                                                <asp:TextBox ID="txt_education_higher_second_GPA" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <%-- U3 --%>
                                        <div class="form-row">
                                            <div class="form-group">
                                                <asp:Label ID="Label53" runat="server" Text="อุดมศึกษาปีที่ 3"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label54" runat="server" Text="ปีการศึกษา"></asp:Label>
                                                <asp:TextBox ID="txt_education_higher_third_year" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label55" runat="server" Text="เกรดเฉลี่ย(GPA.)"></asp:Label>
                                                <asp:TextBox ID="txt_education_higher_third_GPA" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <%-- U4 --%>
                                        <div class="form-row">
                                            <div class="form-group">
                                                <asp:Label ID="Label58" runat="server" Text="อุดมศึกษาปีที่ 4"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label59" runat="server" Text="ปีการศึกษา"></asp:Label>
                                                <asp:TextBox ID="txt_education_higher_fourth_year" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label60" runat="server" Text="เกรดเฉลี่ย(GPA.)"></asp:Label>
                                                <asp:TextBox ID="txt_education_higher_fourth_GPA" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="Btn_std_save_education" EventName="Click" />
                                    </Triggers>
                                </asp:UpdatePanel>
                                <asp:UpdateProgress ID="UpdateProgress3" runat="server">
                                    <ProgressTemplate>
                                        <div style="position: fixed; text-align: center; height: 100%; width: 100%; top: 0; right: 0; left: 0; z-index: 9999999; background-color: #000000; opacity: 0.7;">
                                            <asp:Image ID="img_UpdtPs_education" runat="server" ImageUrl="~/Content/animation/Flickr-1s-100px.gif" AlternateText="Loading ..." ToolTip="Loading ..." Style="padding: 10px; position: fixed; top: 45%; left: 50%;" />
                                        </div>
                                        >
                                    </ProgressTemplate>
                                </asp:UpdateProgress>
                            </div>
                        </div>
                        <div class="card-footer text-center">
                            <asp:Button ID="Btn_std_save_education" runat="server" Text="บันทึก" CssClass="btn btn-primary" OnClick="Btn_std_save_education_Click" />
                        </div>
                    </div>

                </div>
                <div class="tab-pane fade" id="list-parentInfor" role="tabpanel" aria-labelledby="list-parentInfor-list">
                    <div class="card">
                        <div class="card-header text-center" style="background-color: #28A745; color: #ffffff;">
                            ประวัติผู้ปกครอง
                        </div>
                        <div class="card-body">
                            <div class="container">
                                <asp:UpdatePanel ID="Udpn_parentInfor" runat="server">
                                    <ContentTemplate>
                                        <div class="form-row">
                                            <div class="form-group">
                                                <asp:Label ID="Label75" runat="server" Text="ประวัติบิดา"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label63" runat="server" Text="ชื่อ-สกุล"></asp:Label>
                                                <asp:TextBox ID="txt_father_fullname" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label64" runat="server" Text="สถานะการมีชีวิตอยู่"></asp:Label>
                                                <asp:DropDownList ID="ddl_father_status" runat="server" CssClass="form-control"></asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label65" runat="server" Text="อายุ"></asp:Label>
                                                <asp:TextBox ID="txt_father_age" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label66" runat="server" Text="อาชีพ"></asp:Label>
                                                <asp:TextBox ID="txt_father_occupation" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label67" runat="server" Text="สถานที่ทำงาน"></asp:Label>
                                                <asp:TextBox ID="txt_father_work_area" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label76" runat="server" Text="เบอร์โทรศัพท์"></asp:Label>
                                                <asp:TextBox ID="txt_father_phone" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label77" runat="server" Text="รายได้/เดือน"></asp:Label>
                                                <asp:TextBox ID="txt_father_salary" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label78" runat="server" Text="รายได้/ปี"></asp:Label>
                                                <asp:TextBox ID="txt_father_sum_salary" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label79" runat="server" Text="รายได้พิเศษ"></asp:Label>
                                                <asp:TextBox ID="txt_father_extra_salary" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label80" runat="server" Text="รายได้รวมทั้งหมด"></asp:Label>
                                                <asp:TextBox ID="txt_father_total_salary" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group">
                                                <asp:Label ID="Label68" runat="server" Text="ประวัติมารดา"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label69" runat="server" Text="ชื่อ-สกุล"></asp:Label>
                                                <asp:TextBox ID="txt_mother_fullname" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label70" runat="server" Text="สถานะการมีชีวิตอยู่"></asp:Label>
                                                <asp:DropDownList ID="ddl_mother_status" runat="server" CssClass="form-control"></asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label71" runat="server" Text="อายุ"></asp:Label>
                                                <asp:TextBox ID="txt_mother_age" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label72" runat="server" Text="อาชีพ"></asp:Label>
                                                <asp:TextBox ID="txt_mother_occupation" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label73" runat="server" Text="สถานที่ทำงาน"></asp:Label>
                                                <asp:TextBox ID="txt_mother_work_area" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label74" runat="server" Text="เบอร์โทรศัพท์"></asp:Label>
                                                <asp:TextBox ID="txt_mother_phone" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label81" runat="server" Text="รายได้/เดือน"></asp:Label>
                                                <asp:TextBox ID="txt_mother_salary" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label82" runat="server" Text="รายได้/ปี"></asp:Label>
                                                <asp:TextBox ID="txt_mother_sum_salary" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label83" runat="server" Text="รายได้พิเศษ"></asp:Label>
                                                <asp:TextBox ID="txt_mother_extra_salary" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label84" runat="server" Text="รายได้รวมทั้งหมด"></asp:Label>
                                                <asp:TextBox ID="txt_mother_total_salary" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="Btn_std_save_parrent" EventName="Click" />
                                    </Triggers>
                                </asp:UpdatePanel>
                                <asp:UpdateProgress ID="UpdtPs_parrent" runat="server">
                                    <ProgressTemplate>
                                        <div style="position: fixed; text-align: center; height: 100%; width: 100%; top: 0; right: 0; left: 0; z-index: 9999999; background-color: #000000; opacity: 0.7;">
                                            <asp:Image ID="img_UpdtPs_parrent" runat="server" ImageUrl="~/Content/animation/Flickr-1s-100px.gif" AlternateText="Loading ..." ToolTip="Loading ..." Style="padding: 10px; position: fixed; top: 45%; left: 50%;" />
                                        </div>
                                    </ProgressTemplate>
                                </asp:UpdateProgress>
                            </div>
                        </div>
                        <div class="card-footer text-center">
                            <asp:Button ID="Btn_std_save_parrent" runat="server" Text="บันทึก" CssClass="btn btn-primary" OnClick="Btn_std_save_parrent_Click" />
                        </div>
                    </div>

                </div>
                <div class="tab-pane fade" id="list-parentMoreInfor" role="tabpanel" aria-labelledby="list-parentMoreInfor-list">
                    <div class="card">
                        <div class="card-header text-center" style="background-color: #28A745; color: #ffffff;">
                            ประวัติผู้ปกครอง(ต่อ)
                        </div>
                        <div class="card-body">
                            <div class="container">
                                <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                                    <ContentTemplate>
                                        <div class="form-row">
                                            <div class="form-group">
                                                <asp:Label ID="Label85" runat="server" Text="ประวัติผู้ปกครอง"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label107" runat="server" Text="เกี่ยวข้องเป็น"></asp:Label>
                                                <asp:TextBox ID="txt_patron_relationships" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label86" runat="server" Text="ชื่อ-สกุล"></asp:Label>
                                                <asp:TextBox ID="txt_patron_fullname" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label87" runat="server" Text="การศึกษา"></asp:Label>
                                                <asp:TextBox ID="txt_patron_education" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label88" runat="server" Text="อายุ"></asp:Label>
                                                <asp:TextBox ID="txt_patron_age" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label89" runat="server" Text="อาชีพ"></asp:Label>
                                                <asp:TextBox ID="txt_patron_job" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label90" runat="server" Text="สถานที่ทำงาน"></asp:Label>
                                                <asp:TextBox ID="txt_patron_work_area" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label91" runat="server" Text="เบอร์โทรศัพท์"></asp:Label>
                                                <asp:TextBox ID="txt_patron_phone" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label92" runat="server" Text="รายได้/เดือน"></asp:Label>
                                                <asp:TextBox ID="txt_patron_salary" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label93" runat="server" Text="รายได้/ปี"></asp:Label>
                                                <asp:TextBox ID="txt_patron_sum_salary" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label94" runat="server" Text="รายได้พิเศษ"></asp:Label>
                                                <asp:TextBox ID="txt_patron_extra_salary" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label95" runat="server" Text="รายได้รวมทั้งหมด"></asp:Label>
                                                <asp:TextBox ID="txt_patron_total_salary" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group">
                                                <asp:Label ID="Label96" runat="server" Text="ประวัติสามี/ภรรยใหม่(กรณีบิดา/มารดา แต่งงานใหม่)"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label97" runat="server" Text="ชื่อ-สกุล"></asp:Label>
                                                <asp:TextBox ID="txt_parent_outlaw_fullname" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label98" runat="server" Text="การศึกษา"></asp:Label>
                                                <asp:TextBox ID="txt_parent_outlaw_education" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label99" runat="server" Text="อายุ"></asp:Label>
                                                <asp:TextBox ID="txt_parent_outlaw_age" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label100" runat="server" Text="อาชีพ"></asp:Label>
                                                <asp:TextBox ID="txt_parent_outlaw_job" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label101" runat="server" Text="สถานที่ทำงาน"></asp:Label>
                                                <asp:TextBox ID="txt_parent_outlaw_work_area" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label102" runat="server" Text="เบอร์โทรศัพท์"></asp:Label>
                                                <asp:TextBox ID="txt_parent_outlaw_phone" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label103" runat="server" Text="รายได้/เดือน"></asp:Label>
                                                <asp:TextBox ID="txt_parent_outlaw_salary" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label104" runat="server" Text="รายได้/ปี"></asp:Label>
                                                <asp:TextBox ID="txt_parent_outlaw_sum_salary" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label105" runat="server" Text="รายได้พิเศษ"></asp:Label>
                                                <asp:TextBox ID="txt_parent_outlaw_extra_salary" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label106" runat="server" Text="รายได้รวมทั้งหมด"></asp:Label>
                                                <asp:TextBox ID="txt_parent_outlaw_total_salary" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="Btn_patron" EventName="Click" />
                                    </Triggers>
                                </asp:UpdatePanel>
                                <asp:UpdateProgress ID="UpdateProgress4" runat="server">
                                    <ProgressTemplate>
                                        <div style="position: fixed; text-align: center; height: 100%; width: 100%; top: 0; right: 0; left: 0; z-index: 9999999; background-color: #000000; opacity: 0.7;">
                                            <asp:Image ID="img_UpdtPs_patron" runat="server" ImageUrl="~/Content/animation/Flickr-1s-100px.gif" AlternateText="Loading ..." ToolTip="Loading ..." Style="padding: 10px; position: fixed; top: 45%; left: 50%;" />
                                        </div>
                                    </ProgressTemplate>
                                </asp:UpdateProgress>
                            </div>
                        </div>
                        <div class="card-footer text-center">
                            <asp:Button ID="Btn_patron" runat="server" Text="บันทึก" CssClass="btn btn-primary" OnClick="Btn_patron_Click" />
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="list-moneyInfor" role="tabpanel" aria-labelledby="list-moneyInfor-list">
                    <div class="card">
                        <div class="card-header text-center" style="background-color: #28A745; color: #ffffff;">
                            ประวัติด้านการเงิน
                        </div>
                        <div class="card-body">
                            <div class="container">
                                <asp:UpdatePanel ID="UpdatePanel6" runat="server">
                                    <ContentTemplate>
                                        <div class="form-row">
                                            <div class="form-group">
                                                <asp:Label ID="Label108" runat="server" Text="รายรับ"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label110" runat="server" Text="รายรับจากผู้ปกครองต่อเดือน(บาท)"></asp:Label>
                                                <asp:TextBox ID="txt_income" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label111" runat="server" Text="รายรับจากการทำงานพิเศษต่อเดือน(บาท)"></asp:Label>
                                                <asp:TextBox ID="txt_extra_income" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label112" runat="server" Text="ลักษณะงานพิเศษ"></asp:Label>
                                                <asp:TextBox ID="txt_jobdescription" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label113" runat="server" Text="รวมรายได้ทั้งหมดต่อเดือน(บาท)"></asp:Label>
                                                <asp:TextBox ID="txt_totalincome" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group">
                                                <asp:Label ID="Label120" runat="server" Text="รายจ่าย"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label121" runat="server" Text="ค่าอาหารต่อวัน(บาท)"></asp:Label>
                                                <asp:TextBox ID="txt_food_price" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label122" runat="server" Text="ค่าอาหารต่อวัน(บาท)"></asp:Label>
                                                <asp:TextBox ID="TextBox97" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label123" runat="server" Text="ค่าเดินทางต่อวัน(บาท)"></asp:Label>
                                                <asp:TextBox ID="txt_transport_price" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label124" runat="server" Text="ค่าใช้จ่ายเกี่ยวเนื่องกับการศึกษา(บาท)"></asp:Label>
                                                <asp:TextBox ID="txt_education_price" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label30" runat="server" Text="รวมค่าใช้จ่ายต่อวัน(บาท)"></asp:Label>
                                                <asp:TextBox ID="txt_totalexpens" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="Btn_income_expens" EventName="Click" />
                                    </Triggers>
                                </asp:UpdatePanel>
                                <asp:UpdateProgress ID="UpdateProgress5" runat="server">
                                    <ProgressTemplate>
                                        <div style="position: fixed; text-align: center; height: 100%; width: 100%; top: 0; right: 0; left: 0; z-index: 9999999; background-color: #000000; opacity: 0.7;">
                                            <asp:Image ID="img_UpdtPs_income_expens" runat="server" ImageUrl="~/Content/animation/Flickr-1s-100px.gif" AlternateText="Loading ..." ToolTip="Loading ..." Style="padding: 10px; position: fixed; top: 45%; left: 50%;" />
                                        </div>
                                    </ProgressTemplate>
                                </asp:UpdateProgress>
                            </div>
                        </div>
                        <div class="card-footer text-center">
                            <asp:Button ID="Btn_income_expens" runat="server" Text="บันทึก" CssClass="btn btn-primary" OnClick="Btn_income_expens_Click" />
                        </div>
                    </div>

                </div>
                <div class="tab-pane fade" id="list-ativitiesInfor" role="tabpanel" aria-labelledby="list-ativitiesInfor-list">
                    <div class="card">
                        <div class="card-header text-center" style="background-color: #28A745; color: #ffffff;">
                            ประวัติการเข้าร่วมกิจกรรม
                        </div>
                        <div class="card-body">
                            <div class="container">
                                <asp:UpdatePanel ID="UpdatePanel7" runat="server">
                                    <ContentTemplate>
                                        <div class="form-row">
                                            <div class="form-group">
                                                <asp:Label ID="Label109" runat="server" Text="การเข้าร่วมกิจกรรมต่างๆในมหาวิทยาลัย"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-12">
                                                <asp:Label ID="Label114" runat="server" Text="กิจกรรมของมหาวิทยาลัย"></asp:Label>
                                                <asp:TextBox ID="txt_activityofUniversity" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="5"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-12">
                                                <asp:Label ID="Label115" runat="server" Text="กิจกรรมของคณะ"></asp:Label>
                                                <asp:TextBox ID="txt_activityofFaculty" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="5"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-12">
                                                <asp:Label ID="Label119" runat="server" Text="กิจกรรมภายนอกมหาวิทยาลัย"></asp:Label>
                                                <asp:TextBox ID="txt_outside" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="5"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group">
                                                <asp:Label ID="Label116" runat="server" Text="ความจำเป็นในการขอรับทุน"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-12">
                                                <asp:Label ID="Label126" runat="server" Text="ให้เขียนสรุปข้อมูลเกี่ยวกับการดำเนินชีวิตของผู้ขอรับทุน ซึ่งแสดงถึงสภาวะความยากลำบากของครอบครัว ตลอดจนปัญหาต่างๆ ที่มี พร้อมทั้งความคาดหวังในการศึกษาหรือ การประกอบอาชีพในอนาคต"></asp:Label>
                                                <asp:TextBox ID="txt_reason" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="5"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-row">
                                            <div class="form-group col-md-6">
                                                <asp:Label ID="Label29" runat="server" Text="ทุน"></asp:Label>
                                                <asp:DropDownList ID="ddl_fundName" runat="server" CssClass="form-control" DataSourceID="LIST_INSIDE_FUNDS" DataTextField="NAME" DataValueField="ID"></asp:DropDownList>
                                                <asp:SqlDataSource runat="server" ID="LIST_INSIDE_FUNDS" ConnectionString='<%$ ConnectionStrings:psustfdbConnectionString %>' SelectCommand="SELECT * FROM [LIST_INSIDE_FUNDS]"></asp:SqlDataSource>
                                                <asp:SqlDataSource ID="scholarshipName" runat="server" ConnectionString="<%$ ConnectionStrings:psustfdbConnectionString %>" SelectCommand="SELECT * FROM [DEPT]"></asp:SqlDataSource>
                                            </div>
                                        </div>
                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="Btn_std_save_activity" EventName="Click" />
                                    </Triggers>
                                </asp:UpdatePanel>
                                <asp:UpdateProgress ID="UpdateProgress6" runat="server">
                                    <ProgressTemplate>
                                        <div style="position: fixed; text-align: center; height: 100%; width: 100%; top: 0; right: 0; left: 0; z-index: 9999999; background-color: #000000; opacity: 0.7;">
                                            <asp:Image ID="img_UpdtPs_activity" runat="server" ImageUrl="~/Content/animation/Flickr-1s-100px.gif" AlternateText="Loading ..." ToolTip="Loading ..." Style="padding: 10px; position: fixed; top: 45%; left: 50%;" />
                                        </div>
                                    </ProgressTemplate>
                                </asp:UpdateProgress>
                            </div>
                        </div>
                        <div class="card-footer text-center">
                            <asp:Button ID="Btn_std_save_activity" runat="server" Text="บันทึก" CssClass="btn btn-primary" OnClick="Btn_std_save_activity_Click" />
                            <asp:Button ID="Btn_send_application" runat="server" Text="ส่งใบสมัคร" CssClass="btn btn-success" OnClick="Btn_send_application_Click" />
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <br />
    <br />
    <br />
</asp:Content>
