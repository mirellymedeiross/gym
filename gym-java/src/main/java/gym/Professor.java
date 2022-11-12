package gym;

public class Professor {
    private String nome;

    private String dataNascimento;

    private String email;

    private String formacao;

    private int idade;

    private String telefone;

    Professor(String nome, String dataNascimento, String email, String formacao, int idade, String telefone)
    { // construtor vazio
        this.nome = nome;
        this.dataNascimento = dataNascimento;
        this.email = email;
        this.formacao = formacao;
        this.idade = idade;
        this.telefone = telefone;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getDataNascimento() {
        return dataNascimento;
    }

    public void setDataNascimento(String dataNascimento) {
        this.dataNascimento = dataNascimento;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFormacao() {
        return formacao;
    }

    public void setFormacao(String formacao) {
        this.formacao = formacao;
    }

    public int getIdade() {
        return idade;
    }

    public void setIdade(int idade) {
        this.idade = idade;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    // valida se o professor tem idade mínima para trabalhar
    public boolean idadevalidator(int idade) {
        if (idade >= 18){
            return true;
        } else {return false;}
    }

    // valida se o professor tem a formação necessário para trabalhar
    public boolean formacaovalidator(String formacao) {
        if (formacao != "Educação Física" ){
            return false;
        } else return true;
    }

    //valida o telefone do professor
    public boolean telefonevalidator(String telefone) {
        if (telefone.length() != 10 ){
            return false;
        } else {return true;}
    }

}


