using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;
using System.Text.RegularExpressions;

namespace cmms
{
    public partial class reg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        public string conString = "Data Source=LAPTOP-SU2Q91PF\\MSQLEXPRESS;Initial Catalog=user;Integrated Security=True";
       

        protected void submit_Click1(object sender, EventArgs e)
        {
            if (name.Text == "")
            {
                Response.Write("<script>alert('please enter username')</script>");
            }
            else if (email.Text == "")
            {

                Response.Write("<script>alert('please enter email Id')</script>");
            }
            else if (mobile.Text == "")
            {

                Response.Write("<script>alert('please enter contact number')</script>");
            }
            else if (address.Text == "")
            {

                Response.Write("<script>alert('please enter address')</script>");
            }
            else if (pincode.Text == "")
            {

                Response.Write("<script>alert('please enter pincode')</script>");
            }
            else if (password.Text == "")
            {

                Response.Write("<script>alert('please enter password')</script>");
            }
            else
            {
                SqlConnection con = new SqlConnection(conString);
                con.Open();
                if (con.State == System.Data.ConnectionState.Open)
                {
                    string q = "insert into reg(name,email,mobile,address,pincode,password)values('" + name.Text.ToString() + "','" + email.Text.ToString() + "','" + mobile.Text.ToString() + "','" + address.Text.ToString() + "','" + pincode.Text.ToString() + "','" + password.Text.ToString() + "')";
                    SqlCommand cmd = new SqlCommand(q, con);
                    cmd.ExecuteNonQuery();
                    MessageBox.Show("Register successfull..!!");
                    Response.Redirect("login.aspx");
                }
            }
        }

        protected void email_Leave(object sender, EventArgs e)
        {
            
        }
    }
}
