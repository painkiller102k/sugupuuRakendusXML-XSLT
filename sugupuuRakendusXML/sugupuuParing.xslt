<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">

	<xsl:output method="xml" indent="yes"/>

	<xsl:template match="/">
		<strong>Kõik sugupuu nimed</strong>
		<ul>
			<xsl:for-each select="//inimene">
				<li>
					<xsl:value-of select="concat(nimi, ' — süniaasta: ', @synd, ', vanus: ', 2026 - @synd)"/>
				</li>
			</xsl:for-each>
		</ul>
		<ol>
			<li>Esimene täht kõikidest nimedest
			<br></br>
			<xsl:for-each select="//inimene">
				<xsl:value-of select="substring(nimi, 1,1)"/>, 
			</xsl:for-each>
			</li>
			<li>
				Näita nimed ja tähtede kogused:
				<xsl:for-each select="//inimene">
					<xsl:value-of select="concat(nimi, ': ', string-length(nimi))"/>,
				</xsl:for-each>
			</li>

		</ol>
		<table border="1">
			<tr>
				<th>Nimi</th>
				<th>Aasta</th>
				<th>Vanus</th>
				<th>1. täht</th>
				<th>Viimane täht</th>
				<th>Tähtede arv</th>
			</tr>
			<tr>
				<td><xsl:for-each</td>
				<td>1991</td>
				<td>25</td>
				<td>M</td>
				<td>K</td>
				<td>4</td>
			</tr>
		</table>

	</xsl:template>

</xsl:stylesheet>