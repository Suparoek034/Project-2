using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Threading;

namespace project2v3
{
    public partial class std_add_time_table : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=fixing-problem.database.windows.net;Initial Catalog=psustfdb;User ID=tim;Password=abc123**");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_addWorkingTimeSearch_Click(object sender, EventArgs e)
        {
            Thread.Sleep(1000);
            string STUDENT_ID = Tb_addWorkingTimeFilter.Text;
            string Filter = "";

            //Colum of data table
            if (STUDENT_ID != "") { Filter = Filter + "STUDENT_ID like '%" + STUDENT_ID + "%' and "; }

            //Add filter expression of datasource
            if (Filter.Length > 0)
            {
                string FinalFilter = Filter.Remove(Filter.Length - 4, 3);
                SqlDataSourceSTUDENT_WORKING_TIME.FilterExpression = FinalFilter;
            }
            else
            {
                Gv_STUDENT_WORKING_TIME.DataBind();
            }
        }

        protected void Btn_addWorkingTimeAdd_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "INSERT INTO [STUDENT_WORKING_TIME] ([STUDENT_ID], [STUDENT_FIRSTNAME], [STUDENT_LASTNAME], [WORKING_DEPARTMENT], [WORK_DESCRIPTION], [START_WORKING_TIME], [END_WORKING_TIME], [WORK_HOURS], [WORKING_DATE], [STUDY_TERMS], [STUDY_YEARS], [CREATE_TIMESTAMP], [APPROVE_STATUS]) VALUES ('" + Tb_addWorkingTimestudentID.Text + "', N'"+ Tb_addWorkingTimeStudentFirstname.Text + "', N'"+ Tb_addWorkingTimeStudentLastname.Text + "', N'"+ Ddl_addWorkingTimeDepartmentName.Text + "', N'"+ Tb_addWorkingTimeDescription.Text + "', '"+ Tb_addWorkingTimeStartTime.Text + "', '"+ Tb_addWorkingTimeEndTime.Text + "', '"+ Tb_addWorkingTimeHours.Text + "', '"+ Tb_addWorkingTimeDate.Text + "', '"+ Ddl_addWorkingTimeStudyYear.Text + "', '"+ Ddl_addWorkingTimeStudyYears.Text + "', '"+DateTime.Now+"','Waiting')";
            cmd.ExecuteNonQuery();

            con.Close();

            Gv_STUDENT_WORKING_TIME.DataBind();
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "addWorkingTimeModalCenter", "$('#addWorkingTimeModalCenter').modal('hide');", true);
        }

        protected void Btn_student_working_time_add_Click(object sender, EventArgs e)
        {

        }
    }
}