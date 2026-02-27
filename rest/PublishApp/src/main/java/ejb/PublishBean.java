/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/J2EE/EJB40/StatelessEjbClass.java to edit this template
 */
package ejb;

import entity.Address;
import entity.Customer;
import entity.Subscription;
import jakarta.ejb.Stateless;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import java.util.Collection;

/**
 *
 * @author kamlendu
 */
@Stateless
public class PublishBean implements PublishBeanLocal {
    
    @PersistenceContext(unitName = "mypubpu")
    EntityManager em;

    @Override
    public Collection<Customer> getAllCustomers() {
      //  throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
   
      return em.createNamedQuery("Customer.findAll").getResultList();
    
    
    }

    @Override
    public void addCustomer(String fname, String lname) {
      //  throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
   
      Customer c = new Customer();
      c.setFirstName(fname);
      c.setLastName(lname);
      
      em.persist(c);
    
    }

    @Override
    public void updateCustomer(Integer custId, String fname, String lname) {
       // throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    
    Customer c = (Customer) em.find(Customer.class,custId);
    
    c.setFirstName(fname);
    c.setLastName(lname);
    
    em.merge(c);
    }

    @Override
    public void removeCustomer(Integer custId) {
        //throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    Customer c = (Customer) em.find(Customer.class,custId);
    
    em.remove(c);
    
    }

    @Override
    public Collection<Customer> getCustomersByFirstName(String fname) {
       // throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    
    return em.createNamedQuery("Customer.findByFirstName")
            .setParameter("firstName", fname)
            .getResultList();
    }

    @Override
    public Collection<Customer> getCustomersByLastName(String lname) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Customer getCustomer(Integer custId) {
       // throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    
    return (Customer)em.find(Customer.class, custId);
    }

    @Override
    public Collection<Address> getAddressesOfCustomer(Integer custId) {
       // throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
   
       Customer c = (Customer)em.find(Customer.class, custId);
    
       return c.getAddressCollection();
    }

    @Override
    public void addAddressOfCustomer(String street, String city, String state, String zip, Integer custId) {
      //  throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
   
    Customer c =(Customer)em.find(Customer.class, custId);
    Collection<Address> addresses = c.getAddressCollection();
    
    Address a = new Address();
    a.setStreet(street);
    a.setCity(city);
    a.setState(state);
    a.setZip(zip);
    
    a.setCustomer(c);
    
    addresses.add(a);
    
    c.setAddressCollection(addresses);
    
    em.persist(a);
    em.merge(c);
    
    
    
    }

    @Override
    public void updateAddressOfCustomer(Integer aid, String street, String city, String state, String zip, Integer custId) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void removeAddressOfCustomer(Integer aid, Integer cid) {
       // throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    
    Customer c = (Customer)em.find(Customer.class, cid);
    Address a = (Address)em.find(Address.class, aid);
    
    Collection<Address> addresses = c.getAddressCollection();
    
    if(addresses.contains(a))
    {
        addresses.remove(a);
        c.setAddressCollection(addresses);
        em.remove(a);
    }
    
    
    
    }

    @Override
    public Collection<Address> getAddressesByCity(String city) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Collection<Address> getAddressesByState(String state) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Collection<Address> getAddressesByZip(String zip) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Customer getCustomerOfAddress(Integer aid) {
       // throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
   Address a = (Address) em.find(Address.class, aid);
   
   return a.getCustomer();
    
    }

    @Override
    public void addSubscription(String title, String type) {
      //  throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    
    Subscription s = new Subscription();
    s.setTitle(title);
    s.setType(type);
    em.persist(s);
    }

    @Override
    public void updateSubscription(Integer sid, String title, String type) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void removeSubscription(Integer sid) {
       // throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    Subscription s = (Subscription) em.find(Subscription.class, sid);
    
    em.remove(s);
    }

    @Override
    public Collection<Subscription> getSubscriptionsOfCustomer(Integer cid) {
        //throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    
    Customer c = (Customer) em.find(Customer.class, cid);
    
    return c.getSubscriptionCollection();
    
    }

    @Override
    public Collection<Customer> getCustomersOfSubscription(Integer sid) {
      //  throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
      Subscription s = (Subscription) em.find(Subscription.class, sid);
  
    return s.getCustomerCollection();
    }

    @Override
    public Collection<Subscription> getSubscriptionsByType(String type) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Subscription getSubscriptionByTitle(String title) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void addSubscriptionsToCustomer(Integer cid, Collection<Integer> sids) {
       // throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    Customer c = (Customer) em.find(Customer.class, cid);
  
   Collection<Subscription> subs = c.getSubscriptionCollection();
   
   for(Integer sid : sids)
   {
    
       Subscription s = em.find(Subscription.class, sid);
    if(!subs.contains(s))
    {
        Collection<Customer> customers = s.getCustomerCollection();
        
        customers.add(c);
        subs.add(s);
        
        s.setCustomerCollection(customers);
        c.setSubscriptionCollection(subs);
        
       em.merge(c);
    }
   }
   }

    @Override
    public void removeSubscriptionsToCustomer(Integer cid, Collection<Integer> sids) {
       // throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
       Customer c = (Customer) em.find(Customer.class, cid);
  
   Collection<Subscription> subs = c.getSubscriptionCollection();
   
   for(Integer sid : sids)
   {
    
       Subscription s = em.find(Subscription.class, sid);
    if(subs.contains(s))
    {
        Collection<Customer> customers = s.getCustomerCollection();
        
        customers.remove(c);
        subs.remove(s);
        
        s.setCustomerCollection(customers);
        c.setSubscriptionCollection(subs);
        
       em.merge(c);
    }
   }
    
    
    
    }

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")



}
