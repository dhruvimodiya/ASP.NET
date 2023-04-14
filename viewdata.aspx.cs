using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Windows;
using System.Data;

namespace cmms
{
    public partial class viewdata : System.Web.UI.Page
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
            if (!IsPostBack)
            {
                gridviewbind();
            }
        }

        protected void gridviewbind()
        {
            using(SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-SU2Q91PF\MSQLEXPRESS;Initial Catalog=user;Integrated Security=True"))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT *  FROM complain", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows == true)
                {
                    GridView1.DataSource = dr;
                    GridView1.DataBind();
                }
                con.Close();

            }
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            gridviewbind();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            string name = ((TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
            string email = ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
            string date = ((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
            string device = ((TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
            string time = ((TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
            string problem = ((TextBox)GridView1.Rows[e.RowIndex].Cells[6].Controls[0]).Text;
            string proc = ((TextBox)GridView1.Rows[e.RowIndex].Cells[7].Controls[0]).Text;

            using (SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-SU2Q91PF\MSQLEXPRESS;Initial Catalog=user;Integrated Security=True"))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("update complain set name='"+name+"',email='"+email+ "',date='" + date + "',device='" + device + "',time='" + time + "',problem='" + problem + "',problemoc='" + proc + "' where id='"+id+"'", con);
                int t = cmd.ExecuteNonQuery();
                if(t > 0)
                {
                    Response.Write("<script>alert('data is updated')</script>");
                    GridView1.EditIndex = -1;
                    gridviewbind();
                }
            }
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            gridviewbind();
        }

        protected void GridView1_RowDeleting1(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            using (SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-SU2Q91PF\MSQLEXPRESS;Initial Catalog=user;Integrated Security=True"))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("delete from complain where id='" + id + "'", con);
                int t = cmd.ExecuteNonQuery();
                if (t > 0)
                {
                    Response.Write("<script>alert('data is delete')</script>");
                    GridView1.EditIndex = -1;
                    gridviewbind();
                }
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}