using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETSample03Entity
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void FormView1_ItemInserted(object sender, FormViewInsertedEventArgs e)
        {
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            FormView1.ChangeMode(FormViewMode.Edit);
        }

        protected void FormView1_ItemUpdated(object sender, FormViewUpdatedEventArgs e)
        {
            GridView1.DataBind();
        }
    }
}