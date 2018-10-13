using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Drawing;
using System.Configuration;

public partial class HonoursApplication : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
          if (FirstName.Text != "" && TextBox1.Text != "" && TextBox2.Text != "" && TextBox3.Text != "" && TextBox4.Text != "" && TextBox5.Text != "" && TextBox6.Text != "" && TextBox7.Text != "")
          {

            string SC = ConfigurationManager.ConnectionStrings["ZitoeXUniversityConnectionString1"].ConnectionString;



            using (SqlConnection con = new SqlConnection(SC))
                  {

                      int marks = Marks(0, 100);
                      string status = Status(marks);

                      SqlCommand cmd = new SqlCommand("insert into Honours values('" + FirstName.Text + "', '" + TextBox1.Text + "', '" + TextBox2.Text + "', '" + TextBox3.Text + "', '" + TextBox4.Text + "', '" + TextBox5.Text + "' , '" + TextBox6.Text + "' , '" + TextBox7.Text + "', '"+marks+"', '"+status+"')", con);
                      con.Open();
                      cmd.ExecuteNonQuery();
                      lblMsg.ForeColor = Color.Green;
                      lblMsg.Text = "Registration is successful";
                  }
              }
    }

    public int Marks(int min, int max)
    {
        Random random = new Random();

        return random.Next(min, max);
    }

    public string Status(int marks)
    {
        string status;

        if(marks < 70)
        {
            return status = "Do not Qualify";
        }

        return status = "Qualify";
    }
}