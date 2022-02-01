using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using MySql.Data;
using MySql.Data.MySqlClient;
using System.Configuration;
using System.Data;

public partial class feedback : System.Web.UI.Page
{
    string constrn = ConfigurationManager.ConnectionStrings["Hotelconnstring"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        using (MySqlConnection con = new MySqlConnection(constrn))
        {
            using (MySqlCommand cmd = new MySqlCommand("INSERT INTO tr_feedback(email,name,comments) VALUES (@email,@name,@comments)"))
            {
                using (MySqlDataAdapter sda = new MySqlDataAdapter())
                {

                    cmd.Parameters.AddWithValue("@name", txtfeedname.Text);
                    cmd.Parameters.AddWithValue("@email", txtfeedemail.Text);
                    cmd.Parameters.AddWithValue("@comments", txtfeedback.Text);
                   
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                   
                    con.Close();
                    Response.Redirect("~/Home.aspx");
                }
            }

        }
    }
}
