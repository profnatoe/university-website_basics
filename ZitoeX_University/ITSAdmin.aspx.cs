using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class ITSAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindDataRpterBotswana();
            BindDataRpterHonours();
        }
    }

    private void BindDataRpterHonours()
    {
        String CS = ConfigurationManager.ConnectionStrings["ZitoeXUniversityConnectionString1"].ConnectionString;

        using (SqlConnection con = new SqlConnection(CS))
        {
            using (SqlCommand cmd = new SqlCommand("Select * FROM Honours", con))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dataTable = new DataTable();
                    sda.Fill(dataTable);
                    rpterHonours.DataSource = dataTable;
                    rpterHonours.DataBind();
                }
            }
        }
    }

    private void BindDataRpterBotswana()
    {
        String CS = ConfigurationManager.ConnectionStrings["ZitoeXUniversityConnectionString1"].ConnectionString;

        using(SqlConnection con = new SqlConnection(CS))
        {
            using (SqlCommand cmd = new SqlCommand("Select * FROM BotswanaStudentExchange", con))
            {
                using(SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dataTable = new DataTable();
                    sda.Fill(dataTable);
                    rpterBotswana.DataSource = dataTable;
                    rpterBotswana.DataBind();
                }
            }
        }
    }

    protected void SignOut_Click(object sender, EventArgs e)
    {
        Session["USERNAME"] = null;
        Response.Redirect("~/Default.aspx");
    }
}