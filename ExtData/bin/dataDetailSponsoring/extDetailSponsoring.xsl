<?xml version="1.0" encoding="UTF-8"?>
<!-- classe_03.xsl : deux apply-templates en cascade -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
   <xsl:output method="text" indent="yes"/>
   
  <xsl:template match="/HTML">
			
			<xsl:for-each select="//TR">
			 <xsl:if test="TD[1]!='' and TD[2]!=''">
			  <xsl:text>insert into DetailSponsoring (IDcontact,DateAtelier,HoraireAtelier,PrixAtelier,DateParrainagePC,PrixParrainagePC,DateDejeunerD,HorraireDejeunerD,PrixDejeunerD,DateParrainageDO,PrixParrainageDO,DateParrainageDCA,PrixParrainageDCA,PrixVisibiliteHP,PrixPremierePSW,PrixlogoL,PrixMarqueP,PrixMalettes,PrixSynopsis,PrixcordonsB,PrixinsertionM,PrixCyberC,PrixBlocsN,PrixStylos,InsertionProgramme,MontantHTInsertion,NombreBadgeExpo,NombreBadgeOff,Moquette,Nettoyage,Autre,MontantAutre) values (</xsl:text>  
				  <xsl:text>"</xsl:text><xsl:value-of select="translate(TD[1], '&quot;', '')"/><xsl:text>",</xsl:text>
				  <xsl:text>STR_TO_DATE("</xsl:text><xsl:value-of select="translate(TD[2], '&quot;', '')"/><xsl:text>","%d/%m/%Y"),</xsl:text>
				  <xsl:text>"</xsl:text><xsl:value-of select="translate(TD[3], '&quot;', '')"/><xsl:text>",</xsl:text> 
				  <xsl:text>"</xsl:text> <xsl:value-of select="translate(TD[4], '&quot;', '')"/><xsl:text>",</xsl:text>
				  <xsl:text>STR_TO_DATE("</xsl:text><xsl:value-of select="translate(TD[5], '&quot;', '')"/><xsl:text>","%d/%m/%Y"),</xsl:text>
				  <xsl:text>"</xsl:text><xsl:value-of select="translate(TD[6], '&quot;', '')"/><xsl:text>",</xsl:text> 
				 <xsl:text>STR_TO_DATE("</xsl:text><xsl:value-of select="translate(TD[7], '&quot;', '')"/><xsl:text>","%d/%m/%Y"),</xsl:text>
				  <xsl:text>"</xsl:text><xsl:value-of select="translate(TD[8], '&quot;', '')"/><xsl:text>",</xsl:text>
				  <xsl:text>"</xsl:text><xsl:value-of select="translate(TD[9], '&quot;', '')"/><xsl:text>",</xsl:text>
				   <xsl:text>STR_TO_DATE("</xsl:text><xsl:value-of select="translate(TD[10], '&quot;', '')"/><xsl:text>","%d/%m/%Y"),</xsl:text>
				   <xsl:text>"</xsl:text> <xsl:value-of select="translate(TD[11], '&quot;', '')"/><xsl:text>",</xsl:text>
				  <xsl:text>STR_TO_DATE("</xsl:text><xsl:value-of select="translate(TD[12], '&quot;', '')"/><xsl:text>","%d/%m/%Y"),</xsl:text>
				   <xsl:text>"</xsl:text><xsl:value-of select="translate(TD[13], '&quot;', '')"/><xsl:text>",</xsl:text>
				  <xsl:text>"</xsl:text><xsl:value-of select="translate(TD[14], '&quot;', '')"/><xsl:text>",</xsl:text> 
				  <xsl:text>"</xsl:text> <xsl:value-of select="translate(TD[15], '&quot;', '')"/><xsl:text>",</xsl:text>
				  <xsl:text>"</xsl:text><xsl:value-of select="translate(TD[16], '&quot;', '')"/><xsl:text>",</xsl:text>
				  <xsl:text>"</xsl:text><xsl:value-of select="translate(TD[17], '&quot;', '')"/><xsl:text>",</xsl:text>
				  <xsl:text>"</xsl:text><xsl:value-of select="translate(TD[18], '&quot;', '')"/><xsl:text>",</xsl:text>
				  <xsl:text>"</xsl:text> <xsl:value-of select="translate(TD[19], '&quot;', '')"/><xsl:text>",</xsl:text>
				  <xsl:text>"</xsl:text><xsl:value-of select="translate(TD[20], '&quot;', '')"/><xsl:text>",</xsl:text>
				  <xsl:text>"</xsl:text><xsl:value-of select="translate(TD[21], '&quot;', '')"/><xsl:text>",</xsl:text>
				  <xsl:text>"</xsl:text><xsl:value-of select="translate(TD[22], '&quot;', '')"/><xsl:text>",</xsl:text>  
				  <xsl:text>"</xsl:text> <xsl:value-of select="translate(TD[23], '&quot;', '')"/><xsl:text>",</xsl:text>
				  <xsl:text>"</xsl:text><xsl:value-of select="translate(TD[24], '&quot;', '')"/><xsl:text>",</xsl:text>
				   <xsl:text>STR_TO_DATE("</xsl:text><xsl:value-of select="translate(TD[25], '&quot;', '')"/><xsl:text>","%d/%m/%Y"),</xsl:text>
				 <xsl:text>"</xsl:text><xsl:value-of select="translate(TD[26], '&quot;', '')"/><xsl:text>",</xsl:text>
				  <xsl:text>"</xsl:text> <xsl:value-of select="translate(TD[27], '&quot;', '')"/><xsl:text>",</xsl:text>
				  <xsl:text>"</xsl:text><xsl:value-of select="translate(TD[28], '&quot;', '')"/><xsl:text>",</xsl:text>
				  <xsl:text>"</xsl:text><xsl:value-of select="translate(TD[29], '&quot;', '')"/><xsl:text>",</xsl:text>
				  <xsl:text>"</xsl:text><xsl:value-of select="translate(TD[30], '&quot;', '')"/><xsl:text>",</xsl:text>  
				  <xsl:text>"</xsl:text><xsl:value-of select="translate(TD[31], '&quot;', '')"/><xsl:text>",</xsl:text>
				  <xsl:text>"</xsl:text><xsl:value-of select="translate(TD[32], '&quot;', '')"/><xsl:text>"</xsl:text>    
				  <xsl:text>);&#x0a;</xsl:text>	
			
			</xsl:if>				    
			</xsl:for-each>
	</xsl:template>


  
</xsl:stylesheet>