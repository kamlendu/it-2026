/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package auth;

import beans.LoginBean;
import jakarta.security.enterprise.authentication.mechanism.http.HttpAuthenticationMechanism;
import java.io.Serializable;
import jakarta.enterprise.context.RequestScoped;
import jakarta.inject.Inject;
import jakarta.inject.Named;
import jakarta.security.enterprise.AuthenticationException;
import jakarta.security.enterprise.AuthenticationStatus;
import jakarta.security.enterprise.authentication.mechanism.http.HttpMessageContext;
import jakarta.security.enterprise.credential.Credential;
import jakarta.security.enterprise.credential.Password;
import jakarta.security.enterprise.credential.UsernamePasswordCredential;
import jakarta.security.enterprise.identitystore.CredentialValidationResult;
import jakarta.security.enterprise.identitystore.CredentialValidationResult.Status;
import jakarta.security.enterprise.identitystore.IdentityStoreHandler;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import static jwtrest.Constants.AUTHORIZATION_HEADER;
import static jwtrest.Constants.BEARER;
import jwtrest.JWTCredential;
import jwtrest.TokenProvider;
import record.KeepRecord;

/**
 *
 * @author root
 */
@Named
@RequestScoped
public class SecureAuthentication implements HttpAuthenticationMechanism, Serializable {

    @Inject
    IdentityStoreHandler handler;
    CredentialValidationResult result;
    AuthenticationStatus status;
   
    @Inject
    LoginBean lbean;
    @Inject KeepRecord keepRecord;

    @Override
    public AuthenticationStatus validateRequest(HttpServletRequest request, HttpServletResponse response, HttpMessageContext ctx) throws AuthenticationException {
        //  throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.

        try {
            if (request.getRequestURI().contains("Logout")) {
                request.logout();
                keepRecord.reset();
                response.sendRedirect("Login.jsf");
                return ctx.doNothing();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

      
        try {
            System.out.println("Name = " + request.getParameter("username"));
           
            if (request.getParameter("username") != null) {
                String username = request.getParameter("username");
                String password = request.getParameter("password");
                System.out.println("In Auth");
//                String username = lbean.getUsername();
//                String password = lbean.getPassword();
//                
                Credential credential = new UsernamePasswordCredential(username, new Password(password));
                result = handler.validate(credential);

                if (result.getStatus() == Status.VALID) {
                    keepRecord.setErrorStatus("");
                    status = ctx.notifyContainerAboutLogin(result);

                 
                    keepRecord.setPrincipal(result.getCallerPrincipal());
                    keepRecord.setUsername(username);
                    keepRecord.setPassword(password);
                    System.out.println("in auth user : "+ keepRecord.getUsername());
                    keepRecord.setRoles(result.getCallerGroups());
                    keepRecord.setCredential(credential);
                
               if(!(request.getRequestURI().contains("secure"))){
                    if (result.getCallerGroups().contains("Admin")) {
                        request.getRequestDispatcher("admin/Admin.jsf").forward(request, response);
                        return status;
                    }
                    if (result.getCallerGroups().contains("Supervisor")) {
                        request.getRequestDispatcher("user/User.jsf").forward(request, response);
                        return status;
                    }

                    
               
                 else {
                    keepRecord.setErrorStatus("Either Username or Password is wrong !");
                    response.sendRedirect("Login.jsf");

                    //lbean.setStatus(AuthenticationStatus.SEND_FAILURE);
                    return ctx.doNothing();
                    // request.getServletContext().getRequestDispatcher("/Login.jsf").forward(request, response);
                
               }
               }
               
                }
            }
            
            if(keepRecord.getPrincipal()!=null)
            {
                result = handler.validate(keepRecord.getCredential());
                status = ctx.notifyContainerAboutLogin(result);
            }

               //   System.out.println("keep user :"+ keepRecord.getPrincipal().getName());
     
          

        } catch (Exception e) {
            e.printStackTrace();
        }

      
        return ctx.doNothing();
    }

   }

