<%--
  Created by IntelliJ IDEA.
  User: Sintelti
  Date: 07/10/2015
  Time: 10:46 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <script>
        function formulario(f) {
        if (f.nombre.value   == '') {
            alert ('Falta apellido Materno');
            f.nombre.focus();
            return false;
        }
        if (f.apellidoPaterno.value   == '') {
            alert ('Falta apellido Paterno');
            f.apellidoPaterno.focus();
            return false;
        }
        if (f.apellidoMaterno.value   == '') {
            alert ('Falta apellido Materno');
            f.apellidoMaterno.focus();
            return false;
        }
        if (f.fecha.value  == '') {
            alert ('Falta fecha de Nacimiento');
            f.fecha.focus();
            return false;
        }
        return true;
    }

    </script>
    <meta name="layout" content="main"/>
    <title></title>
    <style type="text/css" media="screen">
    #status {
        background-color: #eee;
        border: .2em solid #fff;
        margin: 2em 2em 1em;
        padding: 1em;
        width: 12em;
        float: left;
        -moz-box-shadow: 0px 0px 1.25em #ccc;
        -webkit-box-shadow: 0px 0px 1.25em #ccc;
        box-shadow: 0px 0px 1.25em #ccc;
        -moz-border-radius: 0.6em;
        -webkit-border-radius: 0.6em;
        border-radius: 0.6em;
    }

    .ie6 #status {
        display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
    }

    #status ul {
        font-size: 0.9em;
        list-style-type: none;
        margin-bottom: 0.6em;
        padding: 0;
    }

    #status li {
        line-height: 1.3;
    }

    #status h1 {
        text-transform: uppercase;
        font-size: 1.1em;
        margin: 0 0 0.3em;
    }

    #page-body {
        margin: 2em 1em 1.25em 18em;
    }

    h2 {
        margin-top: 1em;
        margin-bottom: 0.3em;
        font-size: 1em;
    }

    p {
        line-height: 1.5;
        margin: 0.25em 0;
    }

    #controller-list ul {
        list-style-position: inside;
    }

    #controller-list li {
        line-height: 1.3;
        list-style-position: inside;
        margin: 0.25em 0;
    }

    @media screen and (max-width: 480px) {
        #status {
            display: none;
        }

        #page-body {
            margin: 0 1em 1em;
        }

        #page-body h1 {
            margin-top: 0;
        }
    }
    </style>
</head>

<body>
<%--
<g:form controller="persona" action="create">
    <button type="submit" onclick="crear()">Nuevo</button>
</g:form>
    <g:form name="buscarTabla" controller="persona" action="buscar">
    <button type="submit" name="buscar" onclick="filtrar()">Buscar</button><br/><br/>
    <select name="buscarcombo" id="buscar" onchange="buscar">
        <option value="nombre">Nombre</option>
        <option value="apellidoPaterno">Apellido Paterno</option>
        <option value="apellidoMaterno">Apellido Materno</option>
        <option value="fechaDeNacimiento">Fecha de Nacimiento</option>
    </select>
    <br/><br/>
        <g:textField name="buscar" required="true"/>
    Esta no descomentar<%--<input type="text" name="parametroDeBusqueda" id="parametroDeBusqueda" placeholder="Parametro"/>--%>
<%--     </g:form>
        <br/><br/>



    <g:form controller="persona" action="guardar">
    <label>Nombre:</label>
    <g:textField type="text" name="nombre" />
    <br><br>
    <label>Apellido Paterno:</label>
     <g:textField type="text" name="apellidoPaterno"/>
    <br><br>
    <label>Apellido Materno:</label>
    <g:textField type="text" name="apellidoMaterno"/>
    <br><br>
    <label>Fecha de Nacimiento:</label>
    <g:textField type="text" name="fechaDeNacimiento"/><br><br>
    <button type="submit" name="guardar" value="Guardar Datos"/>
    </g:form>

         <%--LOS RENDERS--%>
      <%--<g:render template="/tabla" update="tablaResultados"/>

         <g:javascript>
            function crear(){
            ${remoteFunction(controller: 'persona', action: 'create')}
             }
         </g:javascript>
         <g:javascript>
            function filtrar(){
             ${remoteFunction(controller:'persona', action: 'buscar', params:'fecha:+ document.getElement()', update:"contenido")}
             }
         </g:javascript>
--%>
        <%--TERMINAN RENDER--%>


<g:form controller="persona" action="guardar">
    <label>Nombre:</label>
    <g:textField type="text" name="nombre" />
    <br><br>
    <label>Apellido Paterno:</label>
    <g:textField type="text" name="apellidoPaterno"/>
    <br><br>
    <label>Apellido Materno:</label>
    <g:textField type="text" name="apellidoMaterno"/>
    <br><br>
    <label>Fecha de Nacimiento:</label>
    <g:textField type="text" name="fechaDeNacimiento"/><br><br>
    <button type="submit" name="guardar" value="Guardar Datos"/>
</g:form>

</body>
</html>