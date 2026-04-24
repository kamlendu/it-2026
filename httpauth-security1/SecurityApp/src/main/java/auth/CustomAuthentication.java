/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package auth;

import jakarta.enterprise.context.RequestScoped;
import jakarta.inject.Inject;
import jakarta.inject.Named;
import jakarta.security.enterprise.AuthenticationException;
import jakarta.security.enterprise.AuthenticationStatus;
import jakarta.security.enterprise.authentication.mechanism.http.HttpAuthenticationMechanism;
import jakarta.security.enterprise.authentication.mechanism.http.HttpMessageContext;
import jakarta.security.enterprise.credential.Credential;
import jakarta.security.enterprise.credential.Password;
import jakarta.security.enterprise.credential.UsernamePasswordCredential;
import jakarta.security.enterprise.identitystore.CredentialValidationResult;
import static jakarta.security.enterprise.identitystore.CredentialValidationResult.Status.VALID;
import jakarta.security.enterprise.identitystore.IdentityStoreHandler;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.Serializable;
import record.KeepRecord;

/**
 *
 * @author kamlendu
 */

@Named
@RequestScoped
public class CustomAuthentication implements HttpAuthenticationMechanism, Serializable {
    
    @Inject IdentityStoreHandler handler;
    CredentialValidationResult result;
    AuthenticationStatus status;
    Credential credential;
    String username;
    String password;
    @Inject KeepRecord keepRecord;
    
    
    

    @Override
    public AuthenticationStatus validateRequest(HttpServletRequest request, HttpServletResponse response, HttpMessageContext ctx) throws AuthenticationException {
       // throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
   
       try{
           
             if(request.getRequestURI().contains("logout"))
        {
            request.logout();
            keepRecord.reset();
            response.sendRedirect("index.jsp");
            return ctx.doNothing();
        }
        
       
       if(request.getParameter("username")!=null)
       {
       
           username = request.getParameter("username");
           password = request.getParameter("password");
           
           credential = new UsernamePasswordCredential(username, new Password(password));
           
           result = handler.validate(credential);
           
           if(result.getStatus()== VALID)
           {
           
               status = ctx.notifyContainerAboutLogin(result);
               keepRecord.setCredential(credential);
               keepRecord.setPrincipal(result.getCallerPrincipal());
               keepRecord.setRoles(result.getCallerGroups());
               keepRecord.setUsername(username);
               keepRecord.setPassword(password);
               
              
               if(request.getRequestURI().contains("index.jsp"))
               {
                   request.setAttribute("user", username);
                   if(result.getCallerGroups().contains("Admin"))
                   {
                       status = ctx.notifyContainerAboutLogin(result);
                        request.getRequestDispatcher("/admin.jsp").forward(request, response);
                        return status;
                   }
                 else  if(result.getCallerGroups().contains("Supervisor"))
                   {
                       status = ctx.notifyContainerAboutLogin(result);
                        request.getRequestDispatcher("/users.jsp").forward(request, response);
                        return status;
                   }
                   else
                 {
                      request.setAttribute("error", "Either username or password is incorrect..");
                    request.getRequestDispatcher("/index.jsp").forward(request, response);
                    return ctx.doNothing();
                 }
                   
               }
         
           }
           else
           {
               request.setAttribute("error", "Either username or password is incorrect..");
               request.getRequestDispatcher("/index.jsp").forward(request, response);
               return ctx.doNothing();
           }
    
       }
       
       }
       catch(Exception ex)
       {
           ex.printStackTrace();
           return ctx.doNothing();
       }
       
       if(keepRecord.getPrincipal()!=null)
       {
          status= ctx.notifyContainerAboutLogin(keepRecord.getPrincipal(), keepRecord.getRoles());
           return status;
       }
       
       
     return ctx.doNothing();
    }
    
    
    
    
}
