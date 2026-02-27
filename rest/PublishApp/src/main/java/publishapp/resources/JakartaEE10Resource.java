package publishapp.resources;

import ejb.PublishBeanLocal;
import entity.Address;
import entity.Customer;
import entity.Subscription;
import jakarta.ejb.EJB;
import jakarta.ws.rs.Consumes;
import jakarta.ws.rs.DELETE;
import jakarta.ws.rs.GET;
import jakarta.ws.rs.POST;
import jakarta.ws.rs.PUT;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.PathParam;
import jakarta.ws.rs.Produces;
import java.util.Collection;

/**
 *
 * @author 
 */
@Path("publish")
public class JakartaEE10Resource {
    
    @EJB PublishBeanLocal pbl;
    
   
    @GET
    @Produces("application/json")
    public Collection<Customer> getAllCustomers() {
      
        return pbl.getAllCustomers();
    }

   @POST
   @Path("addcust/{fname}/{lname}")
    public void addCustomer(@PathParam("fname") String fname, @PathParam("lname") String lname) {
     
        pbl.addCustomer(fname, lname);
    }

    @PUT
    @Path("uodatecust/{cid}/{fname}/{lname}")
    public void updateCustomer(@PathParam("cid") Integer custId, @PathParam("fname") String fname, @PathParam("lna me")String lname) {
       pbl.updateCustomer(custId, fname, lname);
    }

    @DELETE
    @Path("delcust/{cid}")
    public void removeCustomer( @PathParam("cid")Integer custId) {
       
        pbl.removeCustomer(custId);
    
    }

    @GET
    @Path("custbyfname/{fname}")
    @Produces("application/json")
    public Collection<Customer> getCustomersByFirstName( @PathParam("fname") String fname) {
     return pbl.getCustomersByFirstName(fname);
    }

    @GET
    @Path("getcust/{cid}")
    @Produces("application/json")
    public Customer getCustomer(@PathParam("cid") Integer custId) {
      
        return pbl.getCustomer(custId);
    }

    @GET
    @Path("getaddressofcust/{cid}")
    @Produces("application/json")
    public Collection<Address> getAddressesOfCustomer(@PathParam("cid") Integer custId) {
  
        return pbl.getAddressesOfCustomer(custId);
    }

    @POST
    @Path("addaddress/{street}/{city}/{state}/{zip}/{cid}")
    public void addAddressOfCustomer(@PathParam("street") String street, @PathParam("city")  String city, @PathParam("state") String state,@PathParam("zip") String zip, @PathParam("cid") Integer custId) {
 
         pbl.addAddressOfCustomer(street, city, state, zip, custId);
    
    }

    @DELETE
    @Path("remaddress/{aid}/{cid}")
    public void removeAddressOfCustomer(@PathParam("aid") Integer aid, @PathParam("cid") Integer cid) {
       
    pbl.removeAddressOfCustomer(aid, cid);
    }

    
   @GET
   @Path("getcustofaddress/{aid}")
   @Produces("application/json")
    public Customer getCustomerOfAddress(@PathParam("aid") Integer aid) {
      
        return pbl.getCustomerOfAddress(aid);
    
    }

    @POST
    @Path("addsubs/{title}/{type}")
    public void addSubscription(@PathParam("title") String title, @PathParam("type") String type) {
     pbl.addSubscription(title, type);
    }

    
    @DELETE
    @Path("remsubs/{sid}")
    public void removeSubscription(@PathParam("sid") Integer sid) {
      
        pbl.removeSubscription(sid);
    }

    @GET
    @Path("getsubsofcust/{cid}")
    @Produces("application/json")
    public Collection<Subscription> getSubscriptionsOfCustomer(@PathParam("cid") Integer cid) {
        
        return pbl.getSubscriptionsOfCustomer(cid);
    }

     @GET
    @Path("getcustsofsubs/{sid}")
    @Produces("application/json")
    public Collection<Customer> getCustomersOfSubscription(@PathParam("sid") Integer sid) {
      
        return pbl.getCustomersOfSubscription(sid);
    }

    
   @POST
   @Path("addsubstocust/{cid}")
   @Consumes("application/json") 
    public void addSubscriptionsToCustomer(@PathParam("cid") Integer cid, Collection<Integer> sids) {
    
        pbl.addSubscriptionsToCustomer(cid, sids);
   }

   @POST
   @Path("remsubsfromcust/{cid}")
   @Consumes("application/json") 
    public void removeSubscriptionsToCustomer(@PathParam("cid") Integer cid, Collection<Integer> sids) {
      pbl.removeSubscriptionsToCustomer(cid, sids);
    
    }
}
