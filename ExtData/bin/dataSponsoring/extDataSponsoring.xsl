<?xml version="1.0" encoding="UTF-8"?>
<!-- classe_03.xsl : deux apply-templates en cascade -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
   <xsl:output method="text" indent="yes"/>
   
  <xsl:template match="/HTML">
			
			<xsl:for-each select="//TR">
			<xsl:if test="TD[1]!='' ">
			  <xsl:text>insert into partenaire values (</xsl:text>
				   <xsl:text>"</xsl:text> <xsl:value-of select="TD[1]"/><xsl:text>",</xsl:text>
				   <xsl:text>"</xsl:text><xsl:value-of select="TD[2]"/><xsl:text>",</xsl:text>
				   <xsl:text>"</xsl:text><xsl:value-of select="TD[3]"/><xsl:text>",</xsl:text>
				   <xsl:text>"</xsl:text><xsl:value-of select="TD[4]"/><xsl:text>",</xsl:text>
				   <xsl:text>"</xsl:text><xsl:value-of select="TD[5]"/><xsl:text>",</xsl:text>
				   <xsl:text>"</xsl:text><xsl:value-of select="TD[6]"/><xsl:text>",</xsl:text>
				   <xsl:text>"</xsl:text><xsl:value-of select="TD[7]"/><xsl:text>",</xsl:text>
				  <xsl:text>"</xsl:text><xsl:value-of select="TD[8]"/><xsl:text>",</xsl:text>
				   <xsl:text>"</xsl:text><xsl:value-of select="TD[9]"/><xsl:text>",</xsl:text>
				  <xsl:text>"</xsl:text><xsl:value-of select="TD[10]"/><xsl:text>"</xsl:text>
				  
				    <xsl:text>);&#x0a;</xsl:text>	
				    </xsl:if>		    
			</xsl:for-each>
	</xsl:template>


  
</xsl:stylesheet>