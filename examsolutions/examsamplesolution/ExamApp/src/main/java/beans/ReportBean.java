/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSF/JSFManagedBean.java to edit this template
 */
package beans;

import ejb.ExamBeanLocal;
import entity.Category;
import entity.Productmaster;
import java.util.Collection;
import javax.ejb.EJB;
import javax.inject.Named;
import javax.enterprise.context.RequestScoped;

/**
 *
 * @author root
 */
@Named(value = "reportBean")
@RequestScoped
public class ReportBean {
    @EJB ExamBeanLocal ebl;

    int catid;
    Collection<Productmaster> products;
    Collection<Category> categories;
    /**
     * Creates a new instance of ReportBean
     */
    public ReportBean() {
    }

    public int getCatid() {
        return catid;
    }

    public void setCatid(int catid) {
        this.catid = catid;
    }

    public Collection<Productmaster> getProducts() {
       
        products = ebl.getProductsByCategory(catid);
        
        return products;
    }

    public void setProducts(Collection<Productmaster> products) {
        this.products = products;
    }

    public Collection<Category> getCategories() {
        categories= ebl.getAllCategories();
        return categories;
    }

    public void setCategories(Collection<Category> categories) {
        this.categories = categories;
    }
    
    public String displayReport()
    {
        return "DisplayReport.jsf";
    }
    
}
