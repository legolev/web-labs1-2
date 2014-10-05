<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
<xsl:template match="@*|node()">
  <xsl:copy>
    <xsl:apply-templates select="@*|node()"/>
  </xsl:copy>
</xsl:template>
<xsl:template match="person">
  <human>
    <xsl:apply-templates select="@*|node()"/>
  </human>
</xsl:template>

<xsl:template match="/">
  <html>
  <body>
    <h2>Список людей с адресами</h2>
    <table border="0.5">
      <tr bgcolor="#FFFF99">
        <th>Имя</th>
        <th>Фамилия</th>
		<th>Индекс</th>
		<th>Город</th>
		<th>Район</th>
      </tr>
      <xsl:for-each select="persons/person">
      <tr>
        <td><xsl:value-of select="name" /></td>
        <td><xsl:value-of select="surname" /></td>
		<td><xsl:value-of select="address/@index" /></td>
        <td><xsl:value-of select="address/city/@name" /></td>
		<td><xsl:value-of select="address/city/districtNumber/districtName" /></td>
      </tr>
      </xsl:for-each>
    </table>
	<hr />
	<xsl:copy>
	<xsl:apply-templates select="@*|node()" />
	</xsl:copy>	

  </body>
  </html>
  
</xsl:template>
  	
</xsl:stylesheet>