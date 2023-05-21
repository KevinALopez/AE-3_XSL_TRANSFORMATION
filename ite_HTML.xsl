<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html lang="en">
            <head>
                <meta charset="UTF-8"/>
                <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <title>Instituto Tecnológico Edix</title>
                <link rel="stylesheet" href="ite.css"/>
            </head>
            <body>
                <header class="felx-center-column">
                    <h1>
                        <xsl:value-of select="//@nombre"/>
                    </h1>
                    <h2>
                        <xsl:value-of select="//empresa"/>
                    </h2>
                </header>
                <div class="prof-container felx-center-column">
                    <h4>Profesores:</h4>
                    <ul>
                        <xsl:for-each select="/ite/profesores/profesor">
                            <li>
                                <xsl:value-of select="nombre"/>
                            </li>
                        </xsl:for-each>
                    </ul>
                </div>
                <div class="felx-center-column margin-top-30">
                    <h4>Encargados</h4>
                    <table>
                        <tr>
                            <th>Posicion</th>
                            <th>Nombre</th>
                            <th>Despacho</th>
                        </tr>
                        <tr>
                            <td>Director</td>
                            <td>
                                <xsl:value-of select="/ite/director/nombre"/>
                            </td>
                            <td>
                                <xsl:value-of select="/ite/director/despacho"/>
                            </td>
                        </tr>
                        <tr>
                            <td>Jefe Estudio</td>
                            <td>
                                <xsl:value-of select="/ite/jefe_estudios/nombre"/>
                            </td>
                            <td>
                                <xsl:value-of select="/ite/jefe_estudios/despacho"/>
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="felx-center-column margin-top-30">
                    <h4>Ciclos</h4>
                    <table>
                        <tr>
                            <th>Nombre</th>
                            <th>Grado</th>
                            <th>Decreto Titulo Año</th>
                        </tr>
                        <xsl:for-each select="/ite/ciclos/ciclo">
                            <tr>
                                <td>
                                    <xsl:value-of select="nombre"/>
                                </td>
                                <td>
                                    <xsl:value-of select="grado"/>
                                </td>
                                <td>
                                    <xsl:value-of select="decretoTitulo/@año"/>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </div>
                <div class="felx-center-column margin-top-30">
                    <h4>Formulario de Contacto</h4>
                    <form class="felx-center-column">
                        <label>
                            <p>Nombre:</p>
                            <input type="text" placeholder="Escribe aqui..."/>
                        </label>
                        <label>
                            <p>Apellidos:</p>
                            <input type="text" placeholder="Escribe aqui..."/>
                        </label>
                        <label>
                            <p>Email:</p>
                            <input type="text" placeholder="Escribe aqui..."/>
                        </label>
                        <label>
                            <p>Consulta:</p>
                            <textarea placeholder="Escribe aqui..." rows="10" cols="50"/>
                        </label>
                        <input type="submit" value="Send"/>
                    </form>
                </div>
                <footer>
                    <h4 class="tel-web felx-center-column margin-top-30">
                        <span>Pagina Web: <a href="https://institutotecnologico.edix.com">
                            <xsl:value-of select="//@web"/>
                        </a>
                    </span>
                    <span>Telefono: <a href="tel:+34917873991">
                        <xsl:value-of select="/ite/telefono"/>
                    </a>
                </span>
            </h4>
        </footer>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>