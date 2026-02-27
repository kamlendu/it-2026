package myrestapp.resources;

import jakarta.ws.rs.Consumes;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.PUT;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.PathParam;
import jakarta.ws.rs.Produces;
import java.util.ArrayList;
import java.util.Collection;

/**
 *
 * @author 
 */
@Path("rest")
public class JakartaEE10Resource {
    
    @GET
    @Produces("text/html")
    public String sayHello(){
        return "<h2>Hello World of Rest !";
    }
    
    @GET
    @Path("special/{user}")
    @Produces("text/html")
    public String saySpecialHello(@PathParam("user") String user)
    {
        return "<h2>Hello World of REST from "+ user + "</h2>";
    }
    
    @PUT
    @Path("ucases")
    @Produces("application/json")
    @Consumes("application/json")
    public Collection<String> doUcases(Collection<String> data)
    {
        Collection<String> uppers = new ArrayList<>();
        
        for(String s : data)
        {
          uppers.add(s.toUpperCase());
        }
        return uppers;
    }
    
    
}
