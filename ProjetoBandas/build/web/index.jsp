<%@page import="br.com.fatecpg.projeto4.Musica"%>
<%@page import="br.com.fatecpg.projeto4.Db"%>
<%@page import="br.com.fatecpg.projeto4.Banda"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel= "stylesheet" href ="css/style.css">
       
        <title>Cadastro de Músicas, bandas e discos.</title>
    </head>
    <body>
       
            <%@include file="WEB-INF/jspf/header.jspf"%>
        
            <div class="card">
                <h3>Quantidade Bandas : <%=Db.getBanda().size()%></h3>
                <h3>Quantidade Discos : <%=Db.getDiscos().size()%></h3>
                
                <h3>Quantidade Músicas : <%=Db.getMusica().size()%></h3>
                    
            </div>  
        
    

    <%@include file="WEB-INF/jspf/footer.jspf"%>
    </body>
</html>
