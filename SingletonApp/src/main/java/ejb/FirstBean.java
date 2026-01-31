/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/J2EE/EJB40/SingletonEjbClass.java to edit this template
 */
package ejb;

import jakarta.annotation.PostConstruct;
import jakarta.ejb.Singleton;
import jakarta.ejb.LocalBean;

/**
 *
 * @author kamlendu
 */
@Singleton
@LocalBean
public class FirstBean {

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")

@PostConstruct
public void initialize()
{
    System.out.println("FirstBean is instantiated ...");
}

}
