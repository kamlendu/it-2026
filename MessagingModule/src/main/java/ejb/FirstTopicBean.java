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
import jakarta.jms.TextMessage;

/**
 *
 * @author kamlendu
 */
@MessageDriven(activationConfig = {
    @ActivationConfigProperty(propertyName = "clientId", propertyValue = "client1"),
    @ActivationConfigProperty(propertyName = "destinationLookup", propertyValue = "jms/ittopic"),
    @ActivationConfigProperty(propertyName = "subscriptionDurability", propertyValue = "Durable"),
    @ActivationConfigProperty(propertyName = "subscriptionName", propertyValue = "jms/ittopic"),
    @ActivationConfigProperty(propertyName = "destinationType", propertyValue = "jakarta.jms.Topic")
})
public class FirstTopicBean implements MessageListener {
    
    public FirstTopicBean() {
    }
    
    @Override
    public void onMessage(Message message) {
        
          try{
        TextMessage tm = (TextMessage) message;
        
        String msg = tm.getText();
        
        System.out.println("First Topic Bean recieved : "+ msg);
        
        }
        catch(JMSException  je)
        {
            je.printStackTrace();
        }
    }
    
}
