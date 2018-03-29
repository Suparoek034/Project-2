using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace project2v3
{
    public partial class std_application : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=fixing-problem.database.windows.net;Initial Catalog=psustfdb;Persist Security Info=True;User ID=tim;Password=abc123**");
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Btn_std_save_address_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "UPDATE [STD_INFORMATION] SET [hometown_address] = '"+txt_hometown_address.Text+"', [hometown_moo] = '"+txt_hometown_moo.Text+"', [hometown_road] = '"+txt_hometown_road.Text+"', [hometown_subdistrict_id] = '"+ddl_hometown_subdistrict_id.SelectedValue+"', [hometown_district_id] = '"+ddl_hometown_district_id.SelectedValue+"', [hometown_province_id] = '"+ddl_hometown_province_id.SelectedValue+"', [hometown_zipcode] = '"+txt_hometown_zipcode.Text+"', [current_domitory] = '"+txt_current_domitory.Text+"', [current_roomnumber] = '"+txt_current_roomnumber.Text+"', [current_address] = '"+txt_current_address.Text+"', [current_moo] = '"+txt_current_moo.Text+"', [current_road] = '"+txt_current_road.Text+"', [current_subdistrict_id] = '"+ddl_current_subdistrict_id.SelectedValue+"', [current_district_id] = '"+ddl_current_district_id.SelectedValue+"', [current_province_id] = '"+ddl_current_province_id.SelectedValue+"', [current_zipcode] = '"+txt_current_zipcode.Text+"' WHERE [STUDENT_ID] = '"+ txt_student_id.Text+"'";
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('บันทึกสำเร็จค่ะ')", true);
        }

        protected void Btn_std_save_about_brethren_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "UPDATE [STD_INFORMATION] SET [orderofson] = '" + txt_orderofson.Text + "', [allson] = '" + txt_allson.Text + "', [man] = '" + txt_man.Text + "', [wommen] = '" + txt_wommen.Text + "', [numberofson_study] = '" + txt_numberofson_study.Text + "' WHERE [STUDENT_ID] = '" + txt_student_id.Text + "'";
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('บันทึกสำเร็จค่ะ')", true);
        }

        protected void Btn_std_save_education_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "UPDATE [STD_INFORMATION] SET [education_hight_third_year] = '" + txt_education_hight_third_year.Text + "', [education_hight_third_GPA] = '" + txt_education_hight_third_GPA.Text + "', [education_hight_third_teacher_name] = '" + txt_education_hight_third_teacher_name.Text + "', [education_hight_third_major] = '" + txt_education_hight_third_major.Text + "', [education_hight_sixth_year] = '" + txt_education_hight_sixth_year.Text + "', [education_hight_sixth_GPA] = '" + txt_education_hight_sixth_GPA.Text + "', [education_hight_sixth_teacher_name] = '" + txt_education_hight_sixth_teacher_name.Text + "', [education_hight_sixth_major] = '" + txt_education_hight_sixth_major.Text + "', [education_higher_first_year] = '" + txt_education_higher_first_year.Text + "', [education_higher_first_GPA] = '" + txt_education_higher_first_GPA.Text + "',[education_higher_second_year] = '" + txt_education_higher_second_year.Text + "', [education_higher_second_GPA] = '" + txt_education_higher_second_GPA.Text + "', [education_higher_third_year] = '" + txt_education_higher_third_year.Text + "', [education_higher_third_GPA] = '" + txt_education_higher_third_GPA.Text + "', [education_higher_fourth_year] = '" + txt_education_higher_fourth_year.Text + "', [education_higher_fourth_GPA] = '" + txt_education_higher_fourth_GPA.Text + "' WHERE [STUDENT_ID] = '" + txt_student_id.Text + "'";
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('บันทึกสำเร็จค่ะ')", true);

        }

        protected void Btn_std_save_family_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "UPDATE [STD_INFORMATION] SET [father_fullname] = N'" + txt_father_fullname.Text + "', [father_status] = '" + ddl_father_status.SelectedValue + "', [father_age] ='" + txt_father_age.Text + "', [father_occupation] = N'" + txt_father_occupation.Text + "',[father_work_area] = N'" + txt_father_work_area.Text + "', [father_phone] = '" + txt_father_phone.Text + "', [father_salary] = '" + txt_father_salary.Text + "', [father_sum_salary] = '" + txt_father_sum_salary.Text + "', [father_extra_salary] = '" + txt_father_extra_salary.Text + "', [father_total_salary] = '" + txt_father_total_salary.Text + "', [mother__fullname] = N'" + txt_mother_fullname.Text + "', [mother__status] ='" + ddl_mother_status.SelectedValue + "', [mother__age] = '" + txt_mother_age.Text+ "', [mother__occupation] = N'" + txt_mother_occupation.Text + "', [mother__work_area] = N'" + txt_mother_work_area.Text + "', [mother__phone] = N'" + txt_mother_phone.Text + "', [mother__salary] = '" + txt_mother_salary.Text + "', [mother__sum_salary] = '" + txt_mother_sum_salary.Text + "', [mother__extra_salary] ='" + txt_mother_extra_salary.Text + "', [mother__total_salary] ='" + txt_mother_total_salary.Text + "' WHERE [STUDENT_ID] = '" + txt_student_id.Text+"'";
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('บันทึกสำเร็จค่ะ')", true);
        }

        protected void Btn_std_save_activity_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "UPDATE [STD_INFORMATION] SET [reason] = N'" + txt_reason.Text + "', [outside] = N'" + txt_outside.Text + "', [activityofFaculty] = N'" + txt_activityofFaculty.Text + "', [activityofUniversity] = N'" + txt_activityofUniversity.Text + "' WHERE [STUDENT_ID] = '" + txt_student_id.Text + "'";
            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void Btn_patron_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "UPDATE [STD_INFORMATION] SET [patron_relationships] = N'" + txt_patron_relationships.Text + "', [patron_fullname] = N'" + txt_patron_fullname.Text + "', [patron_age] = '" + txt_patron_age.Text + "', [patron_education] = N'" + txt_patron_education.Text + "', [patron_job] = N'" + txt_patron_job.Text + "', [patron_work_area] = N'" + txt_patron_work_area.Text + "', [patron_phone] = '" + txt_patron_phone.Text + "', [patron_salary] = '" + txt_patron_salary.Text + "', [patron_sum_salary] = '" + txt_patron_sum_salary.Text + "', [patron_extra_salary] = '" + txt_patron_extra_salary.Text + "', [patron_total_salary] = '" + txt_patron_total_salary.Text + "', [parent_outlaw_fullname] = N'" + txt_parent_outlaw_fullname.Text + "', [parent_outlaw_education] = N'" + txt_parent_outlaw_education.Text + "', [parent_outlaw_age] = '" + txt_parent_outlaw_age.Text + "', [parent_outlaw_job] = N'" + txt_parent_outlaw_job.Text + "', [parent_outlaw_work_area] =N'" + txt_parent_outlaw_work_area.Text + "', [parent_outlaw_phone] = '" + txt_parent_outlaw_phone.Text + "', [parent_outlaw_salary] = '" + txt_parent_outlaw_salary.Text + "', [parent_outlaw_sum_salary] = '" + txt_parent_outlaw_sum_salary.Text + "', [parent_outlaw_extra_salary] = '" + txt_parent_outlaw_extra_salary.Text + "', [parent_outlaw_total_salary] = '" + txt_parent_outlaw_total_salary.Text + "' WHERE [STUDENT_ID] = '" + txt_student_id.Text + "'";
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('บันทึกสำเร็จค่ะ')", true);
        }

        protected void Btn_income_expens_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "UPDATE [STD_INFORMATION] SET [income] = '" + txt_income.Text + "', [extra_income] = '" + txt_extra_income.Text + "', [jobdescription] = '" + txt_jobdescription.Text + "', [totalincome] = '" + txt_totalincome.Text + "', [food_price] = '" + txt_food_price.Text + "', [transport_price] = '" + txt_transport_price.Text + "', [education_price] = '" + txt_education_price.Text + "', [totalexpens] = '" + txt_totalexpens.Text + "' WHERE [STUDENT_ID] = '" + txt_student_id.Text + "'";
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('บันทึกสำเร็จค่ะ')", true);

        }

        protected void Btn_std_save_information_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "INSERT INTO [STD_INFORMATION] ([STUDENT_ID], [STUD_NAME_THAI], [STUD_SNAME_THAI], [STUD_NAME_ENG], [STUD_SNAME_ENG], [MAJOR_ID], [DEPT_ID], [CITIZEN_ID], [degree], [phone], [email], [advisor_firstname], [advisor_lastname], [advisor_phone], [advisor_email], [grade], [GPA], [birthdate], [nationality], [religion], [congenital_ disease], [allergy]) VALUES ('" + txt_student_id.Text + "',N'"+txt_stud_name_thai.Text+"', N'"+ txt_stud_sname_thai.Text+"', '" + txt_stud_name_eng.Text + "', '" + txt_stud_sname_eng.Text + "', '" + ddl_major_id.SelectedValue + "', '" + ddl_faculty_id.SelectedValue + "','" + txt_citicen_id.Text + "', '" + txt_degree.Text + "', '" + txt_phone.Text + "', '" + txt_email.Text + "', '" + txt_advisor_firstname.Text + "', '" + txt_advisor_lastname.Text + "', '" + txt_advisor_phone.Text + "', '" + txt_advisor_email.Text + "', '" + txt_grade.Text + "', '" + txt_GPA.Text + "', '" + txt_birthdate.Text + "', '" + txt_nationality.Text + "', '" + txt_religion.Text + "', '" + txt_congenital_disease.Text + "', '" + txt_allergy.Text + "')";
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('บันทึกสำเร็จค่ะ')", true);

        }

        protected void Btn_std_save_parrent_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "UPDATE [STD_INFORMATION] SET [father_fullname] = N'" + txt_father_fullname.Text + "', [father_status] = '" + ddl_father_status.SelectedValue + "', [father_age] ='" + txt_father_age.Text + "', [father_occupation] = N'" + txt_father_occupation.Text + "',[father_work_area] = N'" + txt_father_work_area.Text + "', [father_phone] = '" + txt_father_phone.Text + "', [father_salary] = '" + txt_father_salary.Text + "', [father_sum_salary] = '" + txt_father_sum_salary.Text + "', [father_extra_salary] = '" + txt_father_extra_salary.Text + "', [father_total_salary] = '" + txt_father_total_salary.Text + "', [mother__fullname] = N'" + txt_mother_fullname.Text + "', [mother__status] ='" + ddl_mother_status.SelectedValue + "', [mother__age] = '" + txt_mother_age.Text + "', [mother__occupation] = N'" + txt_mother_occupation.Text + "', [mother__work_area] = N'" + txt_mother_work_area.Text + "', [mother__phone] = N'" + txt_mother_phone.Text + "', [mother__salary] = '" + txt_mother_salary.Text + "', [mother__sum_salary] = '" + txt_mother_sum_salary.Text + "', [mother__extra_salary] ='" + txt_mother_extra_salary.Text + "', [mother__total_salary] ='" + txt_mother_total_salary.Text + "' WHERE [STUDENT_ID] = '" + txt_student_id.Text + "'";
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('บันทึกสำเร็จค่ะ')", true);

        }

        protected void Btn_send_application_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('ยืนยันการสมัครทุน')", true);
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "INSERT INTO [HISTORYOFFUND_APPLICATION] ([STD_ID], [FUND_ID], [DATE],[APPROVE_STATUS]) VALUES ('" + txt_student_id.Text + "','" + ddl_fundName.SelectedValue + "','" +DateTime.Now+ "','Waiting')";
            cmd.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('สมัครทุนเรียบร้อยค่ะ')", true);
        }
    }
}