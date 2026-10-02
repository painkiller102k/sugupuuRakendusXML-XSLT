<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt"
    exclude-result-prefixes="msxsl">
	<xsl:output method="xml" indent="yes"/>
	
	<xsl:template match="/">

		<strong>Kõik suunad: </strong>
		<h1>
		<xsl:for-each select="Reisid/Reis">
			<xsl:apply-templates select="Sihtkoht/Riik"/>,
		</xsl:for-each>
		</h1>

		<ul>
			<xsl:for-each select="Reisid/Reis">
				<li>
					<xsl:attribute name="style">background-color: yellow;</xsl:attribute>
					<xsl:value-of select="concat(Sihtkoht/Linn, ', ', Sihtkoht/Riik, ', ', Transport/Linn, ', ', Transport/Lennujaam, ', ', Majutus/Hotell, ', ', Majutus/Hind, ' €')"/>
				</li>
			</xsl:for-each>
		</ul>

	</xsl:template>

</xsl:stylesheet>