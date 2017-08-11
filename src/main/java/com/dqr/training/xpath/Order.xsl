<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <body>
                <h1>Order Information:</h1>
                <xsl:apply-templates select="/Order/Item[@id='3']"/>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="CustomerName">
        <b>
            Customer Name:
            <xsl:value-of select="."/>
        </b>
    </xsl:template>
    <xsl:template match="Item">
        <br/>Order Id:<xsl:value-of select="../@id"/>
        <br/>Item Name:<xsl:value-of select="./ItemName"/>
        <br/>Price:<xsl:value-of select="./Price"/>
    </xsl:template>
</xsl:stylesheet>