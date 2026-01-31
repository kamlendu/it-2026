/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/J2EE/EJB30/MessageDrivenBean.java to edit this template
 */
package ejb;

import jakarta.ejb.ActivationConfigProperty;
import jakarta.ejb.MessageDriven;
import jakarta.jms.JMSException;
import jakarta.jms.Message;
import jakarta.jms.MessageListener;
import jakarta.jms.MessageProducer;
import jakarta.jms.Queue;
import jakarta.jms.QueueConnection;
import jakarta.jms.QueueConnectionFactory;
import jakarta.jms.QueueSession;
import jakarta.jms.TextMessage;
import java.util.Properties;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;

/**
 *
 * @author kamlendu
 */
@MessageDriven(activationConfig = {
    @ActivationConfigProperty(propertyName = "clientId", propertyValue = "jms/itqueue2"),
    @ActivationConfigProperty(propertyName = "destinationLookup", propertyValue = "jms/itqueue"),
    @ActivationConfigProperty(propertyName = "subscriptionDurability", propertyValue = "Durable"),
    @ActivationConfigProperty(propertyName = "subscriptionName", propertyValue = "jms/itqueue"),
    @ActivationConfigProperty(propertyName = "destinationType", propertyValue = "jakarta.jms.Queue")
})
public class SecondQueueBean implements MessageListener {
    
    public SecondQueueBean() {
    }
    
    @Override
    public void onMessage(Message message) {
        
          try{
        TextMessage tm = (TextMessage) message;
        
        String msg = tm.getText();
        
        System.out.println("Second Queue Bean recieved : "+ msg);
          Properties p = new Properties();
                p.setProperty(Context.PROVIDER_URL, "mq://localhost:7676");
                
                InitialContext ic = new InitialContext(p);
                
                Queue queue = (Queue) ic.lookup("jms/mware");
                QueueConnectionFactory qcf = (QueueConnectionFactory) ic.lookup("jms/mwareFactory");
                QueueConnection qcon = qcf.createQueueConnection();
                QueueSession qsession = qcon.createQueueSession(true, 0);
                MessageProducer mp = qsession.createProducer(queue);
                TextMessage txt = qsession.createTextMessage();
                txt.setText("Send By SecondQueue : Message Sent to Servlet...");
                mp.send(txt);
        }
        
        catch(JMSException|NamingException  je)
        {
            je.printStackTrace();
        }
    }
    
}
