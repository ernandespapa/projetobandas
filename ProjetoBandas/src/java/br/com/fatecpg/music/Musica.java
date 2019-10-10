/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.music;

/**
 *
 * @author a
 */
public class Musica {
    String nome;
    int duração;
    String autoria;

    public Musica(String nome, int duração, String autoria) {
        this.nome = nome;
        this.duração = duração;
        this.autoria = autoria;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getDuração() {
        return duração;
    }

    public void setDuração(int duração) {
        this.duração = duração;
    }

    public String getAutoria() {
        return autoria;
    }

    public void setAutoria(String autoria) {
        this.autoria = autoria;
    }
    
}
