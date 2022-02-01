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
using MySql.Data;
using MySql.Data.MySqlClient;
using System.Configuration;
using System.Data;

public partial class _Default : System.Web.UI.Page
{

    string constrn = ConfigurationManager.ConnectionStrings["Hotelconnstring"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGrid();
        }
    }
   
    protected void Button1_Click(object sender, EventArgs e)
    {
        using (MySqlConnection con = new MySqlConnection(constrn))
        {
            using (MySqlCommand cmd = new MySqlCommand("INSERT INTO mt_flat (Roomno,floor,furnished,noofbed,isactive) VALUES (@Roomno,@floor,@furnished,@noofbed,@isactive)"))
            {
                using (MySqlDataAdapter sda = new MySqlDataAdapter())
                {

                    cmd.Parameters.AddWithValue("@Roomno", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@floor", DropDownList2.SelectedItem.Text);
                    cmd.Parameters.AddWithValue("@furnished", DropDownList1.SelectedItem.Text);
                    cmd.Parameters.AddWithValue("@noofbed", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@isactive", true);          
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    Label6.Visible = true;
                    BindGrid();
                    con.Close();
                }
            }

        }   
    }


    private void BindGrid()
    {

        using (MySqlConnection con1 = new MySqlConnection(constrn))
        {
            using (MySqlCommand cmd1 = new MySqlCommand("select Roomno,floor,furnished,noofbed from mt_flat"))
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



   
}
