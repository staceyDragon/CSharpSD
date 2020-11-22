<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <body>
              <h4>
                <xsl:value-of select="gradeReport/date"/>
              </h4>
              <h3>
                <xsl:value-of select="gradeReport/subject"/>
              </h3>
                <table border="1">
                    <tr bgcolor="#a5abfa">
                        <th align="left">ID</th>
                        <th align="left">Student</th>
                        <th align="left">Grade</th>
                    </tr>
                    <xsl:for-each select="gradeReport/gradeList/gradeRecord">
                        <tr>
                            <td>
                                <xsl:value-of select="@id"/>
                            </td>
                            <td>
                                <xsl:value-of select="student"/>
                            </td>
                            <td>
                                <xsl:value-of select="grade"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>