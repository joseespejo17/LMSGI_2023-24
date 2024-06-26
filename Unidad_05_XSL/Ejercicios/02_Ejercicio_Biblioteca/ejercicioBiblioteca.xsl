<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:output method="html" encoding="iso-8859-1"/>

  <xsl:template match="/biblioteca">
    <html>
      <head>
        <title>Biblioteca</title>
        <xsl:call-template name="css"/>
      </head>
      <body>
        <xsl:apply-templates/>
      </body>
    </html>
  </xsl:template>
  
  <xsl:template match="libro">
    <h1>Espirituosas</h1>
    <xsl:apply-templates select="bebida">
      <xsl:sort select="@nombre" order="ascending"/>
    </xsl:apply-templates>
  </xsl:template>
  
  
  <xsl:template match="bebida">
    <table border="1">
        <tr>
            <td>
                <p>
                    <xsl:value-of select="@title"/>
                </p>
            </td>
            <td>
                <p>
                    <xsl:value-of select="fechaNacimiento"/>
                </p>
            </td>
        </tr>
        <tr>
            <td>
                <p></p>
            </td>
            <td>
                <p>
                  
                </p>
            </td>
        </tr>
    </table>
    <p style="font-weight: bolder">
      <xsl:value-of select="@nombre"/>
    </p>
  </xsl:template>
  
  <xsl:template name="css">
    <style>
      body{
        background: red;
        color: white;
      }
    </style>
  </xsl:template>
  
  
</xsl:stylesheet>
