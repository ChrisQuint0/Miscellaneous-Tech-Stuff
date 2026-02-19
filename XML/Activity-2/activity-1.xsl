<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8" indent="yes" />
  <xsl:template match="/" >
    <html>
      <head>
        <title>Menu</title>
        <style>
          body {
            font-family: "Arial";
          }

          .heading {
            background-color: teal;
            padding: 10px;
            color: white;
            font-size: 20px;
            
          }

          .subheading {
            background-color: #DCDCDC;
            padding: 25px;
          }

          .name {
            font-weight: bold;
            margin: 5px;
          }

          .desc {
            margin-right: 5px;
          }

          .cal {
            font-style: italic;
          }
        </style>
      </head>
      <body>
        <xsl:for-each select="menu/food-item" >
          <div class="heading">
            <span class="name"> 
              <xsl:value-of select="heading/name" />
            </span>
           
            <xsl:value-of select="heading/price" />
          </div>
          <div class="subheading">
            <span class="desc">
               <xsl:value-of select="subheading/description"/>
            </span>

            <span class="cal">
              <xsl:value-of select="subheading/calories" />
            </span>
          </div>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>