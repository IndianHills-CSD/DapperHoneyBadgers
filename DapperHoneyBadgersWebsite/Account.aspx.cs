using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DapperHoneyBadgersWebsite
{
    public partial class Account : System.Web.UI.Page
    {
        protected void Page_Load( object sender, EventArgs e )
        {
            // If we do not have an account currently loaded in, show our registration and login page.
            // Otherwise, show our account status page.
            if ( HttpContext.Current.Session["CurrentAccount"] == null )
            {
                AccountCreationAndLogin.Visible = true;
                AccountStatus.Visible = false;
            }
            else
            {
                AccountCreationAndLogin.Visible = false;
                AccountStatus.Visible = true;
            }
        }
    }
}