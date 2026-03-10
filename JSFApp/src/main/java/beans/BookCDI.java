/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSF/JSFManagedBean.java to edit this template
 */
package beans;

import client.BookClient;
import entity.BookMaster;
import jakarta.inject.Named;
import jakarta.enterprise.context.RequestScoped;
import jakarta.ws.rs.core.GenericType;
import jakarta.ws.rs.core.Response;
import java.util.Collection;

/**
 *
 * @author kamlendu
 */
@Named(value = "bookCDI")
@RequestScoped
public class BookCDI {
    BookClient cl;
    Response rs;
    Collection<BookMaster> books;
    GenericType<Collection<BookMaster>> gbooks;
    

    /**
     * Creates a new instance of BookCDI
     */
    public BookCDI() {
      
          
       cl = new BookClient();
       books =  new java.util.ArrayList<>();
       gbooks = new GenericType<Collection<BookMaster>>(){};
    
        
        
    }

    public Collection<BookMaster> getBooks() {
        
        rs = cl.getAllBooks(Response.class);
        books = rs.readEntity(gbooks);
        return books;
    }

    public void setBooks(Collection<BookMaster> books) {
        this.books = books;
    }
   
    
    
    
}
