using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Drawing;
using System.Configuration;

public partial class RecoverPassword : System.Web.UI.Page
{
    String CS = ConfigurationManager.ConnectionStrings["ZitoeXUniversityConnectionString1"].ConnectionString;
    String GUIDvalue;
    DataTable dt = new DataTable();
    int StudentNumber;

    protected void Page_Load(object sender, EventArgs e)
    {
        using (SqlConnection con = new SqlConnection(CS))
        {

            GUIDvalue = Request.QueryString["StudentNumber"];

            if (GUIDvalue != null)
            {
                SqlCommand cmd = new SqlCommand("Select * From ForgotPassword where Id='" + GUIDvalue + "'", con);

                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    StudentNumber = Convert.ToInt32(dt.Rows[0][1]);
                }
                else
                {
                    lblMsg.Text = "Your password reset link has expired or is invalid";
                    lblMsg.ForeColor = Color.Red;
                }

            }
            else
            {
                Response.Redirect("~/Default.aspx");
            }
        }

        if (!IsPostBack)
        {
            if (dt.Rows.Count != 0)
            {
                lblcnPass.Visible = true;
                lblnewPass.Visible = true;
                lblPassReset.Visible = true;
                ResetPassword.Visible = true;
                newPass.Visible = true;
                cnPassword.Visible = true;


            }
            else
            {
                lblMsg.Text = "Your password reset link has expired or is invalid";
                lblMsg.ForeColor = Color.Red;
            }
        }
    }

    protected void ResetPassword_Click(object sender, EventArgs e)
    {
        if (newPass.Text != "" && cnPassword.Text != "" && newPass.Text == cnPassword.Text)
        {
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("update Users set Password ='" + newPass.Text + "' where StudentNumber ='" + StudentNumber + "'", con);
                con.Open();
                cmd.ExecuteNonQuery();

                SqlCommand cmd1 = new SqlCommand("delete from ForgotPassword where StudentNumber='" + StudentNumber + "'", con);
                cmd.ExecuteNonQuery();

                Response.Redirect("~/Login.aspx");
            }
        }
    }
}