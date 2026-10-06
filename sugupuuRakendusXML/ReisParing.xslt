<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt"
    exclude-result-prefixes="msxsl">

	<xsl:output method="html" indent="yes"/>

	<xsl:template match="/">

		<strong>Kõik suunad:</strong>

		<xsl:for-each select="Reisid/Reis[Transport='Lennureis']">
		<xsl:sort select="Hinnang" data-type="number" order="descending"/>

			<h1>
				<xsl:value-of select="Suund/Riik"/>
			</h1>

			<ul>
				<li>
					<xsl:attribute name="style">background-color: yellow;</xsl:attribute>
					Riik: <xsl:value-of select="Suund/Riik"/>
				</li>

				<li>
					<xsl:attribute name="style">background-color: yellow;</xsl:attribute>
					Kestvus: <xsl:value-of select="Suund/Kestvus"/> päeva
				</li>

				<li>
					Transport: <xsl:value-of select="Transport"/>
				</li>

				<li>
					Majutus: <xsl:value-of select="Majutus"/>
				</li>

				<li>
					Ekskursioonid: <xsl:value-of select="Ekskursioonid"/> €
				</li>

				<li>
					Muud kulud: <xsl:value-of select="MuudKulud"/> €
				</li>

				<li>
					Hinnang: <xsl:value-of select="Hinnang"/>/5
				</li>
				
				
				<li>
					Reisihind: <xsl:value-of select="Reisihind"/> €

				<li>
					Kogumaksumus: <xsl:value-of select="Reisihind + Ekskursioonid + MuudKulud"/> € Kogu reisi maksumus
				</li>
					
				</li>
			</ul>

			<xsl:if test="Suund/Kestvus &gt; 7">
				<p>
					<xsl:attribute name="style">background-color: red;</xsl:attribute>
					<strong>Pikk reis > 7 kestvus päeva</strong>
				</p>
			</xsl:if>

		</xsl:for-each>

	</xsl:template>

</xsl:stylesheet>
