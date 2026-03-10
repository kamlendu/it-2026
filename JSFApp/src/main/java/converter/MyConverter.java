/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package converter;

import jakarta.faces.component.UIComponent;
import jakarta.faces.context.FacesContext;
import jakarta.faces.convert.Converter;
import jakarta.faces.convert.FacesConverter;

/**
 *
 * @author kamlendu
 */
@FacesConverter("myconverter")
public class MyConverter implements Converter {

    @Override
    public Object getAsObject(FacesContext fc, UIComponent uic, String user) {
       // throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    
         String str = "C01-"+ user;
         return str;
    }

    @Override
    public String getAsString(FacesContext fc, UIComponent uic, Object t) {
        //throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    
    String user = (String)t;
    if(user !=null)
    {
        return user.substring(4);
    }
    return user;
    }
    
    
    
    
}
