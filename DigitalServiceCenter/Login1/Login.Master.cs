using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GlobalMedifileSystem.Login
{
    public partial class Login : System.Web.UI.MasterPage
    {
        DbOperation db = new DbOperation();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
           // login();

            DataTable dt = db.exedatatable("select * from tbllogin where username='" + txtusername.Text + "' and password='" + txtpassword.Text + "'");
            if (dt.Rows.Count == 1)
            {
                // Session["loginid"] = dt.Rows[0]["loginid"].ToString();
                //Session["uname"] = dt.Rows[0]["username"].ToString();
                if (dt.Rows[0]["role"].ToString() == "Admin     ")
                {
                    Response.Redirect("../Admin/Adminhome.aspx");
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid Username and Password!!')</script>");
            }
        }



    }
}