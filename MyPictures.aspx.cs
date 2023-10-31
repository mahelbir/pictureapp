using System;

namespace PictureApp
{
    public partial class MyPictures : System.Web.UI.Page
    {

        protected void ApplyBorder()
        {
            if (CheckBorder.Checked)
            {
                RadioColor.Visible = true;
                ListPixel.Visible = true;
                ImgMain.Style.Add("border-style", "solid");
                ImgMain.Style.Add("border-width", ListPixel.SelectedValue + "px");
                ImgMain.Style.Add("border-color", RadioColor.SelectedValue);
            }
            else
            {
                RadioColor.Visible = false;
                ListPixel.Visible = false;
                ImgMain.Style.Remove("border-style");
                ImgMain.Style.Remove("border-width");
                ImgMain.Style.Remove("border-color");
            }
        }

        protected void ListPicture_SelectedIndexChanged(object sender, EventArgs e)
        {
            string[] slugs = { "ronaldo", "messi", "neymar", "muslera", "icardi", "sneijder" };
            string[] descriptions = 
            {
                "Cristiano Ronaldo dos Santos Aveiro is a Portuguese professional footballer. Also known as <b>G.O.A.T.</b>",
                "Lionel Andrés Messi is an Argentine professional footballer.",
                "Neymar da Silva Santos Júnior is a Brazilian professional footballer.",
                "Néstor Fernando Muslera Micol is a Uruguayan  professional goalkeeper.",
                "Mauro Emanuel Icardi is an Argentine professional footballer.",
                "Wesley Sneijder is a Dutch retired professional footballer."
            };

            if (ListPicture.SelectedIndex != 0)
            {
                int index = ListPicture.SelectedIndex - 1;
                ImgMain.Visible = true;
                CheckBorder.Visible = true;
                ImgMain.ToolTip = ListPicture.SelectedItem.Text;
                ImgMain.ImageUrl = "images/" + slugs[index] + ".jpg";
                LabelDesc.Text = descriptions[index];
                this.ApplyBorder();
            }
            else
            {
                ImgMain.Visible = false;
                CheckBorder.Visible = false;
                RadioColor.Visible = false;
                ListPixel.Visible = false;
                LabelDesc.Text = "";
            }
        }

        protected void CheckBorder_CheckedChanged(object sender, EventArgs e)
        {
            this.ApplyBorder();
        }

        protected void RadioColor_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.ApplyBorder();
        }

        protected void ListPixel_SelectedIndexChanged(object sender, EventArgs e)
        {
            this.ApplyBorder();
        }
    }
}