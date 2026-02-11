/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/J2EE/EJB40/StatelessEjbClass.java to edit this template
 */
package ejb;

import entity.BookMaster;
import jakarta.ejb.Stateless;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import java.util.Collection;

/**
 *
 * @author kamlendu
 */
@Stateless
public class DataBean implements DataBeanLocal {
    @PersistenceContext(unitName = "mypu")
    EntityManager em;
    
    
    

    @Override
    public Collection<BookMaster> getAllBooks() {
        //throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    
        Collection<BookMaster> books = em.createNamedQuery("BookMaster.findAll").getResultList();
    
        return books;
    }

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")

    @Override
    public Collection<BookMaster> getBookByAuthors(String authname) {
      //  throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
   
    Collection<BookMaster> books = em.createNamedQuery("BookMaster.findByAuthorName")
                                     .setParameter("authorName", authname)
                                     .getResultList();
    
    return books;
    }

    @Override
    public void addBook(String bname, String authname, String pname, String synopsis) {
       // throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
   
       BookMaster b = new BookMaster();
       b.setBookName(bname);
       b.setAuthorName(authname);
       b.setPublisherName(pname);
       b.setSynopsis(synopsis);
       
       em.persist(b);
    }

    @Override
    public void updateBook(Integer bid, String bname, String authname, String pname, String synopsis) {
      //  throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    
      BookMaster b = (BookMaster)em.find(BookMaster.class, bid);
       b.setBookName(bname);
       b.setAuthorName(authname);
       b.setPublisherName(pname);
       b.setSynopsis(synopsis);
    
       em.merge(b);
    
    
    }

    @Override
    public void removeBook(Integer bid) {
        //throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
     BookMaster b = (BookMaster)em.find(BookMaster.class, bid);
     
     em.remove(b);
    
    
    }



}
