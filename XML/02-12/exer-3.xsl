<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet encoding="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
  <xsl:output method="html" encoding="UTF-8" indent="yes" />
  <xsl:template match="/">
    <html>
      <head>
        <title>Survey</title>
        <style>
          h3 {
            color: #4cb8e8;
          }

          table {
            border-collapse: collapse;
            width: 100%;
          }

          th, td{
            padding: 15px;
          }

          th {
            background-color: #7e967e;
          }
        </style>
      </head>
      <body style="font-family: Arial;">
        <h1 style="color: red;">Sanitary Conditions of Workshops and Factories in New York City</h1>
        
        <h3>Table 1: Yes or No Questions</h3>
        <table border="1">
          <thead>
            <tr>
              <th>Number</th>
              <th>Question</th>
              <th>Yes</th>
              <th>Yes, but fined</th>
              <th>No</th>
              <th>Blank</th>
              <th>Total Responses</th>
            </tr>
          </thead>
          <tbody>
            <xsl:for-each select="survey/table1/question">
              <tr>
                <td>
                  <xsl:value-of select="@number" />
                </td>
                <td>
                  <xsl:value-of select="actual-question" />
                </td>
                <td>
                  <xsl:value-of select="yes" />
                </td>
                <td>
                  <xsl:value-of select="yes-fined" />
                </td>
                <td>
                  <xsl:value-of select="no" />
                </td>
                <td>
                  <xsl:value-of select="blank" />
                </td>
                <td>
                  <xsl:value-of select="total" />
                </td>
              </tr>
            </xsl:for-each>
          </tbody>
        </table>
        
        <h3>Table 2: Yes or No: Sources of Offensive Odors</h3>
        <table border="1">
          <thead>
            <tr>
              <th>Question</th>
              <th>Water-Closet</th>
              <th>Other Sources</th>
              <th>Total Responses</th>
            </tr>
          </thead>
          <tbody>
            <xsl:for-each select="survey/table2/question">
              <tr>
                <td>
                  <xsl:value-of select="actual-question" />
                </td>
                <td>
                  <xsl:value-of select="water-closet" />
                </td>
                <td>
                  <xsl:value-of select="other-sources" />
                </td>
                <td>
                  <xsl:value-of select="total-responses" />
                </td>
              </tr>
            </xsl:for-each>
          </tbody>
        </table>
        
        <h3>Table 3: Standing or Sitting at Work</h3>
        <table border="1">
          <thead>
            <tr>
              <th>Question</th>
              <th>Sit</th>
              <th>Stand</th>
              <th>Optional</th>
              <th>Blank</th>
              <th>Total Responses</th>
            </tr>
          </thead>
          <tbody>
            <xsl:for-each select="survey/table3/question">
              <tr>
                <td>
                  <xsl:value-of select="actual-question" />
                </td>
                <td>
                  <xsl:value-of select="sit" />
                </td>
                <td>
                  <xsl:value-of select="stand" />
                </td>
                <td>
                  <xsl:value-of select="optional" />
                </td>
                <td>
                  <xsl:value-of select="blank" />
                </td>
                <td>
                  <xsl:value-of select="total-responses" />
                </td>
              </tr>
            </xsl:for-each>
          </tbody>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>