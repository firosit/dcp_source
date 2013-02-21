<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html"/>
  <xsl:template match="questions">
    <html>
      <head>
        <title></title>
        <link rel="stylesheet" type="text/css" href="style.css"/>
      </head>
      <body>
        <form method="post">
          <xsl:for-each select="question">
            <xsl:variable name="questionID" select="@id" />
            <div class="question">
              <!--display question-->
              <div class="text">
                <xsl:value-of select="text"/>
              </div>
              <div class="answers">
                <xsl:for-each select="answers/answer">
                  <xsl:variable name="answerID" select="@id" />
                  <!--display answer choice-->
                  <span class="choice">
                    <input type="radio" name="{$questionID}" value="{$answerID}"  />
                    <xsl:value-of select="string()"/>
                  </span>
                  <br />
                </xsl:for-each>
              </div>
            </div>
            <!--show seperator only if not the last quesiton-->
            <xsl:if test="position()!=last()">
              <hr />  
            </xsl:if>
          </xsl:for-each>
          <br />
          <input name="btnSubmit" type="submit" value="Submit my answers" />
        </form>
      </body>
    </html>
  </xsl:template>

    <!--xsl:output method="xml" indent="yes"/>
    <xsl:template match="@* | node()">
        <xsl:copy>
            <xsl:apply-templates select="@* | node()"/>
        </xsl:copy>
    </xsl:template-->
</xsl:stylesheet>
