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
public class Db {
   static ArrayList<Artista> artistas;
   public static ArrayList<Artista> getArtistas(){
       if (artistas == null){
           artistas = new ArrayList<>();
          
                  
                   }
       return artistas;
   }
   
   public static ArrayList<Disco> getDiscos(){
       ArrayList<Disco> discos = new ArrayList<>();
       for (Artista artista: getArtistas()){
           for (Disco disco: artista.getDiscos()){
               discos.add(disco);
           }                    
       }
       
       return discos;
   }
   
   public static ArrayList<Musica> getMusicas(){
       ArrayList<Musica> musicas = new ArrayList<>();
       for (Artista artista: getArtistas()){
           for (Disco disco: artista.getDiscos()){
               for(Musica musica: disco.getMusicas()){
               musicas.add(musica);
           }         
         }
       }
       return musicas;
   }
   public static Artista getArtista(Disco discoProcurado){
       for (Artista artista: getArtistas()){
           for (Disco disco: artista.getDiscos()){
               if(disco.equals(discoProcurado)){
                   return artista;
               }
           }
       }
       return null;
   }
   

}

