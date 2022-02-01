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

public partial class tenant : System.Web.UI.Page
{
    string constrn = ConfigurationManager.ConnectionStrings["Hotelconnstring"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindDrop();
        }
        BindGrid();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        using (MySqlConnection con = new MySqlConnection(constrn))
        {
            using (MySqlCommand cmd = new MySqlCommand("INSERT INTO tr_custdetails(RoomNo,name,address,mobile,Ismarried,totalfamily,initialdeposit,dailyrent,Isactive,fromdate,Todate) VALUES (@RoomNo,@name,@address,@mobile,@Ismarried,@totalfamily,@initialdeposit,@dailyrent,@Isactive,@fromdate,@Todate)"))
            {
                using (MySqlDataAdapter sda = new MySqlDataAdapter())
                {
                    string ismarried = "No";
                    if (RadioButton1.Checked == true)
                    {
                        ismarried = "Yes";
                    }
                    cmd.Parameters.AddWithValue("@RoomNo", drproom.SelectedItem.Text);
                    cmd.Parameters.AddWithValue("@name", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@address", TextBox8.Text);
                    cmd.Parameters.AddWithValue("@mobile", Convert.ToInt64(TextBox7.Text));
                    cmd.Parameters.AddWithValue("@Ismarried", ismarried);
                    cmd.Parameters.AddWithValue("@totalfamily", Convert.ToInt32(TextBox4.Text));
                    cmd.Parameters.AddWithValue("@initialdeposit", Convert.ToInt32(TextBox5.Text));
                    cmd.Parameters.AddWithValue("@dailyrent", Convert.ToInt32(TextBox6.Text));
                    cmd.Parameters.AddWithValue("@fromdate", txtfrom.Text);
                    cmd.Parameters.AddWithValue("@Todate", txtfrom.Text);
                    cmd.Parameters.AddWithValue("@Isactive", true);
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    Label6.Visible = true;
                    con.Close();
                    BindGrid();
                }
            }

        }
    }

    private void BindGrid()
    {

        using (MySqlConnection con1 = new MySqlConnection(constrn))
        {
            using (MySqlCommand cmd1 = new MySqlCommand("select * from  tr_custdetails"))
            {
                using (MySqlDataAdapter sda = new MySqlDataAdapter())
                {
                    cmd1.Connection = con1;
                    sda.SelectCommand = cmd1;
                    using (DataTable dt = new DataTable())
                    {
                        sda.Fill(dt);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();

                    }
                }
            }
        }


    }

    private void BindDrop()
    {

        using (MySqlConnection con1 = new MySqlConnection(constrn))
        {
            using (MySqlCommand cmd1 = new MySqlCommand("select Distinct Roomno from  mt_flat"))
            {
                using (MySqlDataAdapter sda = new MySqlDataAdapter())
                {
                    cmd1.Connection = con1;
                    sda.SelectCommand = cmd1;
                    using (DataTable dt = new DataTable())
                    {
                        sda.Fill(dt);
                        drproom.DataSource = dt;
                        drproom.DataTextField = "Roomno";
                        drproom.DataValueField = "Roomno";
                        drproom.DataBind();

                    }
                }
            }
        }


    }
}