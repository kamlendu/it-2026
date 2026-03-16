/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/J2EE/EJB30/StatelessEjbClass.java to edit this template
 */
package ejb;

import jakarta.annotation.security.DeclareRoles;
import jakarta.annotation.security.DenyAll;
import jakarta.annotation.security.PermitAll;
import jakarta.annotation.security.RolesAllowed;
import jakarta.ejb.Stateless;

/**
 *
 * @author root
 */
@Stateless
@DeclareRoles({"Admin","Supervisor"})
public class HelloBean implements HelloBeanLocal {

    @Override
    //@PermitAll
    //@DenyAll
    @RolesAllowed("Admin")
    public String sayHello() {
      //  throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    
      return "A secure Hello from  EJB";
    
    }

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")


}
