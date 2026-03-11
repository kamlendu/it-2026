/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.io.IOException;
import jakarta.inject.Named;
import jakarta.enterprise.context.Dependent;
import jakarta.enterprise.context.RequestScoped;
import jakarta.faces.context.ExternalContext;
import jakarta.faces.context.FacesContext;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author root
 */
@Named(value = "editorBean")
@RequestScoped
public class EditorBean {

    /** Creates a new instance of EditorBean */
    public EditorBean() {
    }
    
     private String value;  
  
    public String getValue() {  
        return value;  
    }  
  
    public void setValue(String value) {  
        this.value = value;  
    }  
    
    public void go() throws IOException
    {       
        ExternalContext context = FacesContext.getCurrentInstance().getExternalContext();  
        HttpServletResponse response =  (HttpServletResponse)context.getResponse();  ///HttpServletResponse is not being found...  
        response.sendRedirect("ViewEditorContent.xhtml"); 
    }
}
