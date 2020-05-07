using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace DapperHoneyBadgersWebsite
{

    /*
     * DB Columns for wishlist
     *      WishlistID (sequence)
     *      Username
     *      ProductID
     *      Qty
     *      DateWishlisted
     */

    #region TEMP

    class TempWishlist
        {
        public string listID;
        public string username;
        public string productID;
        public string qty;
        public string dateSaved;
        public List<TempItem> savedItems;

        public string price
        {
            get
            {
                double price = 0;
                for (int x = 0; x < savedItems.Count; x++)
                    price += savedItems[x].TotalPrice;
                return price.ToString("c");
            }   // END get
        }   // END _price
    
        public TempWishlist(int list)
        {
            listID = list.ToString();
            username = list.ToString() + "josh_delong";
            productID = list.ToString();
            qty = list.ToString();
            dateSaved = list.ToString() + "01/01/2021";
            savedItems = new List<TempItem>();
            for (int x = 1; x < 5; x++)
                savedItems.Add(new TempItem(x));
        }   // END TempWishlist constructor

        public void AppendToRow(HtmlTableRow row)
        {
            HtmlTableCell cell = new HtmlTableCell();
            Button btn = new Button();
            btn.ID = listID;
            btn.Text = listID;
            btn.BackColor = System.Drawing.Color.Transparent;
            btn.Click += new EventHandler(delegate(object s, EventArgs e)
            {
                HttpContext.Current.Session.Add("WishlistID", (s as Button).ID);
                HttpContext.Current.Response.Redirect("WishlistItem.aspx");
            });
            cell.Controls.Add(btn);
            row.Cells.Add(cell);

            cell = new HtmlTableCell();
            cell.InnerHtml = productID;
            row.Cells.Add(cell);

            cell = new HtmlTableCell();
            cell.InnerHtml = qty;
            row.Cells.Add(cell);

            cell = new HtmlTableCell();
            cell.InnerHtml = dateSaved;
            row.Cells.Add(cell);
        }   // END AppendToRow
    }   // END TempWishlist

    #endregion

    public partial class WishlistItem : System.Web.UI.Page
    {
        private List<TempWishlist> savedItems;
        private void WishlistHeader(HtmlTableRow head)
        {
            // Wishlist ID
            HtmlTableCell cell = new HtmlTableCell();
            cell.Style.Add("font-weight", "bold");
            cell.InnerHtml = "Wishlist ID";
            head.Cells.Add(cell);

            // Date Wishlisted
            cell = new HtmlTableCell();
            cell.Style.Add("font-weight", "bold");
            cell.InnerHtml = "Date Added";
            head.Cells.Add(cell);

            // Product ID
            cell = new HtmlTableCell();
            cell.Style.Add("font-weight", "bold");
            cell.InnerHtml = "Product ID";
            head.Cells.Add(cell);

            // Quantity
            cell = new HtmlTableCell();
            cell.Style.Add("font-weight", "bold");
            cell.InnerHtml = "Quantity";
            head.Cells.Add(cell);

            //Price
            cell = new HtmlTableCell();
            cell.Style.Add("font-weight", "bold");
            cell.InnerHtml = "Price";
            head.Cells.Add(cell);
        }   // END WishlistHeader

        private void ListItemHeader(HtmlTableRow head)
        {
            // Wishlist ID
            HtmlTableCell cell = new HtmlTableCell();
            cell.Style.Add("font-weight", "bold");
            cell.InnerHtml = "Wishlist ID";
            head.Cells.Add(cell);

            // Date Wishlisted
            cell = new HtmlTableCell();
            cell.Style.Add("font-weight", "bold");
            cell.InnerHtml = "Date Added";
            head.Cells.Add(cell);

            // Product ID
            cell = new HtmlTableCell();
            cell.Style.Add("font-weight", "bold");
            cell.InnerHtml = "Product ID";
            head.Cells.Add(cell);

            // Quantity
            cell = new HtmlTableCell();
            cell.Style.Add("font-weight", "bold");
            cell.InnerHtml = "Quantity";
            head.Cells.Add(cell);

            //Price
            cell = new HtmlTableCell();
            cell.Style.Add("font-weight", "bold");
            cell.InnerHtml = "Price";
            head.Cells.Add(cell);
        }   // END ListItemHeader

        protected void Page_Load(object sender, EventArgs e)
        {
            // Wipe table
            wlTable.Controls.Clear();

            // If no wishlist is specified, display all wishlists.
            if (HttpContext.Current.Session["WishlistID"] == null)
            {
                // Hide label and button
                wlTotal.Visible = false;

                // Add heading row.
                HtmlTableRow head = new HtmlTableRow();
                WishlistHeader(head);
                wlTable.Controls.Add(head);

                // Prepare rows.
                for (int x = 0; x < savedItems.Count; x++)
                {
                    TempWishlist wList = savedItems[x];
                    HtmlTableRow listRow = new HtmlTableRow();
                    wList.AppendToRow(listRow);
                }   // END for loop
            }   // END if
            // If wishlist is specified, display its items.
            else
            {
                // Show label and button
                wlTotal.Visible = true;

                // Add heading row.
                HtmlTableRow head = new HtmlTableRow();
                ListItemHeader(head);
                wlTable.Controls.Add(head);

                // Get wishlist using id.
                TempWishlist tempList = savedItems[int.Parse(HttpContext.Current.Session["WishlistID"].ToString())];

                // Prepare rows.
                for (int x = 0; x < tempList.savedItems.Count; x++)
                {
                    TempItem item = tempList.savedItems[x];
                    HtmlTableRow listRow = new HtmlTableRow();
                    item.AppendToRow(listRow);
                    wlTable.Controls.Add(listRow);
                }   // END for loop

                // Add total
                wlTotalValue.InnerHtml = tempList.price;
            }   // END else

            // After displaying, clear the session variable.
            if (HttpContext.Current.Session["WishlistID"] != null)
                HttpContext.Current.Session.Remove("WishlistID");
        }   // END Page_Load

        protected void BtnWishlists_Click(object sender, EventArgs e)
        {
            // Refresh
            HttpContext.Current.Response.Redirect("WishlistItem.aspx.aspx");
        }   // END BtnWishlists_Click

        protected void BtnCreateList_Click(object sender, EventArgs e)
        {
            List<TempWishlist> newList = new List<TempWishlist>();
            newList.Add
        }   // End BtnCreateList_Click

    }   // END WishlistItem
}   // END namespace