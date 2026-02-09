<?xml version ="1.0" encoding ="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl = "http://www.w3.org/1999/XSL/Transform">
  <xsl:template match ="/">
    <html>
      <body>
        <h2> Employees </h2>
        <xsl:apply-templates select = "class/employee" />
      </body>
    </html>
  </xsl:template>
  <xsl:template match = "class/employee">
    <xsl:apply-templates select = "@id" />
    <xsl:apply-templates select = "firstname" />
    <xsl:apply-templates select = "lastname" />
    <xsl:apply-templates select = "nickname" />
    <xsl:apply-templates select = "salary" />
    <br />
  </xsl:template>
  <xsl:template match = "@id">
    <span style = "font-size : 25px;">
      <xsl:value-of select = "." />
    </span>
    <br />
  </xsl:template>
  <xsl:template match = "firstname">
    First Name: <span style="color:brown;">
    <xsl:value-of select = "." />
    </span>
    <br />
  </xsl:template>
  <xsl:template match = "lastname">
    Last Name: <span style="color:green;">
    <xsl:value-of select = "." />
    </span>
    <br />
  </xsl:template>
  <xsl:template match = "nickname">
    Nick Name: <span style="color:blue;">
    <xsl:value-of select = "." />
    </span>
    <br />
  </xsl:template>
  <xsl:template match = "salary">
    Marks: <span style="color:red;">
    <xsl:value-of select = "." />
    </span>
    <br />
  </xsl:template>
</xsl:stylesheet>
    
  