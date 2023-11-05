using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace DigitalServiceCenter.Admin
{
    public partial class ViewCategory : System.Web.UI.Page
    {
        DbOperation db = new DbOperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                db.fillgrid("select * from tblcategory", GridView1);
            }
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            db.fillgrid("select * from tblcategory", GridView1);
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string id = GridView1.DataKeys[e.RowIndex].Value.ToString();

            TextBox txtcategory = new TextBox();
            txtcategory = (TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0];

           
            FileUpload f = new FileUpload();
            f = (FileUpload)GridView1.Rows[e.RowIndex].Cells[3].FindControl("FileUpload1");
            if (f.HasFile)
            {

                int i = db.exenonquery("update tblcategory set categoryname='" + txtcategory.Text + "',photo='" + f.FileName + "' where categoryid='" + id + "'");
                f.SaveAs(Server.MapPath("~/upload/" + f.FileName));

            }
            else
            {
                int i = db.exenonquery("update tblcategory set categoryname='" + txtcategory.Text + "' where categoryid='" + id + "'");
            }
            GridView1.EditIndex = -1;
            db.fillgrid("select * from tblcategory", GridView1);
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            db.fillgrid("select * from tblcategory", GridView1);
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string id = GridView1.DataKeys[e.RowIndex].Value.ToString();
            db.exenonquery("delete from tblcategory where categoryid=" + id + "");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HtmlInputCheckBox chk;
            foreach (GridViewRow dr in GridView1.Rows)
            {
                chk = (HtmlInputCheckBox)dr.FindControl("ch");
                if (chk.Checked)
                {
                    db.exenonquery("delete from tblcategory where CategoryId=" + chk.Value + "");
                }
            }
            db.fillgrid("select * from tblcategory", GridView1);

        }
    }
}