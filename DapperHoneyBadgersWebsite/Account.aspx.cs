using System;
using System.Web;

namespace DapperHoneyBadgersWebsite
{
    public partial class Account : System.Web.UI.Page
    {
        protected void Page_Load( object sender, EventArgs e )
        {
            // Notify them if something has occured.
            AccountResponse.InnerHtml = string.Empty;
            if ( HttpContext.Current.Session["AccountResponse"] != null )
            {
                AccountResponse.InnerHtml = $"<h2>{HttpContext.Current.Session["AccountResponse"]}</h2>";
                HttpContext.Current.Session["AccountResponse"] = null;
            }

            // If we do not have an account currently loaded in, show our registration and login page.
            // Otherwise, show our account status page.
            if ( HttpContext.Current.Session["CurrentAccount"] == null )
            {
                AccountCreationAndLogin.Visible = true;
                AccountStatus.Visible = false;
                AccountCreationSpecifics.Visible = false;
                AccountLoginSpecifics.Visible = false;
                if ( HttpContext.Current.Session["AccountCreation"] != null )
                {
                    AccountCreationSpecifics.Visible = true;
                    AccountLoginSpecifics.Visible = true;
                }
                else if ( HttpContext.Current.Session["AccountLogin"] != null )
                {
                    AccountLoginSpecifics.Visible = true;
                }
            }
            else
            {
                AccountCreationAndLogin.Visible = false;
                AccountStatus.Visible = true;
                AccountResponse.InnerHtml = $"<h2>Welcome, {HttpContext.Current.Session["CurrentAccount"]}";
            }
        }

        protected void btnLogin_Click( object sender, EventArgs e )
        {
            if ( HttpContext.Current.Session["AccountLogin"] == null )
            {
                HttpContext.Current.Session["AccountLogin"] = new object();
                HttpContext.Current.Response.Redirect( "Account.aspx" );
            }

            BadgerDatabaseEntities context = new BadgerDatabaseEntities();
            AccountEnt account = context.AccountEnts.Find( txtUsername.Text );
            if ( account == null )
            {
                HttpContext.Current.Session["AccountResponse"] = "Username not found";
                HttpContext.Current.Response.Redirect( "Account.aspx" );
            }
            else
            {
                HttpContext.Current.Session["CurrentAccount"] = account.Username;
                HttpContext.Current.Session["AccountLogin"] = null;
                HttpContext.Current.Response.Redirect( "Account.aspx" );
            }
        }

        protected void btnRegister_Click( object sender, EventArgs e )
        {
            if ( HttpContext.Current.Session["AccountCreation"] == null )
            {
                HttpContext.Current.Session["AccountCreation"] = new object();
                HttpContext.Current.Response.Redirect( "Account.aspx" );
            }
            else
            {
                AccountEnt act = new AccountEnt()
                {
                    Username = txtUsername.Text,
                    Password = txtPassword.Text,
                    Email = txtEmail.Text,
                    Address = txtAddress.Text
                };

                BadgerDatabaseEntities context = new BadgerDatabaseEntities();
                if ( context.AccountEnts.Find( act.Username ) == null )
                {
                    context.AccountEnts.Add( act );
                    context.SaveChanges();
                    HttpContext.Current.Session["CurrentAccount"] = act.Username;
                    HttpContext.Current.Session["AccountCreation"] = null;
                    HttpContext.Current.Session["AccountLogin"] = null;
                    HttpContext.Current.Response.Redirect( "Account.aspx" );
                }
                else
                {
                    HttpContext.Current.Session["AccountResponse"] = "Username already exists.";
                    HttpContext.Current.Response.Redirect( "Account.aspx" );
                }
            }
        }

        protected void btnLogout_Click( object sender, EventArgs e )
        {
            HttpContext.Current.Session["CurrentAccount"] = null;
            HttpContext.Current.Session["AccountResponse"] = "You have been succesfully logged out.";
            HttpContext.Current.Response.Redirect( "Account.aspx" );
        }
    }
}