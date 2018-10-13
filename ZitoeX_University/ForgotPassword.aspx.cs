using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Net.Mail;
using System.Net;
public partial class ForgotPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Reset_Click(object sender, EventArgs e)
    {
        string CS = ConfigurationManager.ConnectionStrings["ZitoeXUniversityConnectionString1"].ConnectionString;

        using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("Select * from Users where EmailID = '"+emailID.Text+"'", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            if(dt.Rows.Count != 0)
            {
                string myGUID = Guid.NewGuid().ToString();

                int StudentNumber = Convert.ToInt32(dt.Rows[0][0]);

                SqlCommand cmd1 = new SqlCommand("insert into ForgotPassword values ('" + myGUID + "', '" + StudentNumber + "', getdate())", con);
                cmd1.ExecuteNonQuery();

                #region Send Email

                string username = "" + dt.Rows[0][1] + " " + dt.Rows[0][2] + "";
                string ToEmailAddress = dt.Rows[0][4].ToString();
                string body = "Hi, " + username + "<br/<br/>Click the link below to reset your password <br/><br/>http://localhost:3967/RecoverPassword.aspx?StudentNumber=" + myGUID;
                MailMessage msg = new MailMessage("zitoextechnologies@gmail.com", ToEmailAddress);

                msg.Body = body;
                msg.IsBodyHtml = true;
                msg.Subject = "Password Reset";

                SmtpClient SMTP = new SmtpClient("smtp.gmail.com", 587);

                SMTP.UseDefaultCredentials = false;

                SMTP.Credentials = new NetworkCredential("zitoextechnologies@gmail.com", "@///Sitoe980311");
        
                SMTP.DeliveryMethod = SmtpDeliveryMethod.Network;

                SMTP.EnableSsl=true;
                SMTP.Send(msg);
                
                #endregion

                lblPassReset.ForeColor = System.Drawing.Color.Green;
                lblPassReset.Text = "A password reset link has been sent to your email";
            }
            else
            {

                lblPassReset.ForeColor = System.Drawing.Color.Red;
                lblPassReset.Text = "Your Email Address is Invalid";
            }

        }
    }
}