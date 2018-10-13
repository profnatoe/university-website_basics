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

public partial class BotswanaStudExchange : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FirstName.Text != "" && TextBox1.Text != "")
        {
            if (CheckStudent("StudentNumber", "Users", "StudentNumber") == true)
            {
                if (CheckStudent("Id","BotswanaStudentExchange", "Id") == true)
                {
                    lblMsg.ForeColor = Color.Red;
                    lblMsg.Text = "Student Number already added";
                }
                else
                {


                    string SC = ConfigurationManager.ConnectionStrings["ZitoeXUniversityConnectionString1"].ConnectionString;



                    using (SqlConnection con = new SqlConnection(SC))
                    {

                        int marks = generateMarks(0, 100);

                        SqlCommand cmd = new SqlCommand("insert into BotswanaStudentExchange values('" + FirstName.Text + "', '" + TextBox1.Text + "', '" + marks + "', '" + Status(marks) + "')", con);
                        con.Open();
                        cmd.ExecuteNonQuery();
                        lblMsg.ForeColor = Color.Green;
                        lblMsg.Text = "Registration is successful";
                    }
                }
            }
            else
            {
                lblMsg.ForeColor = Color.Red;
                lblMsg.Text = "Student number is invalid or doesn't exist";
            }
        }
    }

    public int generateMarks(int min, int max)
    {
        Random random = new Random();

        return random.Next(min, max);
    }

    public String Status(int marks)
    {
        String status;

        if (marks < 65)
        {
            status = "Do not Qualify";

            return status;
        }

        return status = "Qualify";
    }

    public bool CheckStudent(string id, string whichDatabase, string column)
    {
        String CS = ConfigurationManager.ConnectionStrings["ZitoeXUniversityConnectionString1"].ConnectionString;

        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("Select "+ id +" from "+ whichDatabase +" where "+column+" = '"+ FirstName.Text +"'", con);

            con.Open();

            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            if (dt.Rows.Count != 0)
            {
                string studentNumber = (dt.Rows[0][0].ToString());
                return true;
            }
            else
            {
                return false;
            }

        }
    }
}