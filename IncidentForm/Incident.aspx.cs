using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace IncidentForm
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        SqlConnection con = new SqlConnection(@"Data Source=MK\SQLEXPRESS;Initial Catalog=incidentmanagement;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            cmd = new SqlCommand("insert into incidentform values ('" + txtreport.Text + "', '" + txtdate.Text + "', '" + txtrole.Text + "', '" + ddlinctype.SelectedItem.ToString() + "', '" + txtincdate.Text + "', '" + txtlocation.Text + "', '" +ddlstate.SelectedItem.ToString()+ "', '" +ddlcity.SelectedItem.ToString()+ "', '" + txtzipcode.Text + "', '" + txtIncDes.Text + "', '" + txtFlwAct.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("Incident Submitted Successfully..!");
            Response.Redirect(Request.Url.AbsoluteUri);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Show.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Search.aspx");
        }

        protected void txtFlwAct_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ddlstate_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlstate.SelectedIndex == 1)
            {
                ddlcity.Items.Clear();
                ddlcity.Items.Add("Coimbatore");
                ddlcity.Items.Add("Chennai");
                ddlcity.Items.Add("Tiruppur");
                ddlcity.Items.Add("Trichy");
                ddlcity.Items.Add("Madurai");
            }
            else if (ddlstate.SelectedIndex == 2)
            {
                ddlcity.Items.Clear();
                ddlcity.Items.Add("Palakkad");
                ddlcity.Items.Add("Kollam");
                ddlcity.Items.Add("Thiruvananthapuram");
                ddlcity.Items.Add("Ernakulam");
                ddlcity.Items.Add("Thrissur");
            }
            else if (ddlstate.SelectedIndex == 3)
            {
                ddlcity.Items.Clear();
                ddlcity.Items.Add("Bangalore");
                ddlcity.Items.Add("Mysore");
                ddlcity.Items.Add("Gulbarga");
                ddlcity.Items.Add("Bijapur");
                ddlcity.Items.Add("Udupi");
            }
            else if (ddlstate.SelectedIndex == 4)
            {
                ddlcity.Items.Clear();
                ddlcity.Items.Add("Visakhapatnam");
                ddlcity.Items.Add("Anantapur");
                ddlcity.Items.Add("Mahbubnagar");
                ddlcity.Items.Add("Chittoor");
                ddlcity.Items.Add("Kurnool");
            }

        }
    }
}