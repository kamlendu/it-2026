package ejb;

import jakarta.ejb.Local;

@Local
public interface ConverterLocal
{
 double convert(String from, String to, double amount);

}
