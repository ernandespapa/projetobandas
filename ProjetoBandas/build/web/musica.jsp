<%@page import="br.com.fatecpg.projeto4.Discos"%>
<%@page import="java.net.URL"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatecpg.projeto4.Db"%>
<%@page import="br.com.fatecpg.projeto4.Banda"%>
<%@page import="br.com.fatecpg.projeto4.Musica"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel= "stylesheet" href ="css/style.css">
       
        <title>Cadastro de Musicas</title>
    </head>
    <body>
                                                                                                
        <%@include file="WEB-INF/jspf/header.jspf"%>
           
                <h4>Cadastro de Musicas</h4>
                <% 
           

                 if (request.getParameter("cadastro") != null) {
                        String nome = request.getParameter("nome");
                        String ano = request.getParameter("ano");
                        String disco = request.getParameter("banda");
                        Discos b = new Discos(disco, "");
                        Db.getMusica().add(new Musica(nome, ano, b));
                        response.sendRedirect(request.getRequestURI());    
                        
                    }else if (request.getParameter("remover") !=null){
                         int i = Integer.parseInt(request.getParameter("index"));
                         Db.getMusica().remove(i);
                         response.sendRedirect(request.getRequestURI());   
                         
                     } else if (request.getParameter("salvar") != null) { 
                        
                        int index = Integer.parseInt(request.getParameter("index"));
                        String nome = request.getParameter("nome");
                        String ano = request.getParameter("ano");
                        String disco = request.getParameter("banda");
                        Discos b = new Discos(disco, "");
                        Db.getMusica().set(index, new Musica(nome, ano, b));
                        response.sendRedirect(request.getRequestURI()); 
                    
                 }
                          
        
                %>
    
    
        <form >
            <div>
          <label for="nomeLabel" class="col-sm-2 col-form-label">Nome</label>
          <div>
            <input type="text" name="nome" class="form-control" id="nomeLabel" >
          </div>
            </div>            
            <div>
          <label >Ano</label>
          <div>
          
            <input type="text" name="ano" class="form-control" id="generoLabel" >
          </div>
            </div>
            <div>
                    <label >Disco</label>
                    <div>
                        <select name="banda" class="custom-select" required>
                            <option>Selecione um Disco</option>
                            <%for (Discos disco : Db.getDiscos()) {%>
                            <option value="<%=disco.getNome()%>"><%=disco.getNome()%></option>
                            <%}%>
                        </select>
                    </div>
            </div>
             <br/>
                   
                
        <input class="btn btn-info" name="cadastro" type="submit" value="Cadastrar">
    </form>      
            
                <h4>Lista de Músicas</h4>
                <table id="tb">
                
                  <tr>
                    <th scope="col">Índice</th>
                    <th scope="col">Nome</th>
                    <th scope="col">Ano</th>
                    <th scope="col">Disco</th>
                  </tr>
                
                <%if(request.getParameter("alterar") == null) {
                    for (int i=0; i<Db.getMusica().size(); i++){%>
                        <%Musica c= Db.getMusica().get(i);%>
                <tr>
                    <td><%=i+1%></td>
                    <td><%=c.getNome()%></td>
                    <td><%=c.getAno()%></td>
                    <td><%=c.getDisco().getNome()%></td>
                    <td>
                        <form>
                            <input type="hidden" name="index" value="<%=i%>"/>
                            <input class="btn btn-danger"  type="submit" name="remover" value="Excluir"/>
                        </form>
                        </td>
                        <td>
                        <form>
                            <input type="hidden" name="index" value="<%=i%>"/>
                            <input class="btn btn-info" type="submit" name="alterar" value="Alterar"/>
                        </form>
                        </td>
                        </tr>

                <%}} 
                else {
                    for (int i=0; i<Db.getMusica().size(); i++){
                              Musica c = Db.getMusica().get(i);
                              //Discos d = Db.getDiscos().get(i);
                                if(i != Integer.parseInt(request.getParameter("index"))){%>
                                    <!-- Aqui é somente a exibição dos valores, retornando o valor atual do atributo. -->
                                    <tr>
                                        <td><%=i+1%></td>
                                        <td><%=c.getNome()%></td>
                                        <td><%=c.getAno()%></td>
                                        <td><%=c.getDisco().getNome()%></td>
                                            
                                    <td>
                                        <form>
                                            <input type="hidden" name="index" value="<%=i%>"/>
                                            <input class="btn btn-danger" type="submit" name="remover" value="Excluir"/>
                                        </form>
                                    </td>
                                    <td>
                                        <form>
                                            <input type="hidden" name="index" value="<%=i%>"/>
                                            <input class="btn btn-info" type="submit" name="alterar" value="Alterar"/>
                                        </form>
                                    </td>
                                    </tr>
                                    <%}else {%>

                                    <!-- Form do 'alterar' -->
                                    <tr>
                                        <form>
                                        <td><%=i+1%></td>
                                        <td><input class="form-control" type="text" name="nome"  value="<%=c.getNome()%>"></td>
                                        <td><input class="form-control" type="text" name="ano" value="<%=c.getAno()%>"></td>
                                 
                                        <td>    
                                            <select name="banda" class="custom-select" required>
                                                <option selected value="-1">Selecione um Disco</option>
                                                <%for (Discos disco : Db.getDiscos()){ 
                                                       if (disco.getNome().equals(c.getDisco().getNome())){%>
                                                           <option selected="selected" value="<%=disco.getNome()%>"><%=disco.getNome()%></option>
                                                       <%}else{%>
                                                            <option value="<%=disco.getNome()%>"><%=disco.getNome()%></option>
                                                                
                                                       <%}%>
                                          
                                                <%}%>
                                            </select>
                                        </td>
           
                                         
                                        
                                        <input type="hidden" name="index" value="<%=i%>"/>
                                        <td><input class="btn btn-success" type="submit" value="Salvar" name="salvar"</td>
                                        </form>
                                    </tr>

                                <%}}}%>
            
                </tbody>
                </table>
       

<%@include file="WEB-INF/jspf/footer.jspf"%>
</body>
</html>

   