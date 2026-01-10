/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/ServletListener.java to edit this template
 */
package listener;

import jakarta.servlet.ServletContextAttributeEvent;
import jakarta.servlet.ServletContextAttributeListener;
import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.http.HttpSessionAttributeListener;
import jakarta.servlet.http.HttpSessionBindingEvent;
import jakarta.servlet.http.HttpSessionEvent;
import jakarta.servlet.http.HttpSessionListener;
import java.util.Date;

/**
 * Web application lifecycle listener.
 *
 * @author kamlendu
 */
public class MyListener implements ServletContextListener, ServletContextAttributeListener, HttpSessionListener, HttpSessionAttributeListener {

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        
        System.out.println("Application is Deployed on "+ new Date().toString());
        sce.getServletContext().setAttribute("company", "ABC Ltd.");
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        
         System.out.println("Application is Undeployed  on "+ new Date().toString());
        // sce.getServletContext().removeAttribute("company");
    }

    @Override
    public void attributeAdded(ServletContextAttributeEvent event) {
        
       System.out.println("An attribute is added with name : "+event.getName() + " and value "+ event.getValue());
    }

    @Override
    public void attributeRemoved(ServletContextAttributeEvent event) {
    }

    @Override
    public void attributeReplaced(ServletContextAttributeEvent event) {
    }

    @Override
    public void sessionCreated(HttpSessionEvent se) {
        
        se.getSession().setAttribute("num", "13456");
    
           System.out.println("Session  is created  on "+ new Date().toString());
 
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent se) {
        
                System.out.println("Session  is destroyed  on "+ new Date().toString());
 
    }

    @Override
    public void attributeAdded(HttpSessionBindingEvent event) {
    }

    @Override
    public void attributeRemoved(HttpSessionBindingEvent event) {
    }

    @Override
    public void attributeReplaced(HttpSessionBindingEvent event) {
    }
}
