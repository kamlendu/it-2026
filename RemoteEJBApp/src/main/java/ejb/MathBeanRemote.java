/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/J2EE/EJB40/SessionLocal.java to edit this template
 */
package ejb;

import jakarta.ejb.Remote;

/**
 *
 * @author kamlendu
 */
@Remote
public interface MathBeanRemote {
    
    int add(int x, int y);
    
}
