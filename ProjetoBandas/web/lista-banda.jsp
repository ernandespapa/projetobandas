<%-- 
    Document   : lista-banda
    Created on : 10/09/2019, 16:33:53
    Author     : ernandes
--%>
<%@page import="br.com.fatecpg.music.Artista"%>
<%@page import="br.com.fatecpg.music.Db"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista - Bandas</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf"%>
        <h3>Lista - Bandas</h3>
        <table border="1">

            <tr>
                <th>ID</th>
                <th>Nome</th>
                <th>Comandos</th>

            </tr>


            <%for (Artista c : Db.getArtistas()) {%>
            <%if (c.getNome() != null && c.getNome() != "") {%>
            <%int i = Db.getArtistas().indexOf(c);%>
            <tr class="table-secondary">
                <td><%=i%></td>
                <td><%=c.getNome()%></td>

                <td>
                    <a href="alterar-banda.jsp?i=<%=i%>"><button>Alterar</button></a>
                    <a href="excluir-banda.jsp?i=<%=i%>"><button>Excluir</button></a>
                    <a href="lista-album.jsp?codigoBanda=<%=i%>"><button>Listar Album</button></a>
                </td>
            </tr>
            <%}%>
            <%}%>
        </tbody>
    </table>
    <a class="btn btn-primary" href="inserir-banda.jsp">Inserir</a>
   
</body>
</html>
