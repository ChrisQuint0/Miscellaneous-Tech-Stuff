<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8" indent="yes" />
  <xsl:template match="/">
    <html>
      <head>
        <title>Menu</title>
        <style>
          body {
            font-family: "Segoe UI";
          }

          h1 {
            text-align: center;
          }

          p {
            text-align: center;
          }

          table {
            width: 100%;
            border-collapse: collapse;
          }

          

          th {
            color: white;
            background-color: teal;
            padding: 10px;
          }

          td {
            padding: 10px;
          }
        </style>
      </head>
      <body>
        <h1>Menu</h1>
        <p>Christopher A. Quinto | BSIT-3A</p>
        <table border="1">
          <thead>
            <tr>
              <th>Name</th>
              <th>Description</th>
              <th>Price</th>
              <th>Calories</th>
            </tr>
          </thead>
          <tbody>
            <xsl:for-each select="menu/food-item">
              <tr>
                <td>
                  <xsl:value-of select="normalize-space(heading/name)"/>
                </td>
                <td>
                  <xsl:value-of select="normalize-space(subheading/description)" />
                </td>
                <td>
                  <xsl:value-of select="normalize-space(translate(heading/price, '-', ''))" />
                </td>
                <td>
                  <xsl:value-of select="normalize-space(translate(subheading/calories, '()', ''))" />
                </td>
              </tr>
            </xsl:for-each>
          </tbody>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>