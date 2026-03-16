package securityapp.resources;

import ejb.LogicBean;
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
    @EJB LogicBean lb;
    
    @RolesAllowed("Admin")
    @GET
    @Produces("text/html")
    public String greet(){
        return "<h2>"+lb.greet() + " and also from REST </h2>";
    }
}
