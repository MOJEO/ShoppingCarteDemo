using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ProductDetails : System.Web.UI.Page
{
    ShoppingCart myCart;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string id = Request.QueryString["ID"];
            if (id != null)
            {
                dlProduct.DataSource = DataAccess.selectQuery("SELECT * FROM PRODUCTS WHERE ID=" + id);
                dlProduct.DataBind();
            }
        }
    }

    protected void btnAddToCart_Click(object sender, EventArgs e)
    {
        if(myCart == null)
        {
           myCart = new ShoppingCart();
           Session["myCart"]=myCart ;       
        }
        string id = Request.QueryString["ID"];
        myCart = (ShoppingCart)Session["myCart"];
        DataTable dt = DataAccess.selectQuery("SELECT * FROM PRODUCTS WHERE ID = " + id);
        DataRow row = dt.Rows[0];
        myCart.Insert(new CartItem(Int32.Parse(id), 
            row["NAME"].ToString(), 
            row["IMAGE"].ToString(), 
            row["DESCRIPTION"].ToString(),
            Double.Parse(row["PRICE"].ToString()), 
            1)
        );


    }
}