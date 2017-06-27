namespace DAL.Model
{
    public class Animal
    {
        public int Codigo { get; set; }
        public string Nome { get; set; }
        public string Porte { get; set; }
        public string Especie { get; set; }
        public string Raca { get; set; }
        public int Idade { get; set; }
        public int Usuario_codigo { get; set; }
        public byte[] Imagem { get; set; }
        public string Imagem_tipo { get; set; }
    }
}


