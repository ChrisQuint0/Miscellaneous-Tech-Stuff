<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl "http://www.w3.org/1999/XSL/Transform">
  <xsl:template match = "/">
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
      </body>
    </html>
  <xsl:template>
  <xsl:for-each select = "class/employee">
    <tr>
    <td><xsl:value-of select = @id
  </xsl:template>