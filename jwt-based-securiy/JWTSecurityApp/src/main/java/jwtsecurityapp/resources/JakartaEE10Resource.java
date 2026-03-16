package jwtsecurityapp.resources;

import ejb.HelloBeanLocal;
import jakarta.annotation.security.DeclareRoles;
import jakarta.annotation.security.RolesAllowed;
import jakarta.ejb.EJB;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.Produces;

/**
 *
 * @author 
 */
@DeclareRoles({"Admin","Supervisor"})
@Path("rest")
public class JakartaEE10Resource {
    @EJB HelloBeanLocal hbl;
    
    @RolesAllowed("Admin")
    @GET
    @Produces("text/html")
    public String sayHello(){
       return "<h3>"+hbl.sayHello() + " and From  Rest !! </h3>" ;
    }
}