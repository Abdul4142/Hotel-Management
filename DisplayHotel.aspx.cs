using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using MySql.Data;
using MySql.Data.MySqlClient;
using System.Configuration;
using System.Data;

public partial class DisplayHotel : System.Web.UI.Page
{
    string constrn = ConfigurationManager.ConnectionStrings["Hotelconnstring"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["CityID"] != null)
        {
            int CityID = Convert.ToInt32(Session["CityID"]);

            using (MySqlConnection con1 = new MySqlConnection(constrn))
            {
                using (MySqlCommand cmd1 = new MySqlCommand("select id,Roomno,floor,furnished,noofbed,address from mt_flat where City=" + CityID + ""))
                {
                    using (MySqlDataAdapter sda = new MySqlDataAdapter())
                    {
                        cmd1.Connection = con1;
                        sda.SelectCommand = cmd1;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            GridViewHotel.DataSource = dt;
                            GridViewHotel.DataBind();

                        }
                    }
                }
            }




        }
        else
        {
            Response.Redirect("~/Home.aspx");
        }
    }
   
    protected void Button_Click(object sender, EventArgs e)
    {
        
    }


    protected void GridViewHotel_RowDataBound(object sender, GridViewRowEventArgs e)
    {
       
    }
    protected void GridViewHotel_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
      
    }
    protected void GridViewHotel_RowCommand(object sender, GridViewCommandEventArgs e)
    {
       
    }
}
