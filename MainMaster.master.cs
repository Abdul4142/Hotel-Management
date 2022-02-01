using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using MySql.Data;
using MySql.Data.MySqlClient;
using System.Configuration;
using System.Data;

public partial class MainMaster : System.Web.UI.MasterPage
{
    string constrn = ConfigurationManager.ConnectionStrings["Hotelconnstring"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        fillCity();
    }
    private void fillCity()
    {
        using (MySqlConnection con1 = new MySqlConnection(constrn))
        {
            using (MySqlCommand cmd1 = new MySqlCommand("select ID,City from mt_city"))
            {
                using (MySqlDataAdapter sda = new MySqlDataAdapter())
                {
                    cmd1.Connection = con1;
                    sda.SelectCommand = cmd1;
                    using (DataTable dt = new DataTable())
                    {
                        sda.Fill(dt);
                        DataListCity.DataSource = dt;
                        DataListCity.DataBind();
                       

                    }
                }
            }
        }
    
    }
    protected void DataListCity_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "City")
        {
            Session["CityID"] = e.CommandArgument;
            Response.Redirect("~/DisplayHotel.aspx");
        }
    }
}
