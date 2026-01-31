/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package asynch;

import jakarta.annotation.Resource;
import jakarta.ejb.Asynchronous;
import jakarta.ejb.Stateless;
import jakarta.ejb.LocalBean;
import jakarta.ejb.SessionContext;

/**
 *
 * @author root
 */
@Stateless
@LocalBean
public class AsynchBean {
    @Resource SessionContext ctx;
    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
 
public int compute()
{
    AsynchBean me = ctx.getBusinessObject(AsynchBean.class);
    try{
    me.goLoopA();
    me.goLoopB();
    }
    catch(InterruptedException e){
        
    }
return 0;
}

@Asynchronous 
public  void goLoopA() throws InterruptedException
{
   for(int i=0; i<100;i++){
      Thread.sleep(1000);
       System.out.println("i= "+i);
   }
}
@Asynchronous 
public void goLoopB() throws InterruptedException
{
   for(int j=0; j<100;j++){
       Thread.sleep(1000);
       System.out.println("j= "+j);
   }
}
}
