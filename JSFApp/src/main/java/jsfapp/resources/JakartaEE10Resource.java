package jsfapp.resources;

import ejb.BookBean;
import entity.BookMaster;
import jakarta.ejb.EJB;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.Produces;
import java.util.Collection;

/**
 *
 * @author 
 */
@Path("jakartaee10")
public class JakartaEE10Resource {
    @EJB BookBean bb;
    
    @GET
    @Produces("application/json")
    public Collection<BookMaster> getAllBooks(){
        return bb.getAllBooks();
    }
}
