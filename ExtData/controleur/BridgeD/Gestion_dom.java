package BridgeD;



/**
 * Cette classe permet de lancer le programme qui permet de remplir les tables et de lancer la requete.
 */
public class Gestion_dom {
	
	public static void main(String args[]){
		
		 new TransInfoHtml("./modele/dataPartenaire/dataPartenaire.htm","./modele/dataPartenaire/extDataPartenaire.xsl");		
		 new TransInfoHtml("./modele/dataContactsPrincipal/dataContact.htm","./modele/dataContactsPrincipal/extDataContact.xsl");	
		 new TransInfoHtml("./modele/dataSuivie/dataSuiviContact.htm","./modele/dataSuivie/extDataSuivie.xsl");	
		 new TransInfoHtml("./modele/dataSympsiumSponsoring/dataSympsiumSponsoring.htm","./modele/dataSympsiumSponsoring/extDataSponsoringSymposium.xsl");	
		 new TransInfoHtml("./modele/dataSponsoring/dataSponsoring.htm","./modele/dataSponsoring/extDataSponsoring.xsl");		
		 new TransInfoHtml("./modele/dataStandsSponsoring/dataStandsSponsoring.htm","./modele/dataStandsSponsoring/extDataStandsSponsoring.xsl");	
		 new TransInfoHtml("./modele/dataDetailSponsoring/dataDetailSponsoring.htm","./modele/dataDetailSponsoring/extDetailSponsoring.xsl");	
		 new TransInfoHtml("./modele/dataInscriptions/dataInscription.htm","./modele/dataInscriptions/extInscription.xsl");				
		 new TransInfoHtml("./modele/dataContactSecondaire/dataContactSecondaire.htm","./modele/dataContactSecondaire/extDataContactSecondaire.xsl");		
		 new TransInfoHtml("./modele/dataContactsPrincipal/dataContact.htm","./modele/dataContactsPrincipal/extDataContact.xsl");	
		 new TransInfoHtml("./modele/dataContactInterne/dataContactInterne.htm","./modele/dataContactInterne/extDataContactInterne.xsl");	
		 
	}
}


