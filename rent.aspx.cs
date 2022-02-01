using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data;
using MySql.Data.MySqlClient;
using System.Configuration;
using System.Data;


public partial class rent : System.Web.UI.Page
{
    string constrn = ConfigurationManager.ConnectionStrings["FlatRentconnstring"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindDrop();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        using (MySqlConnection con = new MySqlConnection(constrn))
        {
            using (MySqlCommand cmd = new MySqlCommand("INSERT INTO tr_details(flatno,month,rent,maintainence,date,Comments,isactive) VALUES (@flatno,@month,@rent,@maintainence,@date,@Comments,@isactive)"))
            {
                using (MySqlDataAdapter sda = new MySqlDataAdapter())
                {
                    cmd.Parameters.AddWithValue("@flatno", DropDownList2.SelectedItem.Text);
                    cmd.Parameters.AddWithValue("@month", DropDownList1.SelectedItem.Text);
                    cmd.Parameters.AddWithValue("@rent", Convert.ToInt16(TextBox7.Text));
                    cmd.Parameters.AddWithValue("@maintainence", Convert.ToInt16(TextBox3.Text));
                    cmd.Parameters.AddWithValue("@date", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@Comments", TextBox4.Text);
                    cmd.Parameters.AddWithValue("@isactive", true);
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    Label6.Visible = true;
                    con.Close();
                }
            }

        }
    }

    private void BindDrop()
    {

        using (MySqlConnection con1 = new MySqlConnection(constrn))
        {
            using (MySqlCommand cmd1 = new MySqlCommand("select flatno from mt_flat"))
            {
                using (MySqlDataAdapter sda = new MySqlDataAdapter())
                {
                    cmd1.Connection = con1;
                    sda.SelectCommand = cmd1;
                    using (DataTable dt = new DataTable())
                    {
                        sda.Fill(dt);
                        DropDownList2.DataSource = dt;
                        DropDownList2.DataTextField = "flatno";
                        DropDownList2.DataValueField = "flatno";
                        DropDownList2.DataBind();

                    }
                }
            }


            using (MySqlCommand cmd2 = new MySqlCommand("select distinct name from tr_rentesdetails"))
            {
                using (MySqlDataAdapter sda = new MySqlDataAdapter())
                {
                    cmd2.Connection = con1;
                    sda.SelectCommand = cmd2;
                    using (DataTable dt = new DataTable())
                    {
                        sda.Fill(dt);
                        DropDownList3.DataSource = dt;
                        DropDownList3.DataTextField = "name";
                        DropDownList3.DataValueField = "name";
                        DropDownList3.DataBind();

                    }
                }
            }
        }
    }
}