/*
 * ConverterBean.java
 *
 * Created on September 25, 2007, 1:01 AM
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package ejb;

import java.math.BigDecimal;
import jakarta.ejb.Stateless;


@Stateless
public class ConverterBean implements ConverterLocal
{
	private double USD = 0.009021;
	private double INR = 91.589100;

        @Override
	public double convert(String from, String to, double amount) 
	{
		if(from.equals(to))
		{
			return amount;
		}
		else
		{
			double toRate = findRate(to);
			double result = toRate*amount;
			return result;
		}
	}

	private double findRate(String to)
	{
		double returnValue = 0.0;
		if(to.equals("INR"))
		{
			returnValue = INR;
		}
		if(to.equals("USD"))
		{
			returnValue = USD;
		}
		return returnValue;
	}
}