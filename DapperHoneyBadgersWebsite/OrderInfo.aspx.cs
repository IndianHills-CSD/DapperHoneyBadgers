using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace DapperHoneyBadgersWebsite
{
    public partial class OrderInfo : System.Web.UI.Page
    {
        // Add our basic heading information.
        private void PrepareOrderHeading( HtmlTableRow heading )
        {
            // ID
            HtmlTableCell cell = new HtmlTableCell();
            cell.Style.Add( "font-weight", "bold" );
            cell.InnerHtml = "ID";
            heading.Cells.Add( cell );

            // Date
            cell = new HtmlTableCell();
            cell.Style.Add( "font-weight", "bold" );
            cell.InnerHtml = "Date";
            heading.Cells.Add( cell );

            // Address
            cell = new HtmlTableCell();
            cell.Style.Add( "font-weight", "bold" );
            cell.InnerHtml = "Address";
            heading.Cells.Add( cell );

            // Price
            cell = new HtmlTableCell();
            cell.Style.Add( "font-weight", "bold" );
            cell.InnerHtml = "Price";
            heading.Cells.Add( cell );
        }
        private void PrepareItemHeading( HtmlTableRow heading )
        {
            // ID
            HtmlTableCell cell = new HtmlTableCell();
            cell.Style.Add( "font-weight", "bold" );
            cell.InnerHtml = "ID";
            heading.Cells.Add( cell );

            // Date
            cell = new HtmlTableCell();
            cell.Style.Add( "font-weight", "bold" );
            cell.InnerHtml = "CategoryID";
            heading.Cells.Add( cell );

            // Address
            cell = new HtmlTableCell();
            cell.Style.Add( "font-weight", "bold" );
            cell.InnerHtml = "Price";
            heading.Cells.Add( cell );

            // Price
            cell = new HtmlTableCell();
            cell.Style.Add( "font-weight", "bold" );
            cell.InnerHtml = "Qty";
            heading.Cells.Add( cell );
        }
        private void AppendOrderToRow( OrderEnt order, HtmlTableRow row )
        {
            // ID, to be clicked. Redirect to the OrderItems page with the id set.
            HtmlTableCell cell = new HtmlTableCell();
            Button btn = new Button();
            btn.ID = order.OrderID.ToString();
            btn.Text = order.OrderID.ToString();
            btn.BackColor = System.Drawing.Color.Transparent;
            btn.Click += new EventHandler( delegate ( object s, EventArgs e )
            {
                HttpContext.Current.Session.Add( "OrderID", (s as Button).ID );
                HttpContext.Current.Response.Redirect( "OrderInfo.aspx" );
            } );
            cell.Controls.Add( btn );
            row.Cells.Add( cell );

            // Date, Address, and Price simply need to be displayed.
            cell = new HtmlTableCell();
            cell.InnerHtml = order.OrderDate.ToString();
            row.Cells.Add( cell );

            cell = new HtmlTableCell();
            cell.InnerHtml = order.OrderAddress;
            row.Cells.Add( cell );

            // Find our the total price for the order by summing up all its items.
            decimal total = 0;
            BadgerDatabaseEntities context = new BadgerDatabaseEntities();
            List<OrderItemEnt> orderItems = context.OrderItemEnts.ToList();
            foreach ( OrderItemEnt orderItem in orderItems )
            {
                ProductEnt item = context.ProductEnts.Find( orderItem.ProductID );
                if ( item != null )
                    total += item.ProductPrice * orderItem.Qty;
            }

            cell = new HtmlTableCell();
            cell.InnerHtml = total.ToString( "c" );
            row.Cells.Add( cell );
        }
        public void AppendOrderItemToRow( OrderItemEnt orderItem, HtmlTableRow row )
        {
            // ID, to be clicked. Redirect to the OrderItems page with the id set.
            HtmlTableCell cell = new HtmlTableCell();
            Button btn = new Button();
            btn.ID = orderItem.OrderID.ToString();
            btn.Text = orderItem.OrderID.ToString();
            btn.BackColor = System.Drawing.Color.Transparent;
            btn.Click += new EventHandler( delegate ( object s, EventArgs e )
            {
                HttpContext.Current.Session.Add( "ProductID", (s as Button).ID );
                HttpContext.Current.Response.Redirect( "OrderInfo.aspx" );
            } );
            cell.Controls.Add( btn );
            row.Cells.Add( cell );

            BadgerDatabaseEntities context = new BadgerDatabaseEntities();
            ProductEnt product = context.ProductEnts.Find( orderItem.ProductID );

            cell = new HtmlTableCell();
            cell.InnerHtml = product.ProductName;
            row.Cells.Add( cell );

            cell = new HtmlTableCell();
            cell.InnerHtml = product.ProductPrice.ToString( "c" );
            row.Cells.Add( cell );

            cell = new HtmlTableCell();
            cell.InnerHtml = orderItem.Qty.ToString();
            row.Cells.Add( cell );
        }

        // Add in information related to an order.
        protected void Page_Load( object sender, EventArgs e )
        {
            // Clear any existing information.
            orderTable.Controls.Clear();

            if ( HttpContext.Current.Session["CurrentAccount"] == null )
            {
                orderTotalValue.InnerHtml = "Please login to view order information.";
                return;
            }

            BadgerDatabaseEntities context = new BadgerDatabaseEntities();

            // If we do not have a specific order specified, display all orders.
            if ( HttpContext.Current.Session["OrderID"] == null )
            {
                // Hide our total and return.
                orderTotal.Visible = false;

                // Prepare and add our heading row.
                HtmlTableRow heading = new HtmlTableRow();
                PrepareOrderHeading( heading );
                orderTable.Controls.Add( heading );

                // Load our orders from the database.
                List<OrderEnt> orders = context.OrderEnts.ToList();

                // List any that belong to our current user.
                for ( int x = 0; x < orders.Count; x++ )
                {
                    OrderEnt order = orders[x];
                    if ( order.Username.ToLower() == ((string)HttpContext.Current.Session["CurrentAccount"]).ToLower() )
                    {
                        HtmlTableRow orderRow = new HtmlTableRow();
                        AppendOrderToRow( order, orderRow );
                        orderTable.Controls.Add( orderRow );
                    }
                }
            }
            // If we DO have a specific order specified, display its items instead.
            else
            {
                // Show our total and reutrn.
                orderTotal.Visible = true;

                // Prepare and add our heading row.
                HtmlTableRow heading = new HtmlTableRow();
                PrepareItemHeading( heading );
                orderTable.Controls.Add( heading );

                // Get our order based on id.
                OrderEnt order = context.OrderEnts.Find( int.Parse((string)HttpContext.Current.Session["OrderID"]) );
                List<OrderItemEnt> orderItems = context.OrderItemEnts.ToList();

                // Prepare our rows (hardcoded example for now.)
                // Also calculate our total while here.
                decimal total = 0;
                for ( int x = 0; x < orderItems.Count; x++ )
                {
                    OrderItemEnt orderItem = orderItems[x];
                    if ( order.OrderID == orderItem.OrderID )
                    {
                        HtmlTableRow orderRow = new HtmlTableRow();
                        AppendOrderItemToRow( orderItem, orderRow );
                        orderTable.Controls.Add( orderRow );
                        ProductEnt item = context.ProductEnts.Find( orderItem.ProductID );
                        if ( item != null )
                            total += item.ProductPrice * orderItem.Qty;
                    }
                }

                // Add our total.
                orderTotalValue.InnerHtml = total.ToString( "c" );
            }

            // After displaying, clear our session variable.
            if ( HttpContext.Current.Session["OrderID"] != null )
                HttpContext.Current.Session.Remove( "OrderID" );
        }

        protected void BtnReturn_Click( object sender, EventArgs e )
        {
            // Refresh.
            HttpContext.Current.Response.Redirect( "OrderInfo.aspx" );
        }
    }
}