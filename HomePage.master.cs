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

public partial class HomePage : System.Web.UI.MasterPage
{
    string constrn = ConfigurationManager.ConnectionStrings["FlatRentconnstring"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindDrop();
        }
    }
    protected void btnSearch_Click(object sender, ImageClickEventArgs e)
    {
        Session["Flat"] = ddlFlat.SelectedItem.Text;
        Session["tanent"] = ddltanent.SelectedItem.Text;
        Response.Redirect("~/searchresults.aspx");
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
                        ddlFlat.DataSource = dt;
                        ddlFlat.DataTextField = "flatno";
                        ddlFlat.DataValueField = "flatno";
                        ddlFlat.DataBind();

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
                        ddltanent.DataSource = dt;
                        ddltanent.DataTextField = "name";
                        ddltanent.DataValueField = "name";
                        ddltanent.DataBind();

                    }
                }
            }
        }
    }
}
