<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 06/10/2015
  Time: 12:13 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>

<head>
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
<div class="creacion">
<g:form controller="persona" action="create">
    <button type="submit" onclick="crear()">Nuevo</button>
</g:form>
</div>
<div class="buscador">

<g:form controller="persona" action="buscar">
    <br><br>
    <button type="submit" name="buscar" onclick="filtrar()">Buscar</button>
    <select name="comboBuscar" id="buscar" onchange="buscar">
        <option value="nombre">Nombre</option>
        <option value="apellidoPaterno">Apellido Paterno</option>
        <option value="apellidoMaterno">Apellido Materno</option>
        <option value="fechaDeNacimiento">Fecha de Nacimiento</option>
    </select>
    <g:textField name="buscar" required="true"/>
    </g:form>
</div>
<br/><br/>
<g:javascript>
            function crear(){
            ${remoteFunction(controller: 'persona', action: 'create')}
    }
</g:javascript>
<g:javascript>
            function filtrar(){
             ${remoteFunction(controller:'persona', action: 'buscar', params:'fecha:+ document.getElement()', update:"tablaDeResultados")}
    }
</g:javascript>
<div id="tablaDeResultados">
    <g:render template="tabla" model="[personas: personas]"/>
</div>

</body>
</html>