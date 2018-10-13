using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Login : System.Web.UI.Page
{
    string CS = ConfigurationManager.ConnectionStrings["ZitoeXUniversityConnectionString1"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.Cookies["USR"] != null && Request.Cookies["PWD"] != null) 
            {
                Username.Text = Request.Cookies["USR"].Value;
                Password.Attributes["Value"] = Request.Cookies["PWD"].Value;
                saveCredentials.Checked = true;
            }
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        

        using(SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("Select * From users where Username='" + Username.Text + "'and Password='" + Password.Text + "'", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            if (dt.Rows.Count != 0)
            {
                if (saveCredentials.Checked)
                {
                    Response.Cookies["USR"].Value = Username.Text;
                    Response.Cookies["PWD"].Value = Password.Text;

                    Response.Cookies["USR"].Expires = DateTime.Now.AddDays(5);
                    Response.Cookies["PWD"].Expires = DateTime.Now.AddDays(5);
                }
                else
                {
                    Response.Cookies["PWD"].Expires = DateTime.Now.AddDays(-1);
                    Response.Cookies["PWD"].Expires = DateTime.Now.AddDays(-1);
                }
                string Utype;
                Utype = dt.Rows[0][6].ToString().Trim();

                if (Utype=="A")
                {
                    Session["USERNAME"] = Username.Text;
                    Response.Redirect("~/ITSAdmin.aspx");
                }

                if(Utype=="U")
                {
                    Session["USERNAME"] = Username.Text;
                    Response.Redirect("~/UserHome.aspx");
                }
            }
            else
            {
                lbl.Text = "Invalid Credentials, please USE username not student number as username";
            }

        }
    }
}