/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/J2EE/EJB40/StatelessEjbClass.java to edit this template
 */
package ejb;

import jakarta.annotation.security.DeclareRoles;
import jakarta.annotation.security.DenyAll;
import jakarta.annotation.security.PermitAll;
import jakarta.annotation.security.RolesAllowed;
import jakarta.ejb.Stateless;
import jakarta.ejb.LocalBean;

/**
 *
 * @author kamlendu
 */
@Stateless
@LocalBean
@DeclareRoles({"Admin","Supervisor"})
public class SecureBean {

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")

@RolesAllowed("Admin")
//@PermitAll
//@DenyAll
public String saySecureHello()
{
    return " Secure Hello from EJB";
}

}
