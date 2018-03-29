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
    public partial class auth_control : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=fixing-problem.database.windows.net;Initial Catalog=psustfdb;User ID=tim;Password=abc123**");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_requestStudentSend_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "INSERT INTO [REQUEST_STUDENT] ([WORK_DEPARTMENT], [REQUEST_AMOUNT], [WORK_DESCRIPTION], [STUDY_TERMS], [STUDY_YEARS], [AUTH_CONTROL_ID], [AUTH_CONTROL_FIRSTNAME], [AUTH_CONTROL_LASTNAME], [STATUS], [TIMESTAMP]) VALUES (N'" + Ddl_requestStudentDepartment.Text + "', '" + Ddl_requestStudentAmount.Text + "', N'" + Tb_requestStudentWorkDescription.Text + "', '" + Ddl_requestStudentStudyYear.Text + "', '" + Ddl_requestStudentStudyYears.Text + "', '" + Tb_requestStudentAuthID.Text + "', '" + Tb_requestStudentAuthFirstname.Text + "', '" + Tb_requestStudentAuthLastname.Text + "', 'Open', '" + DateTime.Now + "')";
            cmd.ExecuteNonQuery();

            con.Close();
            Gv_authRequestStd.DataBind();
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "requestStudentModalCenter", "$('#requestStudentModalCenter').modal('hide');", true);
        }

        protected void Btn_authRequestStdFilter_Click(object sender, EventArgs e)
        {
            Thread.Sleep(1000);
            string WORK_DESCRIPTION = Tb_authRequestStdFilter.Text;
            string Filter = "";

            //Colum of data table
            if (WORK_DESCRIPTION != "") { Filter = Filter + "WORK_DESCRIPTION like '%" + WORK_DESCRIPTION + "%' and "; }

            //Add filter expression of datasource
            if (Filter.Length > 0)
            {
                string FinalFilter = Filter.Remove(Filter.Length - 4, 3);
                SqlDataSourceREQUEST_STUDENT.FilterExpression = FinalFilter;
            }
            else
            {
                Gv_authRequestStd.DataBind();
            }
        }

        protected void Tb_authStudentTimeConfirmSearch_Click(object sender, EventArgs e)
        {
            Thread.Sleep(1000);
            string STUDENT_ID = Tb_authStudentTimeConfirmFilter.Text;
            string Filter = "";

            //Colum of data table
            if (STUDENT_ID != "") { Filter = Filter + "STUDENT_ID like '%" + STUDENT_ID + "%' and "; }

            //Add filter expression of datasource
            if (Filter.Length > 0)
            {
                string FinalFilter = Filter.Remove(Filter.Length - 4, 3);
                SqlDataSourceSTUDENT_WORKING_TIME_APPROVE.FilterExpression = FinalFilter;
            }
            else
            {
                Gv_authStudentTimeConfirm.DataBind();
            }
        }
    }
}