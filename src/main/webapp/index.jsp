<%--
  Created by IntelliJ IDEA.
  User: Joel
  Date: 29/5/2024
  Time: 22:54
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %> <!-- Configuración de la página JSP para usar UTF-8 -->

<html>
<head>
    <title>Calculadora de Movimiento Rectilíneo Uniformemente Acelerado</title> <!-- Título de la página -->
    <style>
        body {
            font-family: Arial, sans-serif; /* Fuente principal de la página */
            background-color: #f4f4f4; /* Color de fondo del cuerpo */
            margin: 0; /* Sin margen */
            padding: 0; /* Sin padding */
            display: flex; /* Usar flexbox para centrar el contenido */
            justify-content: center; /* Centrar horizontalmente */
            align-items: center; /* Centrar verticalmente */
            height: 100vh; /* Altura de la vista completa */
        }
        h1 {
            color: #333; /* Color del título */
        }
        form {
            background-color: #fff; /* Color de fondo del formulario */
            padding: 20px; /* Padding dentro del formulario */
            border-radius: 8px; /* Bordes redondeados */
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); /* Sombra alrededor del formulario */
            width: 300px; /* Ancho del formulario */
        }
        label {
            display: block; /* Mostrar como bloque */
            margin-bottom: 10px; /* Margen inferior */
            font-weight: bold; /* Negrita */
            color: #555; /* Color del texto */
        }
        input[type="number"],
        select {
            width: 100%; /* Ancho completo */
            padding: 10px; /* Padding dentro del campo de entrada */
            margin-bottom: 20px; /* Margen inferior */
            border: 1px solid #ccc; /* Borde */
            border-radius: 4px; /* Bordes redondeados */
            box-sizing: border-box; /* Incluir borde y padding en el ancho total */
        }
        input[type="submit"] {
            background-color: #28a745; /* Color de fondo del botón de envío */
            color: white; /* Color del texto del botón de envío */
            border: none; /* Sin borde */
            padding: 10px 20px; /* Padding dentro del botón */
            text-align: center; /* Texto centrado */
            text-decoration: none; /* Sin subrayado */
            display: inline-block; /* Mostrar como bloque en línea */
            font-size: 16px; /* Tamaño de fuente */
            margin-top: 10px; /* Margen superior */
            cursor: pointer; /* Cursor al pasar el ratón */
            border-radius: 4px; /* Bordes redondeados */
            width: 100%; /* Ancho completo */
        }
        input[type="submit"]:hover {
            background-color: #218838; /* Color de fondo al pasar el ratón */
        }
    </style>
</head>
<body>

<form action="calculo.jsp" method="post"> <!-- Formulario para enviar los datos a 'calculo.jsp' -->
    <label for="calculo">Calcular:</label> <!-- Etiqueta para el menú desplegable -->
    <select id="calculo" name="calculo"> <!-- Menú desplegable para seleccionar el tipo de cálculo -->
        <option value="vf">Velocidad Final (vf)</option>
        <option value="vi">Velocidad Inicial (vi)</option>
        <option value="t">Tiempo (t)</option>
        <option value="a">Aceleración (a)</option>
    </select>
    <br />
    <label for="vi">Velocidad Inicial (vi):</label> <!-- Etiqueta para el campo de entrada de Velocidad Inicial -->
    <input type="number" step="any" name="vi" id="vi"> <!-- Campo de entrada para la Velocidad Inicial -->
    <br />
    <label for="vf">Velocidad Final (vf):</label> <!-- Etiqueta para el campo de entrada de Velocidad Final -->
    <input type="number" step="any" name="vf" id="vf"> <!-- Campo de entrada para la Velocidad Final -->
    <br />
    <label for="tiempo">Tiempo en segundos (t):</label> <!-- Etiqueta para el campo de entrada de Tiempo -->
    <input type="number" step="any" name="tiempo" id="tiempo"> <!-- Campo de entrada para el Tiempo -->
    <br />
    <label for="aceleracion">Aceleración (a):</label> <!-- Etiqueta para el campo de entrada de Aceleración -->
    <input type="number" step="any" name="aceleracion" id="aceleracion"> <!-- Campo de entrada para la Aceleración -->
    <br />
    <input type="submit" value="Calcular"> <!-- Botón de envío del formulario -->
</form>
</body>
</html>

