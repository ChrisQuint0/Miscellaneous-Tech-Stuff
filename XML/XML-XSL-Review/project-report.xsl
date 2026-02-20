<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8" indent="yes" />
  <xsl:template match = "/">
    <html>
      <head>
        <title>Project Report</title>
        <style>
          body {
            font-family: "Segoe UI";
          }

          table {
            border-collapse: collapse;
          }

          th, td {
            padding: 15px;
          }

          th {
            color: black;
            background-color: dodgerblue;
          }
        </style>
      </head>
      <body>
        <table border="1">
          <thead>
            <tr>
              <th>ID</th>
              <th>Full Name</th>
              <th>Department</th>
              <th>Project Score</th>
              <th>Attendance</th>
              <th>Performance Level</th>
              <th>Attendance Status</th>
            </tr>
          </thead>
          <tbody>
            <xsl:for-each select="evaluation/employee">
              <xsl:sort select="department" order="ascending" data-type="text" />
              <xsl:sort select="project-score" order="descending" data-type="number" />

              <xsl:if test = "firstname = ''">
                <xsl:message>A First Name field is empty</xsl:message>
              </xsl:if>
              
              <tr>
                <td>
                  <xsl:value-of select="@id" />
                </td>
                <td>
                  <xsl:value-of select="firstname" />
                  <xsl:value-of select="lastname" />
                </td>
                <td>
                  <xsl:value-of select="department" />
                </td>
                <td>
                  <xsl:value-of select="project-score" />
                </td>
                <td>
                  <xsl:value-of select="attendance" />
                </td>
                <!-- Performance Level -->
                <td>
                  <xsl:choose>
                    <xsl:when test = "project-score &gt;= 90">Excellent</xsl:when>
                    <xsl:when test = "project-score &gt;= 75">Good</xsl:when>
                    <xsl:when test = "project-score &gt;= 60">Average</xsl:when>
                    <xsl:otherwise>
                      Poor
                    </xsl:otherwise>
                  </xsl:choose>
                </td>
                <!-- Attendance Status -->
                <td>
                  <xsl:choose>
                    <xsl:when test = "attendance &gt;= 90">
                      Excellent Attendance
                    </xsl:when>
                    <xsl:when test = "attendance &gt;= 75">
                      Satisfactory
                    </xsl:when>
                    <xsl:otherwise>
                      At Risk
                    </xsl:otherwise>
                  </xsl:choose>
                </td>
              </tr>

              <!-- Second Row if Critical Review Required -->
              <xsl:if test = "project-score &lt; 60 and attendance &lt; 75" >
                <tr>
                  <td colspan="7" style="color: red; font-weight: bold; text-align: center">Critical Review Required</td>
                </tr>
              </xsl:if>
            </xsl:for-each>
          </tbody>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>