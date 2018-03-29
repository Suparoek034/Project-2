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
    public partial class officer_control : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=fixing-problem.database.windows.net;Initial Catalog=psustfdb;User ID=tim;Password=abc123**");
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Btn_stdWorkRequestFilter_Click(object sender, EventArgs e)
        {
            Thread.Sleep(1000);
            string WORK_DEPARTMENT = Tb_stdWorkRequest.Text;
            string Filter = "";

            //Colum of data table
            if (WORK_DEPARTMENT != "") { Filter = Filter + "WORK_DEPARTMENT like '%" + WORK_DEPARTMENT + "%' and "; }

            //Add filter expression of datasource
            if (Filter.Length > 0)
            {
                string FinalFilter = Filter.Remove(Filter.Length - 4, 3);
                SqlDataSourceRS__STUDENT_REQUEST.FilterExpression = FinalFilter;
            }
            else
            {
                Gv_stdWorkRequest.DataBind();
            }
        }

        protected void Btn_allStdTimeTableFilter_Click(object sender, EventArgs e)
        {
            Thread.Sleep(1000);
            string STUDENT_ID = Tb_allStdTimeTable.Text;
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
                Gv_allStdTimeTable.DataBind();
            }
        }

        protected void Btn_carlendarSearch_Click(object sender, EventArgs e)
        {
            Thread.Sleep(1000);
            string SUBJECT = Tb_calendarFilter.Text;
            string Filter = "";

            //Colum of data table
            if (SUBJECT != "") { Filter = Filter + "SUBJECT like '%" + SUBJECT + "%' and "; }

            //Add filter expression of datasource
            if (Filter.Length > 0)
            {
                string FinalFilter = Filter.Remove(Filter.Length - 4, 3);
                SqlDataSourceEVENT_CALENDAR.FilterExpression = FinalFilter;
            }
            else
            {
                Gv_calendar.DataBind();
            }
        }

        protected void Btn_docUpload_Click(object sender, EventArgs e) {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "INSERT INTO [uploadDoc] ([filename], [uploaddate], [expiredate], [typefund]) VALUES (N'" + Tb_filename.Text + "', '" + Tb_uploaddate.Text + "','" + Tb_expiredate.Text + "','" + Ddl_inputGroupSelectType.Text + "')";
            cmd.ExecuteNonQuery();
            con.Close();

            FileUploadDoc.SaveAs(Server.MapPath("~/Content/Document/" + FileUploadDoc.FileName));


        }



        protected void Btn_picUpload_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "INSERT INTO [uploadPic] ([Pictype]) VALUES ('" + Ddl_inputPicType.Text + "')";
            cmd.ExecuteNonQuery();
            con.Close();

            FileUploadPic1.SaveAs(Server.MapPath("~/Content/UploadPicArea/" + FileUploadPic1.FileName));
            FileUploadPic2.SaveAs(Server.MapPath("~/Content/UploadPicArea/" + FileUploadPic2.FileName));
            FileUploadPic3.SaveAs(Server.MapPath("~/Content/UploadPicArea/" + FileUploadPic3.FileName));
            FileUploadPic4.SaveAs(Server.MapPath("~/Content/UploadPicArea/" + FileUploadPic4.FileName));
            FileUploadPic5.SaveAs(Server.MapPath("~/Content/UploadPicArea/" + FileUploadPic5.FileName));

        }
            protected void Btn_addNewEventAdd_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "INSERT INTO[EVENT_CALENDAR]([SUBJECT], [DESCRIPTION], [START], [END], [CATEGORY], [STATUS], [CREATOR_ID], [CREATE_TIMESTAMP]) VALUES(N'"+ Tb_addNewSubjectName.Text + "', N'"+ Tb_eventDiscription.Text + "', '"+ Tb_eventStart.Text + "', '"+ Tb_eventEnd.Text + "', N'"+ Ddl_category.Text + "', '"+ Ddl_eventStatus.Text + "', '"+ Tb_eventCreator_ID.Text + "', '" + DateTime.Now + "')";
            cmd.ExecuteNonQuery();

            con.Close();

            Gv_calendar.DataBind();
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "addNewEventModalCenter", "$('#addNewEventModalCenter').modal('hide');", true);
        }
    }
}