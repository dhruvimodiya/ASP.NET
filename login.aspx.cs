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
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if(!IsPostBack)
            {
                if (Request.Cookies["email"] != null && Request.Cookies["password"] != null)
                {
                    email.Text = Request.Cookies["email"].Value;
                    password.Text = Request.Cookies["password"].Value;
                }
            }
        }

        public string conString = "Data Source=LAPTOP-SU2Q91PF\\MSQLEXPRESS;Initial Catalog=user;Integrated Security=True";
        protected void btnlogin_Click(object sender, EventArgs e)
        {
            if (email.Text == "")
            {

                Response.Write("<script>alert('please enter email Id')</script>");
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
                    string q = "select * from reg where email='" + email.Text.ToString() + "' and password='" + password.Text.ToString() + "'";
                    SqlCommand cmd = new SqlCommand(q, con);
                    cmd.ExecuteNonQuery();
                    cmd.Parameters.AddWithValue("@email", email.Text.ToString());
                    cmd.Parameters.AddWithValue("@password", password.Text.ToString());
                    SqlDataReader read = cmd.ExecuteReader();
                    if(read.Read())
                    {
                        if(remember.Checked)
                        {
                            Response.Cookies["email"].Value = email.Text;
                            Response.Cookies["password"].Value = password.Text;
                            Response.Cookies["email"].Expires = DateTime.Now.AddMinutes(2);
                            Response.Cookies["password"].Expires = DateTime.Now.AddMinutes(2);
                        }
                        else
                        {
                            Response.Cookies["email"].Expires = DateTime.Now.AddMinutes(-2);
                            Response.Cookies["password"].Expires = DateTime.Now.AddMinutes(-2);
                        }
                        Session["login"] = "login";
                        MessageBox.Show("Login successfull..!!");
                        Session["name"] = read.GetValue(2).ToString();
                        Session["email"] = read.GetValue(1).ToString();
                        Session["password"] = read.GetValue(3).ToString();
                        Response.Redirect("index.aspx");
                    }
                    else
                    {
                        MessageBox.Show("invalid usrname and password..!!");
                        con.Close();
                    }
                }
            }
        }
        protected void Page_Init(object sender, EventArgs e)
        {
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Cache.SetExpires(DateTime.Now.AddSeconds(-1));
            Response.Cache.SetNoStore();
        }
    }
}