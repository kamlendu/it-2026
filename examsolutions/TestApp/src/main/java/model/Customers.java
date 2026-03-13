/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import jakarta.enterprise.context.ApplicationScoped;
import jakarta.inject.Named;
import java.util.ArrayList;
import java.util.Collection;

/**
 *
 * @author kamlendu
 */
@ApplicationScoped
@Named
public class Customers {

    Collection<Customer> custs;

    public Customers() {
       // custs = new CopyOnWriteArrayList<>();
        custs = new ArrayList<>();
        custs.add(new Customer(1, "dsd", "rgrg", "Surat", "Gujarat", "3456", "9466612", 800.0));
        custs.add(new Customer(2, "tmt", "rgrg", "Surat", "Gujarat", "3456", "9466612", 800.0));
        custs.add(new Customer(3, "dsd", "fotro", "Surat", "Gujarat", "3456", "9466612", 800.0));
        custs.add(new Customer(4, "dsd", "grep", "Vadodara", "Gujarat", "3456", "9466612", 800.0));
        custs.add(new Customer(5, "sudo", "rgrg", "Vadodara", "Gujarat", "3456", "9466612", 800.0));

    }

    public Collection<Customer> getCusts() {
        return custs;
    }

//    public void setCusts(Collection<Customer> custs) {
//        this.custs = custs;
//    }
    public void add(Customer c) {
        custs.add(c);
//        for (Customer c1 : custs) {
//            System.out.println("cust name : " + c1.getCustomerName());
//        }
        // setCusts(custs);
    }

    public Collection<Customer> getCustomerByCity(String city) {
        Collection<Customer> custs1 = new ArrayList<>();
        for (Customer c : custs) {
            if (c.city.equals(city)) {
                custs1.add(c);
            }
        }
        return custs1;
    }
}
