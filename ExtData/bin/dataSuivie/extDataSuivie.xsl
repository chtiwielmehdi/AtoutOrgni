<?xml version="1.0" encoding="UTF-8"?>
<!-- classe_03.xsl : deux apply-templates en cascade -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
   <xsl:output method="text" indent="yes"/>
   
  <xsl:template match="/HTML">
			
			<xsl:for-each select="//TR">
				<xsl:if test="TD[1]!='' and TD[4]!=''">
			  	   <xsl:text>insert into suiviContact (IDcontact,DateR,DateM,Notes,CompteRenduP,LeaderO,NotesLeaderO,Synthese) values (</xsl:text>
				   <xsl:text>"</xsl:text> <xsl:value-of select="translate(TD[1], '&quot;', '')"/><xsl:text>",</xsl:text>
				   <xsl:text>"</xsl:text><xsl:value-of select="translate(TD[2], '&quot;', '')"/><xsl:text>",</xsl:text>
				   <xsl:text>"</xsl:text><xsl:value-of select="translate(TD[3], '&quot;', '')"/><xsl:text>",</xsl:text>
				   <xsl:text>"</xsl:text><xsl:value-of select="translate(TD[4], '&quot;', '')"/><xsl:text>",</xsl:text>
				   <xsl:text>"</xsl:text><xsl:value-of select="translate(TD[5], '&quot;', '')"/><xsl:text>",</xsl:text>
				   <xsl:text>"</xsl:text><xsl:value-of select="translate(TD[7], '&quot;', '')"/><xsl:text>",</xsl:text>
				   <xsl:text>"</xsl:text><xsl:value-of select="translate(TD[8], '&quot;', '')"/><xsl:text>",</xsl:text>
				   <xsl:text>"</xsl:text><xsl:value-of select="translate(TD[9], '&quot;', '')"/><xsl:text>"</xsl:text>
				    <xsl:text>);&#x0a;</xsl:text>
				    </xsl:if>			    
			</xsl:for-each>
	</xsl:template>


  
</xsl:stylesheet>