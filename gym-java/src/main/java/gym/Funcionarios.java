package gym;

public class Funcionarios{
    private String nome;

    private String email;

    private String dataNascimento;

    private String setor;

    private Double salario;

    private int idade;

    private String telefone;

    Funcionarios(String nome, String email, String dataNascimento, String setor, Double salario, int idade, String telefone) { // construtor vazio
        this.nome = nome;
        this.email = email;
        this.dataNascimento = dataNascimento;
        this.setor = setor;
        this.salario = salario;
        this.idade = idade;
        this.telefone = telefone;
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

    public String getDataNascimento() {
        return dataNascimento;
    }

    public void setDataNascimento(String dataNascimento) {
        this.dataNascimento = dataNascimento;
    }

    public String getSetor() {
        return setor;
    }

    public void setSetor(String setor) {
        this.setor = setor;
    }

    public Double getSalario() {
        return salario;
    }

    public void setSalario(Double salario) {
        this.salario = salario;
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

    // valida se o funcionário tem idade mínima para trabalhar
    public boolean idadevalidator(int idade) {
        if (idade >= 18){
            return true;
        } else {return false;}
    }

    // valida que o funcionário recebe o salário mínimo
    public boolean salariovalidator(Double salario) {
        if (salario <= 1400){
            return false;
        } else {return true;}
    }

    //valida o telefone do funcionário
    public boolean telefonevalidator(String telefone) {
        if (telefone.length() != 10 ){
            return false;
        } else {return true;}
    }
}
