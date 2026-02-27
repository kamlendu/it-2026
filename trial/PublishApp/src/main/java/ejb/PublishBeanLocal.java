/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/J2EE/EJB40/SessionLocal.java to edit this template
 */
package ejb;

import entity.Address;
import entity.Customer;
import entity.Subscription;
import jakarta.ejb.Local;
import java.util.Collection;

/**
 *
 * @author kamlendu
 */
@Local
public interface PublishBeanLocal {

    Collection<Customer> getAllCustomers();

    void addCustomer(String fname, String lname);

    void updateCustomer(Integer custId, String fname, String lname);

    void removeCustomer(Integer custId);

    Collection<Customer> getCustomersByFirstName(String fname);

    Collection<Customer> getCustomersByLastName(String lname);

    Customer getCustomer(Integer custId);

    Collection<Address> getAddressesOfCustomer(Integer custId);

    void addAddressOfCustomer(String street, String city, String state, String zip, Integer custId);

    void updateAddressOfCustomer(Integer aid, String street, String city, String state, String zip, Integer custId);

    void removeAddressOfCustomer(Integer aid, Integer cid);

    Collection<Address> getAddressesByCity(String city);

    Collection<Address> getAddressesByState(String state);

    Collection<Address> getAddressesByZip(String zip);

    Customer getCustomerOfAddress(Integer aid);

    void addSubscription(String title, String type);

    void updateSubscription(Integer sid, String title, String type);

    void removeSubscription(Integer sid);

    Collection<Subscription> getSubscriptionsOfCustomer(Integer cid);

    Collection<Customer> getCustomersOfSubscription(Integer sid);

    Collection<Subscription> getSubscriptionsByType(String type);

    Subscription getSubscriptionByTitle(String title);

    void addSubscriptionsToCustomer(Integer cid, Collection<Integer> sids);

    void removeSubscriptionsToCustomer(Integer cid, Collection<Integer> sids);

}
