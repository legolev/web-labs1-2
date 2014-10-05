<?xml version="1.0" encoding="utf-8"?>
<!--
	- XSLT is a template based language to transform Xml documents
	It uses XPath to select specific nodes 
	for processing.
	
	- A XSLT file is a well formed Xml document
-->

<!-- every StyleSheet starts with this tag -->
<xsl:stylesheet
      xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
      version="1.0">

  <!-- indicates what our output type is going to be -->
  <xsl:output method="html" />

  <!-- 
		Main template to kick off processing our Sample.xml
		From here on we use a simple XPath selection query to 
		get to our data.
	-->
  <xsl:template match="/">

    <html>

      <head>

        <title>
          Welcome to <xsl:value-of select="/company/name"/>
        </title>

        <style>
          body,td {font-family:Tahoma,Arial; font-size:9pt;}
        </style>

      </head>

      <body>
        <h2>
          Welcome to <xsl:value-of select="/company/name"/>
        </h2>
        <p/>
        <b>Our contact details:</b>
        <br/>
        <br/>
        <xsl:value-of select="/company/name"/>
        <br/>
        <xsl:value-of select="/company/address1"/>
        <br/>
        <xsl:value-of select="/company/address2"/>
        <br/>
        <xsl:value-of select="/company/city"/>
        <br/>
        <xsl:value-of select="/company/country"/>
      </body>

    </html>

  </xsl:template>

</xsl:stylesheet>
