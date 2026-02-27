/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import client.PublishClient;
import entity.Address;
import entity.Customer;
import entity.Subscription;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.ws.rs.core.GenericType;
import jakarta.ws.rs.core.Response;
import java.util.ArrayList;
import java.util.Collection;

/**
 *
 * @author kamlendu
 */
@WebServlet(name = "RestPublishServlet", urlPatterns = {"/RestPublishServlet"})
public class RestPublishServlet extends HttpServlet {
    
    PublishClient client;
    Response rs;
    Collection<Customer> customers;
    GenericType<Collection<Customer>> gcusts;
    Collection<Address> addresses;
    GenericType<Collection<Address>> gaddresses;
    Collection<Subscription> subs;
    GenericType<Collection<Subscription>> gsubs;
    
    
    

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet RestPublishServlet</title>");
            out.println("</head>");
            out.println("<body><h2>");
            
            
            
            client = new  PublishClient();
            customers = new ArrayList<>();
            gcusts= new GenericType<Collection<Customer>>(){};
            addresses = new ArrayList<>();
            gaddresses= new GenericType<Collection<Address>>(){};
            subs = new ArrayList<>();
            gsubs= new GenericType<Collection<Subscription>>(){};
            
            
          //  client.addCustomer("Rupesh", "Dave");
          //  client.removeCustomer("11");
          
       //   client.addAddressOfCustomer("M-222", "Hydrabad", "Telangana", "512345", "11");
       //   client.addAddressOfCustomer("K-444", "Chennai", "Tamilnadu", "812345", "11");
        
      // client.removeAddressOfCustomer("6", "11");
      // client.removeAddressOfCustomer("7", "11");
       
       
       Collection<Integer> sids = new ArrayList<>();
       sids.add(1);
       sids.add(2);
       sids.add(3);
       
     //  client.addSubscriptionsToCustomer(sids, "11");
     //  client.removeSubscriptionsToCustomer(sids, "11");
       
       
            rs = client.getAllCustomers(Response.class);
            customers = rs.readEntity(gcusts);
            
            for(Customer c : customers)
            {
              out.println("<br/>Cid :"+ c.getCustomerID()+ " Name : " + c.getFirstName() + " "+ c.getLastName());
              
              rs = client.getAddressesOfCustomer(Response.class, c.getCustomerID().toString());
              addresses = rs.readEntity(gaddresses);
              
              for(Address a : addresses)
              {
                  out.println("<br/>aid: "+ a.getAddressId()+ " street "+ a.getStreet()+ " City : "+ a.getCity()+ "State : "+ a.getState()+ " zip : "+ a.getZip() ); 
              }
              
              rs = client.getSubscriptionsOfCustomer(Response.class, c.getCustomerID().toString());
              subs = rs.readEntity(gsubs);
              
              for(Subscription s : subs)
              {
               out.println("<br/>sid: "+ s.getSubscriptionId()+ " title : "+ s.getTitle()+ " Type : "+ s.getType());
              
                 }
              out.println("<hr/>");
            }
            
            
            out.println("</h2><h1>Servlet RestPublishServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
