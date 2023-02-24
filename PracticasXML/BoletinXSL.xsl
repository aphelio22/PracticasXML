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
                <style>
                    table{
                    border-collapse: collapse;
                      
                    border: solid;
                     
                    }
                      
                    table tr th{
                      
                    background-color:black;
                    color:white;
                    padding: 1em;
                    border: solid;
                    border-color: black;
                      
                    }
                      
                      
                    table tr td{
                    padding: 1em;
                    border: solid;
                    }
                    body{
                    display: flex;
                    flex-direction: column;
                    align-items:center;
                    }
                      div{
                       display: flex;
                    flex-direction: row;
                    align-items:center;
                      }
                      div *{
                      padding: 5px;
                      }
                    tr.top td{
                    background-color: yellow;
                    }
                      h1{
                      text-align:center;
                      }
                    
                    tr.suspenso td{
                    background-color: yellow;
                    }
                </style>
            </head>
            <body>
                <xsl:for-each select="/boletin/alumnos/alumno">
                    <div>
                <h1>
                    <xsl:value-of select="nombre"/><br/>
                    <xsl:value-of select="apellido"/>
                </h1>
                    </div>
                    <table>
                        <tr> 
                            <th>Modulo</th>
                            <th>Calificaciones</th>
                        </tr>
                        <xsl:for-each select="modulos/modulo">
                        <tr>
                            <xsl:if test="calificacion &lt; 5">
                                <xsl:attribute name = "class">suspenso</xsl:attribute>
                            </xsl:if>
                            <td><xsl:value-of select="@nombre"/></td>
                            <td><xsl:value-of select="calificacion"/></td>
                        </tr>
                        </xsl:for-each>
                        <tr>
                            <td>Nota Media</td>
                            <td>
                                <xsl:value-of select="sum(modulos/modulo/calificacion) div count(modulos/modulo/calificacion)"/>
                            </td>
                        </tr>
                    </table>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
