using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace cmms
{
    public partial class complain : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["login"] == null)
            {
                Response.Redirect("login.aspx");
            }
            else
            {
                Response.ClearHeaders();
                Response.AddHeader("Cache-control", "no-cache , no-store , max-age=0 , must-revalidate");
                Response.AddHeader("Pragma", "no-cache");
            }
        }
        public string conString = @"Data Source=LAPTOP-SU2Q91PF\MSQLEXPRESS;Initial Catalog=user;Integrated Security=True";

        protected void btnsubmit_Click1(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            if (con.State == System.Data.ConnectionState.Open)
            {
                string q = "insert into complain(name,email,date,device,time,problem,problemoc) values ('" + name.Text.ToString() + "','" + email.Text.ToString() + "','" + txtdate.Text.ToString() + "','" + device.Text.ToString() + "','" + time.Text.ToString() + "','" + problem.Text.ToString() + "','" + proc.Text + "')";
                SqlCommand cmd = new SqlCommand(q, con);
               int t =  cmd.ExecuteNonQuery();
                if(t>0)
                {
                    Response.Write("<script>alert('complaint request successfully send...')</script>");
                    Response.Redirect("Complain.aspx");
                }
               
            }
        }
    }
}