package testapp.resources;

import jakarta.enterprise.context.RequestScoped;
import jakarta.inject.Inject;
import jakarta.ws.rs.Consumes;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.POST;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.PathParam;
import jakarta.ws.rs.Produces;
import java.util.Collection;
import model.Customer;
import model.Customers;

/**
 *
 * @author 
 */
//@RequestScoped
@Path("cust")
public class JakartaEE10Resource {
    @Inject Customers customers;
   
    
    @GET
    @Path("/{city}")
    @Produces("application/json")
    public Collection<Customer> getCustomersByCity(@PathParam("city") String city){
        return customers.getCustomerByCity(city);
    }
    
    @POST
    @Path("addcust")
    @Consumes("application/json")
    public void addCustomer(Customer c)
    {
        customers.add(c);
    }
}
