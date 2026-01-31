/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlets;

import jakarta.jms.MessageProducer;
import jakarta.jms.Queue;
import jakarta.jms.QueueConnection;
import jakarta.jms.QueueConnectionFactory;
import jakarta.jms.QueueSession;
import jakarta.jms.TextMessage;
import jakarta.jms.Topic;
import jakarta.jms.TopicConnection;
import jakarta.jms.TopicConnectionFactory;
import jakarta.jms.TopicPublisher;
import jakarta.jms.TopicSession;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.Properties;
import javax.naming.Context;
import javax.naming.InitialContext;

/**
 *
 * @author kamlendu
 */
@WebServlet(name = "SenderServlet", urlPatterns = {"/SenderServlet"})
public class SenderServlet extends HttpServlet {

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
            out.println("<title>Servlet SenderServlet</title>");
            out.println("</head>");
            out.println("<body>");
            try{
                
                Properties p = new Properties();
                p.setProperty(Context.PROVIDER_URL, "mq://localhost:7676");
                
                InitialContext ic = new InitialContext(p);
                
                Queue queue = (Queue) ic.lookup("jms/itqueue");
                QueueConnectionFactory qcf = (QueueConnectionFactory) ic.lookup("jms/itqueueFactory");
                QueueConnection qcon = qcf.createQueueConnection();
                QueueSession qsession = qcon.createQueueSession(true, 0);
                MessageProducer mp = qsession.createProducer(queue);
                TextMessage tm = qsession.createTextMessage();
                tm.setText("Message Sent to Queue Beans from Sender Servlet...");
                mp.send(tm);
                
            InitialContext ic1 = new InitialContext(p);
                
                Topic topic = (Topic) ic1.lookup("jms/ittopic");
                TopicConnectionFactory tcf = (TopicConnectionFactory) ic1.lookup("jms/ittopicFactory");
                TopicConnection tcon = tcf.createTopicConnection();
                TopicSession tsession = tcon.createTopicSession(true, 0);
                TopicPublisher tp = tsession.createPublisher(topic);
                TextMessage ttm = tsession.createTextMessage();
                ttm.setText("Message Sent to Topic Beans from Sender Servlet...");
                tp.publish(ttm);
            
            
            
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
            
            out.println("<h1>Servlet SenderServlet at " + request.getContextPath() + "</h1>");
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
