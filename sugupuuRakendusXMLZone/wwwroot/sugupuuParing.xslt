<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt"
    exclude-result-prefixes="msxsl">

	<xsl:output method="html" indent="yes"/>
	
	<!--Parameetri määramine-->
	<xsl:param name="otsing">ll</xsl:param>
	<xsl:param name="pikkus">5</xsl:param>

	<xsl:template match="/">

		<strong>Kõik sugupuu nimed</strong>

		<ul>
			<xsl:for-each select="//inimene">
				<li>
					<xsl:value-of select="nimi"/>
					— sünniaasta:
					<xsl:value-of select="@synd"/>
					, vanus:
					<xsl:value-of select="2026 - @synd"/>
				</li>
			</xsl:for-each>
		</ul>

		<ol>

			<li>
				1. täht kõikidest nimedest:

				<xsl:for-each select="//inimene">
					<xsl:value-of select="substring(nimi, 1, 1)"/>,
				</xsl:for-each>
			</li>

			<li>
				Näita nimed ja tähtede kogused:

				<xsl:for-each select="//inimene">
					<xsl:value-of select="concat(nimi, ': ', string-length(nimi), ' tähte')"/>,
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

			<xsl:for-each select="//inimene">

				<tr>

					<td>
						<xsl:value-of select="nimi"/>
					</td>

					<td>
						<xsl:value-of select="@synd"/>
					</td>

					<td>
						<xsl:value-of select="2026 - @synd"/>
					</td>

					<td>
						<xsl:value-of select="substring(nimi, 1, 1)"/>
					</td>

					<td>
						<xsl:value-of select="substring(nimi, string-length(nimi), 1)"/>
					</td>

					<td>
						<xsl:value-of select="string-length(nimi)"/>
					</td>

				</tr>

			</xsl:for-each>

		</table>

		<strong>Näita kõik nimed mis algavad 'C' tähega : </strong>
		<xsl:for-each select ="//inimene[starts-with(nimi, 'C')]">
		<br></br>
			<xsl:value-of select ="nimi"/>
		</xsl:for-each>

		<br>
			<br>
				
			</br>
		</br>
		<strong>Parameetrite kasutamine</strong>
		Otsime nimed mis sissaldavad pareemt otsing=
		<xsl:value-of select="$otsing"/>
		<br></br>
		<xsl:for-each select="//inimene[contains(nimi, $otsing)]">
			<xsl:value-of select="nimi"/>,
		</xsl:for-each>

		<br>
			
		</br>
		Otsime nimes mis pikkusega = 
	<xsl:value-of select="pikkus"/>ja rohkem
	<br></br>
	<xsl:for-each select="//inimene[string-length(nimi)>=$pikkus]">
		<xsl:value-of select="concat(nimi, ' - pikkus : ',string-length(nimi))"/>,
	</xsl:for-each>
		<br>
			
		</br>
		<br>
			
		</br>

		<strong>Kasutame if lause</strong>
		Iga inimese kohta näitame mitmendal oma vanema sünniaastal ta sündis
		<ul>
			<xsl:for-each select="//inimene">
				<li>
					<xsl:value-of select="nimi"/>
					<xsl:if test="../..">
						- vanema vanus oli -
						<xsl:value-of select="@synd - ../../@synd"/>
						aastat vana
					</xsl:if>
				</li>
			</xsl:for-each>
		</ul>



	</xsl:template>

</xsl:stylesheet>