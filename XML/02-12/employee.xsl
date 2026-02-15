<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <body>
        <h2>Employee</h2>
        <table border="1">
          <tr bgcolor="pink">
            <th>ID</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Nick Name</th>
            <th>Salary</th>
            <th>Status</th>
          </tr>
          <xsl:for-each select="class/employee">
            <xsl:sort select="lastname" />
            <xsl:if test = "normalize-space(firstname) = ''">
              <xsl:message terminate="no">
                A first name field is empty.
              </xsl:message>
            </xsl:if>
            <tr>
              <td><xsl:value-of select="@id"/></td>
              <td><xsl:value-of select="firstname"/></td>
              <td><xsl:value-of select="lastname"/></td>
              <td><xsl:value-of select="nickname"/></td>
              <td><xsl:value-of select="salary"/></td>

              <td>
                <xsl:choose>
                  <xsl:when test = "salary &gt; 30000">
                    High
                  </xsl:when>
                  <xsl:when test = "salary &lt; 30000">
                    Medium
                  </xsl:when>
                  <xsl:otherwise>
                    Low
                  </xsl:otherwise>
                </xsl:choose>
              </td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>