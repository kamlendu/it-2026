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
@Stateless(mappedName = "ejb/math")
public class MathBean implements MathBeanRemote {

    @Override
    public int add(int x, int y) {
        //throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
   
    return x+y;
    }

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")



}
