/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/J2EE/EJB40/StatelessEjbClass.java to edit this template
 */
package ejb;

import jakarta.annotation.PostConstruct;
import jakarta.ejb.LocalBean;
import jakarta.ejb.Singleton;

/**
 *
 * @author kamlendu
 */
@Singleton
@LocalBean
public class SecondBean {

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
@PostConstruct
public void initialize()
{
    System.out.println("SecondBean is instantiated ...");
}

}
