using Bogus;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;

namespace Gerenciador_de_Turmas.Classes
{
    public class Aluno
    {
        public string nome { get; set; }
        public double nota1 { get; set; }
        public double nota2 { get; set; }
        public double nota3 { get; set; }
        public double nota4 { get; set; }
        public string aprovado { get; set; }
        public double notacomp { get; set; }

        public Aluno()
        {
            var faker = new Faker("pt_BR");
            nome = faker.Person.FullName;

            this.nota1 = GerarNota();
            this.nota2 = GerarNota();
            this.nota3 = GerarNota();
            

            VerificarFinais();
        }

        private double GerarNota()
        {
            double nota = 0 ;
            int temp = 0;
            double temp2 = 0;
            Random numAleatorio = new Random();

            temp = numAleatorio.Next(0,10);
            if (temp == 10)
            {
                nota = temp;
            }
            else
            {
                numAleatorio = new Random();
                temp2 = numAleatorio.NextDouble();
                nota = (temp + temp2);
            }
            nota = Convert.ToDouble(nota.ToString("N2"));

            return nota;
        }

        private void VerificarFinais()
        {
            double media = ((nota1 + (nota2 * 1.2) + (nota3 * 1.4)) / 3);

            if (media >= 6)
            {
                aprovado = "Aprovado";
            }
            else
            {
                if (media < 4)
                {
                    aprovado = "Reprovado";
                }
                else
                {
                    this.nota4 = GerarNota();
                    if (((this.nota4 + media) / 2) >= 5)
                    {
                        aprovado = "Aprovado";
                    }
                    else
                    {
                        aprovado = "Reprovado";
                    }
                }
            }
        }
    }


}