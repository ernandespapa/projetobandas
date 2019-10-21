package br.com.fatecpg.projeto4;

import java.util.ArrayList;


public class Db {
     private static ArrayList<Banda> banda;
     public static ArrayList<Banda> getBanda(){
        if (banda == null){
            banda = new ArrayList<>();
            
        }
        return banda;
    } 
     
     private static ArrayList<Musica> musica;
        public static ArrayList<Musica> getMusica(){
        if (musica == null){
            musica = new ArrayList<>();
          
            
        }
     return musica;
    }
    
    private static ArrayList<Discos> discos;
        public static ArrayList<Discos> getDiscos(){
        if (discos == null){
            discos = new ArrayList<>();
            
        }
     return discos;
    }
     

}
