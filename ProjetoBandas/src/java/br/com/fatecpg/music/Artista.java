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
public class Artista {
    private String nome;
    private String genero;
    private String membros;
    private ArrayList<Disco> discos = new ArrayList<>();
    
     public Artista() {
    }

    public Artista(String nome, String genero, String membros) {
        this.nome = nome;
        this.genero = genero;
        this.membros = membros;
         
    }

    public String getMembros() {
        return membros;
    }

    public void setMembros(String membros) {
        this.membros = membros;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }
    
    

    public ArrayList<Disco> getDiscos() {
        return discos;
    }

    public void setDiscos(ArrayList<Disco> discos) {
        this.discos = discos;
    }

  
    
    
    
    
    
    
    
}
