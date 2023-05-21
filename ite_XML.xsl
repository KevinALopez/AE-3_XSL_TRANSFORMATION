<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <ite>
            <xsl:attribute name="empresa">
                <xsl:value-of select="ite/empresa"/>
            </xsl:attribute>

            <xsl:attribute name="telefono">
                <xsl:value-of select="ite/telefono"/>
            </xsl:attribute>

            <nombre>
                <xsl:value-of select="ite/@nombre"/>
            </nombre>

            <web>
                <xsl:value-of select="ite/@web"/>
            </web>

            <xsl:for-each select="/ite/profesores/profesor">
                <profesor>
                    <xsl:attribute name="id">
                        <xsl:value-of select="id"/>
                    </xsl:attribute>
                    <xsl:attribute name="nombre">
                        <xsl:value-of select="nombre"/>
                    </xsl:attribute>
                </profesor>
            </xsl:for-each>

            <director>
                <xsl:attribute name="nombre">
                    <xsl:value-of select="ite/director/nombre"/>
                </xsl:attribute>
                <xsl:attribute name="despacho">
                    <xsl:value-of select="ite/director/despacho"/>
                </xsl:attribute>
            </director>

            <jefe_estudios>
                <xsl:attribute name="nombre">
                    <xsl:value-of select="ite/jefe_estudios/nombre"/>
                </xsl:attribute>
                <xsl:attribute name="despacho">
                    <xsl:value-of select="ite/jefe_estudios/despacho"/>
                </xsl:attribute>
            </jefe_estudios>

            <xsl:for-each select="/ite/ciclos/ciclo">
                <ciclo>
                    <xsl:attribute name="nombre">
                        <xsl:value-of select="nombre"/>
                    </xsl:attribute>
                    <xsl:attribute name="grado">
                        <xsl:value-of select="grado"/>
                    </xsl:attribute>
                    <id>
                        <xsl:value-of select="@id"/>
                    </id>
                    <decretoTituloAño>
                        <xsl:value-of select="decretoTitulo/@año"/>
                    </decretoTituloAño>
                </ciclo>
            </xsl:for-each>
        </ite>
    </xsl:template>
</xsl:stylesheet>