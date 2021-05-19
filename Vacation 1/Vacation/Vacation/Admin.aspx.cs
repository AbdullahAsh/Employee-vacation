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
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetData();
            }

        }
        private void GetData()

        {

            SqlDataReader mydr;

            SqlConnection mycon = new SqlConnection(@"Data Source=.;Initial Catalog=Admin;Integrated Security=True");

            {

                mycon.Open();


                using (SqlCommand cmd = new SqlCommand("SELECT Submission_Date,Emp_Name,Emp_Dept,Leave_From,Leave_To FROM Admin", mycon))

                {

                    mydr = cmd.ExecuteReader(CommandBehavior.CloseConnection);

                    GridView1.DataSource = mydr;

                    GridView1.DataBind();

                }

            }

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}