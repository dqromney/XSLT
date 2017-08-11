<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <body>
                <h1>Order Details:</h1>
                <h2>Order Id:<xsl:value-of select="/Order/@id"></xsl:value-of>
                </h2>
                <h3>Customer Name:<xsl:value-of select="/Order/CustomerName"></xsl:value-of>
                </h3>
                <xsl:apply-templates/>
                <br/><br/>
                <b>Total Number of Items in the order: <xsl:value-of select="count(/Order/Item)"/></b>
                <br/><br/>
                <b>Total Price of the  order: <xsl:value-of select="sum(/Order/Item/Price)"/></b>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="Item">
        <br/>Item Name: <xsl:value-of select="translate(ItemName, 'abcdefghijklmnopqrstuvxyz', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ')"/>
        <br/>Price: <xsl:value-of select="round(Price)"/>
        <xsl:if test="Price &gt; 100">
            <b> (Free Shipping)</b>
        </xsl:if>
        <xsl:if test="Price &lt; 100">
            <b> (Should be purchased with an item whose price is greater than $100)</b>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>