using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class UserHome : System.Web.UI.Page
{
    String CS = ConfigurationManager.ConnectionStrings["ZitoeXUniversityConnectionString1"].ConnectionString;
    DataTable dts = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["USERNAME"] != null)
        {
            lblSuccess.Text = "Welcome to Student ITS System, " + Session["USERNAME"].ToString()+"";
        }
        else
        {
            Response.Redirect("~/Login.aspx");
        }

        if (!IsPostBack)
        {
            BindDataRpterModules();

         
        }
    }


    private void BindDataRpterModules()
    {
        

        using (SqlConnection con = new SqlConnection(CS))
        {
            string num = GetStudentNumber();
            using (SqlCommand cmd = new SqlCommand("Select * FROM Modules", con))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dataTable = new DataTable();
                    sda.Fill(dataTable);
                    rpterModules.DataSource = dataTable;
                    rpterModules.DataBind();
                }
            }
        }
    }

    protected void SignOut_Click(object sender, EventArgs e)
    {
        Session["USERNAME"] = null;
        Response.Redirect("~/Default.aspx");
    }



    protected void AddModule(object sender, EventArgs e)
    {
        using(SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("Update Modules set ModuleStatus = 'Modules Added'", con);
            con.Open();
            cmd.ExecuteNonQuery();
        }
        BindDataRpterModules();
    }

    private string GetStudentNumber()
    {
        using (SqlConnection con = new SqlConnection(CS))
        {
            string number = "" ;
            string username = Session["USERNAME"].ToString();
            
            {
                SqlCommand cmd = new SqlCommand("Select StudentNumber From Users where Username ='" + username + "'", con);

                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                sda.Fill(dts);
                if (dts.Rows.Count != 0)
                {
                    number = (dts.Rows[0][0]).ToString();

                }

                return number;
            }
        }
    }
}