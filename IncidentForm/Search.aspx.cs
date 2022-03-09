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
    public partial class Show : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlDataAdapter da = new SqlDataAdapter();
        DataSet ds = new DataSet();

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=MK\SQLEXPRESS;Initial Catalog=incidentmanagement;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from incidentform where incidentno = '" + txtsearchinc.Text + "'", con);
            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);
            ListView1.DataSource = ds;
            ListView1.DataBind();
            con.Close();
            
        }
    }
}