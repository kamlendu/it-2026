
package listener;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import jakarta.faces.event.PhaseEvent;
import jakarta.faces.event.PhaseId;
import jakarta.faces.event.PhaseListener;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


public class ListenPhase implements PhaseListener {

    @Override
    public void afterPhase(PhaseEvent event) {
        //do nothing
        
        if(event.getPhaseId()== PhaseId.RESTORE_VIEW)
                {
                    
                }
        
    }

    @Override
    public void beforePhase(PhaseEvent event) {
        //System.out.println("Phase listener executed");
        
      //  if(event.getPhaseId()==PhaseId.APPLY_REQUEST_VALUES)
       
        HttpServletRequest objHttpServletRequest = (HttpServletRequest) event.getFacesContext().getExternalContext().getRequest();

      //  System.out.println(objHttpServletRequest.getRequestURL().toString());
        if(objHttpServletRequest.getRequestURL().toString().contains("/Restricted/")){

            HttpSession objHttpSession = (HttpSession)event.getFacesContext().getExternalContext().getSession(true);

            if(objHttpSession.getAttribute("username") == null){

                HttpServletResponse objHttpServletResponse = (HttpServletResponse)event.getFacesContext().getExternalContext().getResponse();

                try {
                    objHttpServletResponse.sendRedirect("/LoginRegistration/index.jsf");
                    event.getFacesContext().responseComplete();
                } catch (IOException ex) {
                    Logger.getLogger(ListenPhase.class.getName()).log(Level.SEVERE, null, ex);
                }

            }
        }
    }

    @Override
    public PhaseId getPhaseId() {
        return PhaseId.ANY_PHASE;
    }

}
