<%-- 
    Document   : lista-artista
    Created on : 10/10/2019, 16:33:53
    Author     : ernandes
--%>
<%@page import="br.com.fatecpg.music.Artista"%>
<%@page import="br.com.fatecpg.music.Db"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista - Artistas</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf"%>
        <h3>Lista - Artistas</h3>
        <table border="1">

            <tr>
                <th>ID</th>
                <th>Nome</th>
                
                <th>Genero</th>
                <th>Gravadora</th>
                
                <th>Comandos</th>

            </tr>


            <%for (Artista c : Db.getArtistas()) {%>
            
            <%int i = Db.getArtistas().indexOf(c);%>
            <tr class="table-secondary">
                <td><%=i%></td>
                <td><%=c.getNome()%></td>
                
                <td><%=c.getGenero()%></td>
                <td><%=c.getMembros()%></td>
                
                

                <td>
                    <a href="alterar-artista.jsp?i=<%=i%>"><button>Alterar</button></a>
                    <a href="excluir-artista.jsp?i=<%=i%>"><button>Excluir</button></a>
                    <a href="lista-disco.jsp"><button>Listar Disco</button></a>
                </td>
            </tr>
            <%}%>
            
        </tbody>
    </table>
    <a class="btn btn-primary" href="inserir-artista.jsp">Inserir</a>
   
</body>
</html>
