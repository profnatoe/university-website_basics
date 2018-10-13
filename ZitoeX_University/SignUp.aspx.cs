using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;
using System.Data;

public partial class SignUp : System.Web.UI.Page
{
    String email;
    DataTable dts = new DataTable();
    string SC = ConfigurationManager.ConnectionStrings["ZitoeXUniversityConnectionString1"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void btnSignUp_Click(object sender, EventArgs e)
    {
        if (tbname.Text !="" && tbPass.Text !="" && tbCPass.Text!="" && tbFName.Text!="" && tbLName.Text!="" && tbEmail.Text!=""){

            if (tbCPass.Text == tbPass.Text)
            {
                if (CheckEmail() == false)
                {

                    using (SqlConnection con = new SqlConnection(SC))
                    {

                        SqlCommand cmd = new SqlCommand("insert into Users values('" + tbFName.Text + "', '" + tbLName.Text + "', '" + tbname.Text + "', '" + tbEmail.Text + "', '" + tbPass.Text + "', 'U')", con);
                        con.Open();
                        cmd.ExecuteNonQuery();
                        addDetailsToModule();
                        string stdNo = GetStudentNumber();
                        lblMsg.ForeColor = Color.Green;
                        lblMsg.Text = "Registration is successful.";
                        lblStdNo.ForeColor = Color.Green;
                        lblStdNo.Text = "your student number is " + stdNo + "";
                        tbname.Text = "";
                        tbLName.Text = "";
                        tbFName.Text = "";
                        tbEmail.Text = "";
                    }
                }
                else
                {
                    lblMsg.ForeColor = Color.Red;
                    lblMsg.Text = "Email already exist";
                }
            }
            else
            {
                lblMsg.ForeColor = Color.Red;
                lblMsg.Text = "Password do not match";
            }
        }
        else
        {
            lblMsg.ForeColor = Color.Red;
            lblMsg.Text = "All fields are mandatory";

        }
    }

    public void addDetailsToModule()
    {
        using (SqlConnection con = new SqlConnection(SC))
        {

            SqlCommand cmd = new SqlCommand("insert into Modules values('"+GetStudentNumber()+"', '" + tbLName.Text + "', 'Not Assigned Yet')", con);
            con.Open();
            cmd.ExecuteNonQuery();
        }
    }

    private bool CheckEmail()
    {
        using (SqlConnection con = new SqlConnection(SC))
        {
            {
                SqlCommand cmd = new SqlCommand("Select * From Users where EmailID='" + tbEmail.Text + "'", con);
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                sda.Fill(dts);
                if (dts.Rows.Count != 0)
                {
                    email = (dts.Rows[0][4]).ToString();
                    return true ;
                }
                return false;
            }
        }
    }

    private string GetStudentNumber()
    {
        using (SqlConnection con = new SqlConnection(SC))
        {
            string number = "";
            {
                SqlCommand cmd = new SqlCommand("Select StudentNumber From Users where EmailID='" + tbEmail.Text + "'", con);
               
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