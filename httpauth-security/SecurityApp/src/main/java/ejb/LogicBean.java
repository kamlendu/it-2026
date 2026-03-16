/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/J2EE/EJB40/StatelessEjbClass.java to edit this template
 */
package ejb;

import jakarta.annotation.security.DeclareRoles;
import jakarta.annotation.security.RolesAllowed;
import jakarta.ejb.Stateless;
import jakarta.ejb.LocalBean;

/**
 *
 * @author kamlendu
 */

@DeclareRoles({"Admin", "Supervisor"})
@Stateless
@LocalBean
public class LogicBean {

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")

// @DenyAll
 //@PermitAll
    
@RolesAllowed({"Admin"})   
public String greet()
{
    return "Hello from Secure EJB !!!";
}

}
