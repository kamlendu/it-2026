/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import ejb.PublishBeanLocal;
import entity.Address;
import entity.Customer;
import entity.Subscription;
import jakarta.ejb.EJB;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.Collection;

/**
 *
 * @author kamlendu
 */
@WebServlet(name = "PublishServlet", urlPatterns = {"/PublishServlet"})
public class PublishServlet extends HttpServlet {
    
    @EJB PublishBeanLocal pbl;

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
            out.println("<title>Servlet PublishServlet</title>");
            out.println("</head>");
            out.println("<body><h2>");
            
          //  pbl.addCustomer("Sandip", "Chopda");
          pbl.removeCustomer(10);
          
         // pbl.addAddressOfCustomer("S-234", "Surat", "Gujarat", "345123", 10);
         // pbl.addAddressOfCustomer("M-612", "Vadodara", "Gujarat", "383002", 10);
         
      //   pbl.removeAddressOfCustomer(6, 10);
       //  pbl.removeAddressOfCustomer(7, 10);
         
         Collection<Integer> sids = new ArrayList<>();
         sids.add(1);
         sids.add(2);
         sids.add(3);
         
       //  pbl.addSubscriptionsToCustomer(10, sids);
         
      // pbl.removeSubscriptionsToCustomer(10, sids);
            
            Collection<Customer> customers = pbl.getAllCustomers();
            
            for(Customer c : customers)
            {
            out.println("<br/>cid : "+ c.getCustomerID()+ " Name : "+ c.getFirstName()+" "+ c.getLastName());
             
            Collection<Address> addresses = pbl.getAddressesOfCustomer(c.getCustomerID());
             
            for(Address a : addresses)
            {
             
                  out.println("<br/>aid : "+ a.getAddressId()+ " street : " + a.getStreet()+ " City :"+ a.getCity()+ " State :" + a.getState());
                
            }
             
            Collection<Subscription> subs = pbl.getSubscriptionsOfCustomer(c.getCustomerID());
            
            for(Subscription s : subs)
            {
                out.println("<br/>sid : "+ s.getSubscriptionId()+ " title : "+ s.getTitle()+" Type : "+ s.getType());
            
            }
            
            out.println("<hr/>");
                
            }
            
            
            
            out.println("</h2><h1>Servlet PublishServlet at " + request.getContextPath() + "</h1>");
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
