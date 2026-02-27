/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/WebServices/JerseyClient.java to edit this template
 */
package client;

import jakarta.ws.rs.ClientErrorException;
import jakarta.ws.rs.client.Client;
import jakarta.ws.rs.client.WebTarget;

/**
 * Jersey REST client generated for REST resource:JakartaEE10Resource
 * [publish]<br>
 * USAGE:
 * <pre>
 *        PublishClient client = new PublishClient();
 *        Object response = client.XXX(...);
 *        // do whatever with response
 *        client.close();
 * </pre>
 *
 * @author kamlendu
 */
public class PublishClient {

    private WebTarget webTarget;
    private Client client;
    private static final String BASE_URI = "http://localhost:8080/PublishApp/resources";

    public PublishClient() {
        client = jakarta.ws.rs.client.ClientBuilder.newClient();
        webTarget = client.target(BASE_URI).path("publish");
    }

    public <T> T getCustomerOfAddress(Class<T> responseType, String aid) throws ClientErrorException {
        WebTarget resource = webTarget;
        resource = resource.path(java.text.MessageFormat.format("getcustofaddress/{0}", new Object[]{aid}));
        return resource.request(jakarta.ws.rs.core.MediaType.APPLICATION_JSON).get(responseType);
    }

    public void removeSubscription(String sid) throws ClientErrorException {
        webTarget.path(java.text.MessageFormat.format("remsubs/{0}", new Object[]{sid})).request().delete();
    }

    public void addSubscription(String title, String type) throws ClientErrorException {
        webTarget.path(java.text.MessageFormat.format("addsubs/{0}/{1}", new Object[]{title, type})).request().post(null);
    }

    public void addSubscriptionsToCustomer(Object requestEntity, String cid) throws ClientErrorException {
        webTarget.path(java.text.MessageFormat.format("addsubstocust/{0}", new Object[]{cid})).request(jakarta.ws.rs.core.MediaType.APPLICATION_JSON).post(jakarta.ws.rs.client.Entity.entity(requestEntity, jakarta.ws.rs.core.MediaType.APPLICATION_JSON));
    }

    public <T> T getCustomer(Class<T> responseType, String cid) throws ClientErrorException {
        WebTarget resource = webTarget;
        resource = resource.path(java.text.MessageFormat.format("getcust/{0}", new Object[]{cid}));
        return resource.request(jakarta.ws.rs.core.MediaType.APPLICATION_JSON).get(responseType);
    }

    public void addCustomer(String fname, String lname) throws ClientErrorException {
        webTarget.path(java.text.MessageFormat.format("addcust/{0}/{1}", new Object[]{fname, lname})).request().post(null);
    }

    public void removeAddressOfCustomer(String aid, String cid) throws ClientErrorException {
        webTarget.path(java.text.MessageFormat.format("remaddress/{0}/{1}", new Object[]{aid, cid})).request().delete();
    }

    public <T> T getAllCustomers(Class<T> responseType) throws ClientErrorException {
        WebTarget resource = webTarget;
        return resource.request(jakarta.ws.rs.core.MediaType.APPLICATION_JSON).get(responseType);
    }

    public <T> T getAddressesOfCustomer(Class<T> responseType, String cid) throws ClientErrorException {
        WebTarget resource = webTarget;
        resource = resource.path(java.text.MessageFormat.format("getaddressofcust/{0}", new Object[]{cid}));
        return resource.request(jakarta.ws.rs.core.MediaType.APPLICATION_JSON).get(responseType);
    }

    public <T> T getCustomersOfSubscription(Class<T> responseType, String sid) throws ClientErrorException {
        WebTarget resource = webTarget;
        resource = resource.path(java.text.MessageFormat.format("getcustsofsubs/{0}", new Object[]{sid}));
        return resource.request(jakarta.ws.rs.core.MediaType.APPLICATION_JSON).get(responseType);
    }

    public void removeSubscriptionsToCustomer(Object requestEntity, String cid) throws ClientErrorException {
        webTarget.path(java.text.MessageFormat.format("remsubsfromcust/{0}", new Object[]{cid})).request(jakarta.ws.rs.core.MediaType.APPLICATION_JSON).post(jakarta.ws.rs.client.Entity.entity(requestEntity, jakarta.ws.rs.core.MediaType.APPLICATION_JSON));
    }

    public void updateCustomer(String cid, String fname, String lname) throws ClientErrorException {
        webTarget.path(java.text.MessageFormat.format("uodatecust/{0}/{1}/{2}", new Object[]{cid, fname, lname})).request().put(null);
    }

    public <T> T getCustomersByFirstName(Class<T> responseType, String fname) throws ClientErrorException {
        WebTarget resource = webTarget;
        resource = resource.path(java.text.MessageFormat.format("custbyfname/{0}", new Object[]{fname}));
        return resource.request(jakarta.ws.rs.core.MediaType.APPLICATION_JSON).get(responseType);
    }

    public void removeCustomer(String cid) throws ClientErrorException {
        webTarget.path(java.text.MessageFormat.format("delcust/{0}", new Object[]{cid})).request().delete();
    }

    public <T> T getSubscriptionsOfCustomer(Class<T> responseType, String cid) throws ClientErrorException {
        WebTarget resource = webTarget;
        resource = resource.path(java.text.MessageFormat.format("getsubsofcust/{0}", new Object[]{cid}));
        return resource.request(jakarta.ws.rs.core.MediaType.APPLICATION_JSON).get(responseType);
    }

    public void addAddressOfCustomer(String street, String city, String state, String zip, String cid) throws ClientErrorException {
        webTarget.path(java.text.MessageFormat.format("addaddress/{0}/{1}/{2}/{3}/{4}", new Object[]{street, city, state, zip, cid})).request().post(null);
    }

    public void close() {
        client.close();
    }
    
}
