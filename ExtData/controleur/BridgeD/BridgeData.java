package BridgeD;

import javax.xml.transform.TransformerConfigurationException;

public interface BridgeData {
	
	  public void transform(String dataXML, String inputXSL, String outputHTML) throws TransformerConfigurationException;
	  
	  public  void readReplace(String fileName);
}
