package br.com.fatecpg.projeto4;

import java.util.ArrayList;

public class Musica {
    
    private String nome;
    private String ano;
    private Discos disco;
    
    public Musica(String nome, String ano, Discos disco) {
        this.nome = nome;
        this.ano = ano;
        this.disco = disco;
    }
    
     public String getNome() {
        return nome;
    }
     
    public void setNome(String nome) {
        this.nome = nome;
    }
        
     public void setAno(String ano) {
        this.ano = ano;
    }

    public String getAno() {
        return ano;
    }
    
     public Discos getDisco() {
        return disco;
    }

    public void setDisco(Discos disco) {
        this.disco = disco;
    }
    
 
    
   
 
}
