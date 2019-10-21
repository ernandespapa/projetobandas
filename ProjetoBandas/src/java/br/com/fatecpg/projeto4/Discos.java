/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.projeto4;

import java.util.ArrayList;
/**
 *
 * @author suporte03
 */
public class Discos {

    private String nome;
    private String ano;
    
    private Banda banda;

    public Discos(String nome, String ano) {
        this.nome = nome;
        this.ano = ano;
    }
    
    public Discos(String nome, String ano, Banda banda) {
        this.nome = nome;
        this.ano = ano;
        this.banda = banda;
    }

    public String getNome() {
        return nome;
    }

    public String getAno() {
        return ano;
    }   

    public Banda getBanda() {
        return banda;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public void setAno(String ano) {
        this.ano = ano;
    }

    public void setBanda(Banda banda) {
        this.banda = banda;
    }
}
