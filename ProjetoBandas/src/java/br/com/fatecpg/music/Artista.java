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
    String nome;
    
    
    ArrayList<Disco> discos = new ArrayList<>();

    public Artista(String nome) {
        this.nome = nome;
       
        
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

  

 

    public ArrayList<Disco> getDiscos() {
        return discos;
    }

    public void setDiscos(ArrayList<Disco> discos) {
        this.discos = discos;
    }
    
    
    
    
    
    
    
}
