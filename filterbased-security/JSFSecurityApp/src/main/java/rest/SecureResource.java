/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package rest;

import ejb.SecureBean;
import jakarta.annotation.security.DeclareRoles;
import jakarta.annotation.security.RolesAllowed;
import jakarta.ejb.EJB;
import jakarta.ws.rs.core.Context;
import jakarta.ws.rs.core.UriInfo;
import jakarta.ws.rs.Produces;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import jakarta.enterprise.context.RequestScoped;
import jakarta.ws.rs.core.MediaType;

/**
 * REST Web Service
 *
 * @author root
 */
@DeclareRoles("Admin")
@Path("secure")
//@RequestScoped
public class SecureResource {
@EJB SecureBean sb;
    @Context
    private UriInfo context;

    /**
     * Creates a new instance of SecureResource
     */
    public SecureResource() {
    }

    /**
     * Retrieves representation of an instance of rest.SecureResource
     * @return an instance of java.lang.String
     */
    @RolesAllowed({"Admin"})
    @GET
    @Produces(MediaType.TEXT_PLAIN)
    public String sayHello() {
        //TODO return proper representation object
       // throw new UnsupportedOperationException();
       return sb.saySecureHello()+ " from Rest Client";
    }

   
}
