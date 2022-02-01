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
public partial class searchresults : System.Web.UI.Page
{
    string constrn = ConfigurationManager.ConnectionStrings["Hotelconnstring"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        BindGrid();
        if (!IsPostBack)
        {
            Binddrop();
        }
    }


    private void BindGrid()
    {

        using (MySqlConnection con1 = new MySqlConnection(constrn))
        {
            using (MySqlCommand cmd1 = new MySqlCommand("select * from tr_custdetails"))
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

    private void BindGridBtn()
    {

        using (MySqlConnection con1 = new MySqlConnection(constrn))
        {
            using (MySqlCommand cmd1 = new MySqlCommand("select * from tr_custdetails where RoomNo Like '%" + drproom.SelectedItem.Text + "%'"))
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


    private void Binddrop()
    {

        using (MySqlConnection con1 = new MySqlConnection(constrn))
        {
            using (MySqlCommand cmd1 = new MySqlCommand("select distinct Roomno from mt_flat"))
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
    protected void btnsearch_Click(object sender, EventArgs e)
    {
        BindGridBtn();
    }
}
