<%-- 
    Document   : alterar-banda
    Created on : 10/09/2019, 16:44:13
    Author     : ernandes
--%>
<%@page import="br.com.fatecpg.music.Artista"%>
<%@page import="br.com.fatecpg.music.Db"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>Alterar - Banda</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf"%>
         <%
            int i = Integer.parseInt(request.getParameter("i"));
            Artista c = Db.getArtistas().get(i);
            if (request.getParameter("alterar") != null) {
                String nome = request.getParameter("nome");
             
                c.setNome(nome);
                Db.getArtistas().set(i, c);
                response.sendRedirect("lista-banda.jsp");
            } else if (request.getParameter("cancelar") != null) {

                response.sendRedirect("lista-banda.jsp?codigoBanda=" + i);

            }
        %>

        
         <form>
                
                    <h2>Alterar Banda</h2>
                    <input type="hidden" name="i" value="<%=i%>"/>
                    <div>
                        <label>Nome:</label>
                        <input type="text" name="nome" class="form-control" value="<%=c.getNome()%>"/>
                    
                    </div>

                    <input type="submit" name="alterar" class="btn btn-primary" value="Alterar"/>
                    <input type="submit" name="cancelar" value="Cancelar" class="btn btn-primary"/>
            </form>
          
    </body>
</html>
