package gym;

public class Unidade {
    private String nome;

    private String telefone;

    private String cidade;

    private String uf;

    private String bairro;

    private String rua;

    private int numero;

    private String  complemento;

    private String cep;

    Unidade(String nome, String telefone, String cidade, String uf, String bairro, String rua, int numero, String complemento, String cep ) { // construtor vazio
        this.nome = nome;
        this.telefone = telefone;
        this.cidade = cidade;
        this.uf = uf;
        this.bairro = bairro;
        this.rua = rua;
        this.numero = numero;
        this.complemento = complemento;
        this.cep = cep;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getCidade() {
        return cidade;
    }

    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    public String getUf() {
        return uf;
    }

    public void setUf(String uf) {
        this.uf = uf;
    }

    public String getBairro() {
        return bairro;
    }

    public void setBairro(String bairro) {
        this.bairro = bairro;
    }

    public String getRua() {
        return rua;
    }

    public void setRua(String rua) {
        this.rua = rua;
    }

    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public String getComplemento() {
        return complemento;
    }

    public void setComplemento(String complemento) {
        this.complemento = complemento;
    }

    public String getCep() {
        return cep;
    }

    public void setCep(String cep) {
        this.cep = cep;
    }

    //valida o telefone da unidade
    public boolean telefonevalidator(String telefone) {
        if (telefone.length() != 10 ){
            return false;
        } else {return true;}
    }

    //valida se a cidade indicada é onde está a unidade
    public boolean cidadevalidator(String cidade) {
        if (cidade != "Fortaleza" ){
            return false;
        } else {return true;}
    }

    //valida se a unidade feratica indicada é onde está a unidade
    public boolean ufvalidator(String uf) {
        if (uf != "CE" ){
            return false;
        } else {return true;}
    }

    // valida se o cep indicado está no formato correto
    public boolean cepvalidator(String cep) {
        if (cep.length() != 8 ){
            return false;
        } else {return true;}
    }
}
