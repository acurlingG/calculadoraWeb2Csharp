using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace calculadoraWeb
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        int[] vector = new int[5];   // variable globales 
        int[,] matriz = new int[3, 3]; // variable global
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void boton_Click(object sender, EventArgs e)
        {

            if (rsuma.Checked)
            {
                lresultado.Text = (float.Parse(tnumero1.Text) + float.Parse(tnumero2.Text)).ToString();
            }
            else if (rresta.Checked)
            {
                lresultado.Text = (float.Parse(tnumero1.Text) - float.Parse(tnumero2.Text)).ToString();
            }

            if (Lista.SelectedIndex == 0)
            {
                lresultado.Text = (float.Parse(tnumero1.Text) + float.Parse(tnumero2.Text)).ToString();
            }
            else if (Lista.SelectedIndex == 1)
            {
                lresultado.Text = (float.Parse(tnumero1.Text) - float.Parse(tnumero2.Text)).ToString();
            }

            if (csuma.Checked)
            {
                lresultado.Text = (float.Parse(tnumero1.Text) + float.Parse(tnumero2.Text)).ToString();
            }
            else if (cresta.Checked)
            {
                lresultado.Text = (float.Parse(tnumero1.Text) - float.Parse(tnumero2.Text)).ToString();


            }

            lresultado.Text = string.Empty; // limpiar el resultado

            if (csuma.Checked)
            {
                lresultado.Text = "Suma: " + (float.Parse(tnumero1.Text) + float.Parse(tnumero2.Text)).ToString() + lresultado.Text;
            }

            if (cresta.Checked)
            {
                lresultado.Text = lresultado.Text + "Resta: " + (float.Parse(tnumero1.Text) - float.Parse(tnumero2.Text)).ToString();
            }
        }
    }
}