/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/WebServices/JerseyClient.java to edit this template
 */
package client;

import jakarta.ws.rs.ClientErrorException;
import jakarta.ws.rs.client.Client;
import jakarta.ws.rs.client.WebTarget;

/**
 * Jersey REST client generated for REST resource:JakartaEE10Resource [rest]<br>
 * USAGE:
 * <pre>
 *        RestClient client = new RestClient();
 *        Object response = client.XXX(...);
 *        // do whatever with response
 *        client.close();
 * </pre>
 *
 * @author kamlendu
 */
public class RestClient {

    private WebTarget webTarget;
    private Client client;
    private static final String BASE_URI = "http://localhost:8080/MyRestApp/resources";

    public RestClient() {
        client = jakarta.ws.rs.client.ClientBuilder.newClient();
        webTarget = client.target(BASE_URI).path("rest");
    }

    public String sayHello() throws ClientErrorException {
        WebTarget resource = webTarget;
        return resource.request(jakarta.ws.rs.core.MediaType.TEXT_HTML).get(String.class);
    }

    public String saySpecialHello(String user) throws ClientErrorException {
        WebTarget resource = webTarget;
        resource = resource.path(java.text.MessageFormat.format("special/{0}", new Object[]{user}));
        return resource.request(jakarta.ws.rs.core.MediaType.TEXT_HTML).get(String.class);
    }

    public <T> T doUcases(Object requestEntity, Class<T> responseType) throws ClientErrorException {
        return webTarget.path("ucases").request(jakarta.ws.rs.core.MediaType.APPLICATION_JSON).put(jakarta.ws.rs.client.Entity.entity(requestEntity, jakarta.ws.rs.core.MediaType.APPLICATION_JSON), responseType);
    }

    public void close() {
        client.close();
    }
    
}
