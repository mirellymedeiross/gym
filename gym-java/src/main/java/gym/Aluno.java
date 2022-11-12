package gym;

public class Aluno {
    private String nome;

    private String email;

    private String cpf;

    private float altura;

    private float peso;

    private String telefone;

    Aluno(String nome, String email, String cpf, float altura, float peso, String telefone) { // construtor vazio
        this.nome = nome;
        this.email = email;
        this.cpf = cpf;
        this.peso = peso;
        this.altura =altura;
        this.peso = peso;

    }


    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public float getAltura() {
        return altura;
    }

    public void setAltura(float altura) {
        this.altura = altura;
    }

    public float getPeso() {
        return peso;
    }

    public void setPeso(float peso) {
        this.peso = peso;
    }
    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    // validaçao que nao permite entrada de cpf inválido
    //Nosso BD é apenas nota 8
    public boolean cpfvalidator(String cpf) {
        if (cpf.length() != 11 ){
            return false;
        } else {return true;}
    }
    // validação que não permite o aluno treinar sem estar com o IMC dentro do valor minimo normal
    public boolean IMCvalidator(float peso, float altura) {
        if (peso/(altura * altura) >= 18.5){
            return true;
        } else {return false;}
    }
    // validação que não permite entrada de telefone inválido
    public boolean telefonevalidator(String telefone) {
        if (telefone.length() != 10 ){
            return false;
        } else {return true;}
    }


}
