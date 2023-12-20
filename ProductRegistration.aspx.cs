using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebAppAssignment10
{
    public partial class ProductRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LblMessage.Visible = false;
        }

        protected void BtnRegister_Click(object sender, EventArgs e)
        {
            // Perform product registration logic here
            // For simplicity, just displaying a success message
            LblMessage.Text = "Product registered successfully!";
            LblMessage.Visible = true;
        }
    }


}



