using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace DapperHoneyBadgersWebsite
{
    public partial class CartLayout : System.Web.UI.Page
    {
        protected void Page_Load( object sender, EventArgs e )
        {
            #region TEMP TEST - DELETE AFTER DATABASE
            // Add some fake items to our cart.
            if ( HttpContext.Current.Session["Cart"] == null )
            {
                HttpContext.Current.Session.Add( "Cart", new List<TempItem>() );
                for ( int x = 1; x < 4; x++ )
                    (HttpContext.Current.Session["Cart"] as List<TempItem>).Add( new TempItem( 1 + x * 2 ) );
            }
            #endregion

            // Display items from our cart.
            List<TempItem> Cart = HttpContext.Current.Session["Cart"] as List<TempItem>;
            cartItemsTable.Controls.Clear();
            if ( Cart == null )
            {
                // No items. Stop now.
                cartItemsTable.Controls.Clear();

                // Let them know they have no items.
                HtmlTableRow warningRow = new HtmlTableRow();
                HtmlTableCell warningCell = new HtmlTableCell();
                HtmlGenericControl warning = new HtmlGenericControl( "h4" );
                warning.InnerHtml = "No items in cart.";
                warning.Attributes.Add( "class", "tableHeadText" );
                warningCell.Controls.Add( warning );
                warningRow.Controls.Add( warningCell );
                cartItemsTable.Controls.Add( warningRow );
            }
            else
            {
                // They have items. Go through and get our rows ready.
                List<HtmlTableRow> rows = new List<HtmlTableRow>();
                // Keep track of the total counts and price.
                int totalItems = 0, totalQty = 0;
                double totalPrice = 0.0;
                for ( int x = 0; x < Cart.Count; x++ )
                {
                    // Setup row.
                    HtmlTableRow itemRow = new HtmlTableRow();

                    // Setup image cell.
                    HtmlTableCell imgCell = new HtmlTableCell();
                    imgCell.Attributes.Add( "class", "imgContainer" );
                    HtmlGenericControl img = new HtmlGenericControl( "img" );
                    img.Attributes.Add( "src", "images/_temp/_placeholder.jpg" );
                    img.Attributes.Add( "title", "placeholder image" );
                    imgCell.Controls.Add( img );

                    // Setup name cell.
                    HtmlTableCell nameCell = new HtmlTableCell();
                    Button name = new Button();
                    name.ID = Cart[x].ID;
                    name.Text = "Item Name Goes Here"; // Should be replaced with the item's name.
                    name.BackColor = System.Drawing.Color.Transparent;
                    name.Click += new EventHandler( delegate ( object s, EventArgs ee )
                    {
                        HttpContext.Current.Session.Add( "ProductID", (s as Button).ID );
                        HttpContext.Current.Response.Redirect( "Products.aspx" );
                    } );
                    nameCell.Controls.Add( name );

                    // Setup quantity.
                    HtmlTableCell qtyCell = new HtmlTableCell();
                    HtmlInputText qty = new HtmlInputText( "number" );
                    qty.Attributes.Add( "class", "qtyInput" );
                    qty.Attributes.Add( "value", Cart[x].Qty.ToString() );
                    qty.ID = "qty" + Cart[x].ID;
                    qtyCell.Controls.Add( qty );

                    // Setup price.
                    HtmlTableCell totCell = new HtmlTableCell();
                    totCell.InnerHtml = Cart[x].TotalPrice.ToString( "c" );

                    itemRow.Controls.Add( imgCell );
                    itemRow.Controls.Add( nameCell );
                    itemRow.Controls.Add( qtyCell );
                    itemRow.Controls.Add( totCell );

                    rows.Add( itemRow );
                    totalItems++;
                    totalQty += Cart[x].Qty;
                    totalPrice += Cart[x].TotalPrice;
                }

                // List all our info.
                HtmlTableRow totalQtyRow = new HtmlTableRow();
                HtmlTableCell totalQtyCell = new HtmlTableCell(  "th" );
                totalQtyCell.Attributes.Add( "class", "tableHeadText" );
                totalQtyCell.ColSpan = 4;
                string itemText = "item";
                if ( totalQty > 1 )
                    itemText += "s";
                totalQtyCell.InnerHtml = $"{totalItems} unique ({totalQty} total) {itemText} in your shopping cart";
                totalQtyRow.Controls.Add( totalQtyCell );
                cartItemsTable.Controls.Add( totalQtyRow );

                for ( int x = 0; x < rows.Count; x++ )
                    cartItemsTable.Controls.Add( rows[x] );

                HtmlTableRow totalPriceRow = new HtmlTableRow();
                HtmlTableCell totalPriceCell = new HtmlTableCell();
                totalPriceCell.Attributes.Add( "class", "grandTotal" );
                totalPriceCell.ColSpan = 4;
                totalPriceCell.InnerHtml = $"Grand Total: {totalPrice.ToString( "c" )}";
                totalPriceRow.Controls.Add( totalPriceCell );
                cartItemsTable.Controls.Add( totalPriceRow );
            }
        }
    }
}