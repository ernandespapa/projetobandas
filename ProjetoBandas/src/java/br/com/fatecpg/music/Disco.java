/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.fatecpg.music;

import java.util.ArrayList;

/**
 *
 * @author a
 */
public class Disco {
    private String nome;
    private String gravadora;
    private String ano;
    private ArrayList<Musica> musicas = new ArrayList<>();
    
   
    public Disco() {
    }
    
    public Disco(String nome, String gravadora, String ano) {
        this.nome = nome;
        this.gravadora = gravadora;
        this.ano = ano;
    }

    public ArrayList<Musica> getMusicas() {
        return musicas;
    }

    public void setMusicas(ArrayList<Musica> musicas) {
        this.musicas = musicas;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getGravadora() {
        return gravadora;
    }

    public void setGravadora(String gravadora) {
        this.gravadora = gravadora;
    }

    public String getAno() {
        return ano;
    }

    public void setAno(String ano) {
        this.ano = ano;
    }
    
     public Artista getArtista(){
        return Db.getArtista(this);
    }
}
