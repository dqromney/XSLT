<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <body>
                <h2>Student Scores for:
                    <xsl:value-of select="StudentScores/College"></xsl:value-of>
                </h2>
                <table border="1">
                    <tr>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Score</th>
                        <th>Grade</th>
                    </tr>
                    <tr>
                        <xsl:for-each select="StudentScores/Student">
                            <xsl:sort select="@id" data-type="number" order="ascending"/>
                            <tr>
                                <td>
                                    <xsl:value-of select="FirstName"></xsl:value-of>
                                </td>
                                <td>
                                    <xsl:value-of select="LastName"></xsl:value-of>
                                </td>
                                <td>
                                    <xsl:value-of select="Score"></xsl:value-of>
                                </td>
                                <td>
                                    <xsl:choose>
                                        <xsl:when test="Score >= 90">
                                            <b>A</b>
                                        </xsl:when>
                                        <xsl:when test="(Score >= 80)">
                                            <b>B</b>
                                        </xsl:when>
                                        <xsl:when test="Score &lt; 80">
                                            <b>C</b>
                                        </xsl:when>
                                    </xsl:choose>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </tr>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>