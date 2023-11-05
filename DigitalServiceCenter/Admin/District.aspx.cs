using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data; 

namespace DigitalServiceCenter.Admin
{
    public partial class District : System.Web.UI.Page
    {
        DbOperation db = new DbOperation();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            object ob = db.exescalar("select count(districtname) from tbldistrict where districtname='" + txtdistrict.Text + "'");
            if (Convert.ToInt32(ob) == 0)
            {

                string sql = "insert into tbldistrict values('" + txtdistrict.Text + "')";
                int i = db.exenonquery(sql);
                if (i == 1)
                {
                    Response.Write("<script>alert('District Inserted successfully!')</script>");
                }
                else
                {
                    Response.Write("<script>alert('District Insertion Failed!')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Duplicate exist!')</script>");
            }
            txtdistrict.Text = "";
            

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }
    }
}