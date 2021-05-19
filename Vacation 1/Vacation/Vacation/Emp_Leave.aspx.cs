using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Vacation
{
    public partial class Emp_Leave : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=Admin;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string currentDate = DateTime.Today.ToShortDateString();
                CompareValidator2.ValueToCompare = currentDate;
            }

        }

        protected void Label1_Load(object sender, EventArgs e)
        {
            Label1.Text = DateTime.Now.ToLongDateString();
        }

        protected void TextBox1_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=Admin;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("my_insert", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("Submission_Date", Convert.ToDateTime(Label1.Text));
            cmd.Parameters.AddWithValue("Emp_Name", TextBox1.Text);
            cmd.Parameters.AddWithValue("Emp_Dept", DropDownList1.Text);
            cmd.Parameters.AddWithValue("Leave_From", Convert.ToDateTime( TextBox3.Text));
            cmd.Parameters.AddWithValue("Leave_To", Convert.ToDateTime(TextBox4.Text));
            cmd.Parameters.AddWithValue("More_Info", TextBox5.Text);
            con.Open();
            int k = cmd.ExecuteNonQuery();
            if (k != 0)
            {
                //lblmsg.Text = "Record Inserted Succesfully into the Database";
                Response.Write("<script>alert('Record Inserted Succesfully')</script>");
            }
            else
            {
                Response.Write("<script>alert('Insertion Has Failed')</script>");
            }
            con.Close();

        }
    }
}