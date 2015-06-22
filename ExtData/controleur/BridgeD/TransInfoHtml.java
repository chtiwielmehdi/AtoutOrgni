package BridgeD;


import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.InputStreamReader;

import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;


public class TransInfoHtml implements BridgeData{
	private String xml;
	private String xslt;
	
	public TransInfoHtml(String xml, String xslt){
	setXml(xml);
	setXslt(xslt);
	try {
		
		//readReplace(getXml());
		transform(getXml(), getXslt(),(getXml().substring(0,getXml().length()-3)));
	} catch (TransformerConfigurationException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}

	}
	

	public String getXml() {
		return xml;
	}


	public void setXml(String xml) {
		this.xml = xml;
	}


	public String getXslt() {
		return xslt;
	}


	public void setXslt(String xslt) {
		this.xslt = xslt;
	}


	/**
     * La methode transform permet d'appliquer un xsl sur un fichier xml pour avoir le fichier outputHTML
     * 
     * @param dataXML :  fichier xml d'entree
     * @param inputXSL :  fichier xsl d'entree
     * @param outputHTML :  fichier xml de sortie
     *    
     */
	public void transform(String dataXML, String inputXSL, String outputHTML) throws TransformerConfigurationException {
		System.out.println(dataXML+" "+inputXSL);
    	System.out.println("Bonjour");
    	 String[] name_out = outputHTML.split("/");
    	 
        TransformerFactory factory = TransformerFactory.newInstance();
        StreamSource xslStream = new StreamSource(inputXSL);
        Transformer transformer = factory.newTransformer(xslStream);
        StreamSource in = new StreamSource(dataXML);
        StreamResult out = new StreamResult("./src/dataR/"+name_out[3]+"sql");
        try {
			transformer.transform(in, out);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
        System.out.println("The generated sql file is:" + name_out[3]);
		
	}
    
	public  void readReplace(String fileName){
		String line;
		StringBuffer sb = new StringBuffer();
		try {
			FileInputStream fis = new FileInputStream(fileName);
			BufferedReader reader = new BufferedReader(new InputStreamReader(fis));
			while ((line = reader.readLine()) != null) {
 
				line = line.replaceAll("\"", "'");
				sb.append(line + "\n");
 
			}
			reader.close();
			BufferedWriter out = new BufferedWriter(new FileWriter(fileName));
			out.write(sb.toString());
			out.close();
		}
		catch (Throwable e) {
			System.err.println("------------ exception" + e);
		}
	}


    
    
}