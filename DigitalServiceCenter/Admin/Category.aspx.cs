using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DigitalServiceCenter.Admin
{
    public partial class Category : System.Web.UI.Page
    {
        DbOperation db = new DbOperation();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            object ob =db.exescalar("select count(categoryname) from tblcategory where categoryname='"+txtcategory.Text+"'");
            if (Convert.ToInt32(ob) == 0)
            {
                string s = "insert into tblcategory values('" + txtcategory.Text + "','" + FileUpload1.FileName + "')";
                FileUpload1.SaveAs(Server.MapPath("~/upload/" + FileUpload1.FileName));
                int i = db.exenonquery(s);
                if(i==1)
                {
                    Response.Write("<script>alert('Category Inserted successfully!')</script>");
                }
                else
                {
                    Response.Write("<script>alert('Category Insertion Failed!')</script>");
                }
            }

            else
            {
                Response.Write("<script>alert('Duplicate exist!')</script>");
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewCategory.aspx");
        }
    }
}