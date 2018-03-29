using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project2v3
{
    public partial class std_select_work_area : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=fixing-problem.database.windows.net;Initial Catalog=psustfdb;User ID=tim;Password=abc123**");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_std_SelectWorkArea_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('ยืนยันการเลือกสถานที่ทำงาน')", true);
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "INSERT INTO [STD_SELECT_WORKAREA] ([STUDENT_ID],[WORKING_ID],[DATETIME]) VALUES ('5730213002','"+ddl_std_SelectWorkArea.SelectedValue + "','"+DateTime.Now+"')";
            cmd.ExecuteNonQuery();
            con.Close();
            ddl_std_SelectWorkArea.Enabled = false;
            Gv_stdSelectWrokArea.DataBind();

        }
    }
}