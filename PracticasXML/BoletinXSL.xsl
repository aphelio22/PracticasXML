<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : BoletinXSL.xsl
    Created on : 22 de febrero de 2023, 10:40
    Author     : JorgeAlarcónNavarro
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <html>
            <head>
                <title>BoletinXSL.xsl</title>
            </head>
            <body>
                <h1>Boletín</h1> 
                <xsl:for-each select="/boletin/alumnos/alumno">
                    <table>
                        <tr> 
                            <th>Nombre</th>
                            <th>Apellido</th>
                            <th>DNI</th>
                        </tr>
                        
                        <tr>
                            <td><xsl:value-of select="nombre"/></td>
                            <td><xsl:value-of select="apellido"/></td>
                        </tr>
                    </table>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
