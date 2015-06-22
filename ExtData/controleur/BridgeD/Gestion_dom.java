package BridgeD;



/**
 * Cette classe permet de lancer le programme qui permet de remplir les tables et de lancer la requete.
 */
public class Gestion_dom {
	
	public static void main(String args[]){
		
		new TransInfoHtml("./modele/dataContacts/DataContacts.htm","./modele/dataContacts/extDataContact.xsl");	
		new TransInfoHtml("./modele/dataPartenaire/PartenaireDemo.htm","./modele/dataPartenaire/extDataPartenaire.xsl");		
		new TransInfoHtml("./modele/dataSuivie/DataSuivi.htm","./modele/dataSuivie/extDataSuivie.xsl");	
		new TransInfoHtml("./modele/dataSponsoring/DataSponsoring.htm","./modele/dataSponsoring/extDataSponsoring.xsl");		
		new TransInfoHtml("./modele/dataSympsiumSponsoring/DataSponsoringSymposium.htm","./modele/dataSympsiumSponsoring/extDataSponsoringSymposium.xsl");	
		new TransInfoHtml("./modele/dataStandsSponsoring/DataStandsSponsoring.htm","./modele/dataStandsSponsoring/extDataStandsSponsoring.xsl");	
		new TransInfoHtml("./modele/dataDetailSponsoring/DataDetailSponsoring.htm","./modele/dataDetailSponsoring/extDetailSponsoring.xsl");	
		System.out.println("Test fab");
	}
}


