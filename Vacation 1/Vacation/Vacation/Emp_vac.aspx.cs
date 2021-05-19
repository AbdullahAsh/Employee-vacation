using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vacation
{
    public partial class Emp_vac : System.Web.UI.Page
    {
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


       

    }
}