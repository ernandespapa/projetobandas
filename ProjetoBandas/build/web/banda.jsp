<%@page import="java.net.URL"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatecpg.projeto4.Db"%>
<%@page import="br.com.fatecpg.projeto4.Banda"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel= "stylesheet" href ="css/style.css">
        
        <title>Cadastro de Bandas</title>
    </head>
    <body>
       <div>                                                                                         
        <%@include file="WEB-INF/jspf/header.jspf"%>
            
                <h4>Cadastro de Bandas</h4>
                <% 
           
                 if (request.getParameter("cadastro") != null) {
                        String nome = request.getParameter("nome");
                        String genero = request.getParameter("genero");
                        String pais = request.getParameter("pais");
                        String ano = request.getParameter("ano");
                        Db.getBanda().add(new Banda(nome, genero, pais, ano));
                        response.sendRedirect(request.getRequestURI());    
                        
                    }else if (request.getParameter("remover") !=null){
                         int i = Integer.parseInt(request.getParameter("index"));
                         Db.getBanda().remove(i);
                         response.sendRedirect(request.getRequestURI());   
                         
                     } else if (request.getParameter("salvar") != null) { 
                        int index = Integer.parseInt(request.getParameter("index"));
                        String nome = request.getParameter("nome");
                        String genero = request.getParameter("genero");
                        String pais = request.getParameter("pais");
                        String ano = request.getParameter("ano");
                        Db.getBanda().set(index, new Banda(nome, genero, pais, ano));
                        response.sendRedirect(request.getRequestURI()); 
                    
                    
                 }
                          
        
                %>
    
        <form >
        <div >
          <label >Nome</label>
          <div >
            <input type="text" name="nome" class="form-control" id="nomeLabel">
          </div>
        </div>
        <div >
          <label >Gênero</label>
          <div >
            <input type="text" name="genero" class="form-control" id="generoLabel">
          </div>
           </div>
            <div >
          <label >País</label>
          <div >
            <input type="text" name="pais" class="form-control" id="generoLabel">
          </div>
           </div>
            <div>
          <label>Ano</label>
          <div >
            <input type="text" name="ano" class="form-control" id="generoLabel">
          </div>
           </div>
        <input class="btn btn-info" name="cadastro" type="submit" value="Cadastrar">
    </form>      
            <div>
            <div>
                <h4>Lista de bandas</h4>
                <table id="tb">
                
                  <tr>
                    <th scope="col">Índice</th>
                    <th scope="col">Nome</th>
                    <th scope="col">Gênero</th>
                    <th scope="col">País</th>
                    <th scope="col">Ano</th>
                  </tr>
                
                <%if(request.getParameter("alterar") == null) {
                    for (int i=0; i<Db.getBanda().size(); i++){%>
                        <%Banda c= Db.getBanda().get(i);%>
                <tr>
                    <td><%=i+1%></td>
                    <td> <%=c.getNome()%>
                    <td><%=c.getGenero()%></td>
                    <td><%=c.getPais()%></td>
                    <td><%=c.getAno()%></td>
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
                    for (int i=0; i<Db.getBanda().size(); i++){
                              Banda c = Db.getBanda().get(i);
                                if(i != Integer.parseInt(request.getParameter("index"))){%>
                                    <!-- Aqui é somente a exibição dos valores, retornando o valor atual do atributo. -->
                                    <tr>
                                        <td><%=i+1%></td>
                                        <td><%=c.getNome()%></td>
                                        <td><%=c.getGenero()%></td>
                                        <td><%=c.getPais()%></td>
                                        <td><%=c.getAno()%></td>
                                     
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
                                        <td><input type="text" class="form-control" name="nome"  value="<%=c.getNome()%>"></td>
                                        <td><input type="text" class="form-control"name="genero" value="<%=c.getGenero()%>"></td>
                                        <td><input type="text" class="form-control"name="pais" value="<%=c.getPais()%>"></td>
                                        <td><input type="text" class="form-control"name="ano" value="<%=c.getAno()%>"></td>
                                        <input type= "hidden" name="index" value= "<%=i%>"/>
                                        <td><input class="btn btn-success" type="submit" value="Salvar" name="salvar"</td>
                                        </form>
                                    </tr>

                                <%}}}%>
            
               
                </table>
            </div>
        </div>
    </div>

<%@include file="WEB-INF/jspf/footer.jspf"%>
</body>
</html>

   