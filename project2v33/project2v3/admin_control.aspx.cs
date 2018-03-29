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
    public partial class admin_control : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=fixing-problem.database.windows.net;Initial Catalog=psustfdb;User ID=tim;Password=abc123**");
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Btn_addNewWorkAreaAdd_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "INSERT INTO[ADD_WORKAREA]([DEPARTMENT], [REQUEST_AMOUNT], [STUDY_TERM], [STUDY_YEAR], [AUTH_FIRSTNAME], [AUTH_LASTNAME], [AUTH_ID], [STATUS], [ADMIN_ID], [TIMESTAMP]) VALUES(N'" + Tb_addNewWorkAreaName.Text + "', '" + Ddl_addNewWorkAreaAmount.Text + "', '" + Ddl_addNewWorkAreaStudyYear.Text + "', '" + Ddl_addNewWorkAreaStudyYears.Text + "', N'" + Tb_addNewWorkAreaAuthFName.Text + "', N'" + Tb_addNewWorkAreaAuthLname.Text + "', '" + Tb_addNewWorkAreaAuthID.Text + "', N'" + Ddl_addNewWorkAreaStatus.Text + "', '" + Tb_addNewWorkAreaAdminID.Text + "', '" + DateTime.Now + "')";
            cmd.ExecuteNonQuery();

            con.Close();

            Gv_addWorkArea.DataBind();
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "addNewWorkAreaModalCenter", "$('#addNewWorkAreaModalCenter').modal('hide');", true);
        }
        protected void Btn_authControlAdd_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "INSERT INTO [AUTH_CONTROL] ([OFFICER_FIRSTNAME], [AUTH_LASTNAME], [OFFICER_ID], [DEPARTMENT], [STUDY_TERM], [STUDY_YEAR], [PERMISSION], [ADMIN_ID], [TIMESTAMP]) VALUES (N'" + Tb_authControlFirstName.Text + "', N'" + Tb_authControlLastName.Text + "', '" + Tb_authControlAuthID.Text + "', N'" + Ddl_authControlAuthDepartment.Text + "', '" + Ddl_authControlStudyYear.Text + "', '" + Ddl_authControlStudyYears.Text + "', N'" + Ddl_authControlAuthPermission.Text + "', '" + Tb_authControlAdminID.Text + "', '" + DateTime.Now + "')";
            cmd.ExecuteNonQuery();

            con.Close();
            Gv_authControl.DataBind();
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "authControlModalCenter", "$('#authControlModalCenter').modal('hide');", true);
        }

        protected void Btn_officerControlAdd_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "INSERT INTO [OFFICER_CONTROL] ([OFFICER_FIRSTNAME], [AUTH_LASTNAME], [OFFICER_ID], [DEPARTMENT], [STUDY_TERM], [STUDY_YEAR], [PERMISSION], [ADMIN_ID], [TIMESTAMP]) VALUES (N'" + Tb_officerControlFirstname.Text + "', N'" + Tb_officerControlLastname.Text + "', '" + Tb_officerControlOfficerID.Text + "', N'" + Ddl_officerControlDept.Text + "', '" + Ddl_officerControlStudyYear.Text + "', '" + Ddl_officerControlStudyYears.Text + "', N'" + Ddl_officerControlPermission.Text + "', '" + Tb_officerControlAdminID.Text + "', '" + DateTime.Now + "')";
            cmd.ExecuteNonQuery();

            con.Close();
            Gv_officerControl.DataBind();
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "officerControlModalCenter", "$('#officerControlModalCenter').modal('hide');", true);
        }

        protected void Btn_addWorkAreaSearch_Click(object sender, EventArgs e)
        {
            Thread.Sleep(1000);
            string DEPARTMENT = Tb_addWorkAreaFilter.Text;
            string Filter = "";

            //Colum of data table
            if (DEPARTMENT != "") { Filter = Filter + "DEPARTMENT like '%" + DEPARTMENT + "%' and "; }

            //Add filter expression of datasource
            if (Filter.Length > 0)
            {
                string FinalFilter = Filter.Remove(Filter.Length - 4, 3);
                SqlDataSourceADD_WORKAREA.FilterExpression = FinalFilter;
            }
            else
            {
                Gv_addWorkArea.DataBind();
            }
        }

        protected void Btb_authControlFilter_Click(object sender, EventArgs e)
        {
            Thread.Sleep(1000);
            string OFFICER_FIRSTNAME = Tb_authControlFilter.Text;
            string Filter = "";

            //Colum of data table
            if (OFFICER_FIRSTNAME != "") { Filter = Filter + "OFFICER_FIRSTNAME like '%" + OFFICER_FIRSTNAME + "%' and "; }

            //Add filter expression of datasource
            if (Filter.Length > 0)
            {
                string FinalFilter = Filter.Remove(Filter.Length - 4, 3);
                SqlDataSourceAUTH_CONTROL.FilterExpression = FinalFilter;
            }
            else
            {
                Gv_authControl.DataBind();
            }
        }

        protected void Btn_officerControlFilter_Click(object sender, EventArgs e)
        {
            Thread.Sleep(1000);
            string OFFICER_FIRSTNAME = Tb_officerControlFilter.Text;
            string Filter = "";

            //Colum of data table
            if (OFFICER_FIRSTNAME != "") { Filter = Filter + "OFFICER_FIRSTNAME like '%" + OFFICER_FIRSTNAME + "%' and "; }

            //Add filter expression of datasource
            if (Filter.Length > 0)
            {
                string FinalFilter = Filter.Remove(Filter.Length - 4, 3);
                SqlDataSourceOFFICER_CONTROL.FilterExpression = FinalFilter;
            }
            else
            {
                Gv_officerControl.DataBind();
            }
        }
    }
}