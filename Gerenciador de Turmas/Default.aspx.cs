using Gerenciador_de_Turmas.Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gerenciador_de_Turmas
{
    public partial class _Default : Page
    {
        public List<Aluno> TurmaA = new List<Aluno>();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                for (int i = 0; i < 20; i++)
                {
                    Aluno novo = new Aluno();
                    TurmaA.Add(novo);
                }
                grdA.DataSource = TurmaA;
                grdA.DataBind();
                aupGridA.Update();
            }
        }
    }
}