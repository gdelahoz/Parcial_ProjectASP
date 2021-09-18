using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Parcial_ProjectASP
{
    public partial class company : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            int valor;
            valor = int.Parse(txtZIP.Text);

            if (valor % 5 == 0)
                args.IsValid = true;
            else
                args.IsValid = false;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Response.Redirect("carrito.aspx");
        }
    }
}