<%--
  Created by IntelliJ IDEA.
  User: Joel
  Date: 29/5/2024
  Time: 22:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %> <!-- Configuración de la página JSP para usar UTF-8 -->
<html>
<head>
    <title>Resultado del Cálculo</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; /* Fuente principal de la página */
            background-color: #e6f7ff; /* Color de fondo de la página */
            margin: 0; /* Sin margen */
            padding: 0; /* Sin padding */
            display: flex; /* Usar flexbox para centrar el contenido */
            justify-content: center; /* Centrar horizontalmente */
            align-items: center; /* Centrar verticalmente */
            height: 100vh; /* Altura de la vista completa */
            color: #333; /* Color del texto principal */
        }
        .wrapper {
            background-color: #ffffff; /* Color de fondo del contenedor */
            padding: 40px; /* Padding dentro del contenedor */
            border-radius: 8px; /* Bordes redondeados */
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1); /* Sombra alrededor del contenedor */
            width: 100%; /* Ancho completo */
            max-width: 500px; /* Ancho máximo del contenedor */
            text-align: center; /* Texto centrado */
        }
        h1 {
            color: #2e86de; /* Color del título */
            font-size: 26px; /* Tamaño de fuente del título */
            margin-bottom: 20px; /* Margen inferior del título */
        }
        p {
            font-size: 16px; /* Tamaño de fuente del párrafo */
            color: #555; /* Color del texto del párrafo */
            margin: 20px 0; /* Margen superior e inferior */
        }
        .mensaje {
            font-size: 18px; /* Tamaño de fuente del mensaje */
            font-weight: 600; /* Grosor de la fuente */
            color: #1e3799; /* Color del mensaje */
            margin-top: 30px; /* Margen superior */
        }
        a {
            display: inline-block; /* Elemento en línea como bloque */
            margin-top: 30px; /* Margen superior */
            padding: 12px 30px; /* Padding dentro del enlace */
            background-color: #38ada9; /* Color de fondo del enlace */
            color: white; /* Color del texto del enlace */
            text-decoration: none; /* Sin subrayado */
            border-radius: 6px; /* Bordes redondeados */
            transition: background-color 0.3s; /* Transición suave para el cambio de color de fondo */
        }
        a:hover {
            background-color: #60a3bc; /* Color de fondo al pasar el ratón */
        }
    </style>
</head>
<body>
<div class="wrapper">
    <%
        // Obtener los parámetros del formulario
        String calculo = request.getParameter("calculo"); // Tipo de cálculo a realizar
        String viStr = request.getParameter("vi"); // Velocidad inicial
        String vfStr = request.getParameter("vf"); // Velocidad final
        String tiempoStr = request.getParameter("tiempo"); // Tiempo
        String aceleracionStr = request.getParameter("aceleracion"); // Aceleración

        // Convertir los parámetros a valores numéricos, con valores por defecto si están vacíos
        double vi = (viStr != null && !viStr.isEmpty()) ? Double.parseDouble(viStr) : 0;
        double vf = (vfStr != null && !vfStr.isEmpty()) ? Double.parseDouble(vfStr) : 0;
        double tiempo = (tiempoStr != null && !tiempoStr.isEmpty()) ? Double.parseDouble(tiempoStr) : 0;
        double aceleracion = (aceleracionStr != null && !aceleracionStr.isEmpty()) ? Double.parseDouble(aceleracionStr) : 0;

        double resultado = 0; // Variable para almacenar el resultado del cálculo
        String mensaje = ""; // Mensaje a mostrar al usuario

        // Realizar el cálculo basado en el tipo seleccionado
        switch (calculo) {
            case "vf": // Calcular Velocidad Final
                if (viStr.isEmpty() || tiempoStr.isEmpty() || aceleracionStr.isEmpty()) {
                    mensaje = "Debe ingresar Velocidad Inicial, Tiempo y Aceleración para calcular Velocidad Final."; // Mensaje de error si faltan datos
                } else {
                    resultado = vi + (aceleracion * tiempo); // Fórmula para Velocidad Final
                    mensaje = "La Velocidad Final (vf) es: " + resultado + " m/s"; // Mensaje con el resultado
                }
                break;
            case "vi": // Calcular Velocidad Inicial
                if (vfStr.isEmpty() || tiempoStr.isEmpty() || aceleracionStr.isEmpty()) {
                    mensaje = "Debe ingresar Velocidad Final, Tiempo y Aceleración para calcular Velocidad Inicial."; // Mensaje de error si faltan datos
                } else {
                    resultado = vf - (aceleracion * tiempo); // Fórmula para Velocidad Inicial
                    mensaje = "La Velocidad Inicial (vi) es: " + resultado + " m/s"; // Mensaje con el resultado
                }
                break;
            case "t": // Calcular Tiempo
                if (viStr.isEmpty() || vfStr.isEmpty() || aceleracionStr.isEmpty()) {
                    mensaje = "Debe ingresar Velocidad Inicial, Velocidad Final y Aceleración para calcular el Tiempo."; // Mensaje de error si faltan datos
                } else {
                    resultado = (vf - vi) / aceleracion; // Fórmula para Tiempo
                    mensaje = "El Tiempo (t) es: " + resultado + " segundos"; // Mensaje con el resultado
                }
                break;
            case "a": // Calcular Aceleración
                if (viStr.isEmpty() || vfStr.isEmpty() || tiempoStr.isEmpty()) {
                    mensaje = "Debe ingresar Velocidad Inicial, Velocidad Final y Tiempo para calcular la Aceleración."; // Mensaje de error si faltan datos
                } else {
                    resultado = (vf - vi) / tiempo; // Fórmula para Aceleración
                    mensaje = "La Aceleración (a) es: " + resultado + " m/s²"; // Mensaje con el resultado
                }
                break;
            default:
                mensaje = "Selección inválida."; // Mensaje de error para selección inválida
        }
    %>
    <h1>Resultado del Cálculo</h1> <!-- Título de la página -->
    <p class="mensaje"><%= mensaje %></p> <!-- Mensaje con el resultado del cálculo -->
    <a href="index.jsp">Realizar otro cálculo</a> <!-- Enlace para volver a la página principal -->
</div>
</body>
</html>

