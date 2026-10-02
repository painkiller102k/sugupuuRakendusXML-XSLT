<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="html" encoding="utf-8"/>

	<xsl:template match="/">
		<h2>Kasutame if lauset</h2>
		<p>Iga inimese kohta näitame, kui vana tema vanem oli tema sünniaastal.</p>

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
