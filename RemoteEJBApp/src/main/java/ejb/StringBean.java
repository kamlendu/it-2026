/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/J2EE/EJB40/StatelessEjbClass.java to edit this template
 */
package ejb;

import jakarta.ejb.Stateless;

/**
 *
 * @author kamlendu
 */
@Stateless
public class StringBean implements StringBeanLocal {

    @Override
    public String concat(String s1, String s2) {
       // throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
   return s1 + " "+ s2;
    }

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")


}
