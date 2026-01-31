/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/J2EE/EJB40/SingletonEjbClass.java to edit this template
 */
package ejb;

import jakarta.annotation.PostConstruct;
import jakarta.annotation.Resource;
import jakarta.ejb.ConcurrencyManagement;
import jakarta.ejb.ConcurrencyManagementType;
import jakarta.ejb.DependsOn;
import jakarta.ejb.Singleton;
import jakarta.ejb.LocalBean;
import jakarta.ejb.Lock;
import jakarta.ejb.LockType;
import jakarta.ejb.Startup;
import jakarta.ejb.TransactionManagement;
import jakarta.ejb.TransactionManagementType;
import jakarta.transaction.SystemException;
import jakarta.transaction.UserTransaction;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author kamlendu
 */
@TransactionManagement(TransactionManagementType.BEAN)
@ConcurrencyManagement(ConcurrencyManagementType.BEAN)
@Singleton
@LocalBean
@Startup
@DependsOn({"FirstBean","SecondBean"})
public class SingleBean {
    
    @Resource UserTransaction utx;
    
    String fname;
    String lname;
    
    @PostConstruct
    public void initialize()
    {
        fname="Rakesh";
        lname="Shah";
        
        System.out.println("SingleBean is instantiated.....");
    }

    @Lock(LockType.READ)
    public String getFname() {
        return fname;
    }

    @Lock(LockType.WRITE)
    public void setFname(String fname) {
        this.fname = fname;
    }

     @Lock(LockType.READ)
    public String getLname() {
        return lname;
    }
    
     @Lock(LockType.WRITE)
    public void setLname(String lname) {
        this.lname = lname;
    }
    
     @Lock(LockType.READ)
    public String getFillName()
    {
        String fullname="";
        try{
        utx.begin();
        
        fullname= fname + " "+ lname;
        
        utx.commit();
        }
        catch(Exception e)
        {
            try {
                
                utx.setRollbackOnly();
                
            } catch (IllegalStateException ex) {
                Logger.getLogger(SingleBean.class.getName()).log(Level.SEVERE, null, ex);
            } catch (SystemException ex) {
                Logger.getLogger(SingleBean.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        
        return fullname;
    }
    
}
