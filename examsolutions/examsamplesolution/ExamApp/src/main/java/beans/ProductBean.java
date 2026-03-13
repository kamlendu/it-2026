/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSF/JSFManagedBean.java to edit this template
 */
package beans;

import ejb.ExamBeanLocal;
import entity.Category;
import entity.Productmaster;

import java.io.Serializable;
import java.util.Collection;
import javax.ejb.EJB;
import javax.enterprise.context.SessionScoped;
import javax.inject.Named;

/**
 *
 * @author root
 */
@Named(value = "productBean")
@SessionScoped
public class ProductBean implements Serializable {
    @EJB ExamBeanLocal ebl;
    
    String pname;
    double price;
    int catid;
    int pid;
  
    Productmaster current;
    Collection<Productmaster> products;
    Collection<Category> categories;
    Category category;
    

    /**
     * Creates a new instance of ProductBean
     */
    public ProductBean() {
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    
   

    
    
    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getCatid() {
        return catid;
    }

    public void setCatid(int catid) {
        this.catid = catid;
    }

    public Productmaster getCurrent() {
        return current;
    }

    public void setCurrent(Productmaster current) {
        this.current = current;
    }

    public Collection<Productmaster> getProducts() {
        return ebl.getAllProducts();
    }

    public void setProducts(Collection<Productmaster> products) {
        this.products = products;
    }

   
    public String addProduct()
    {
        ebl.addProduct(pname, price, catid);
        return "index.jsf";
    }
    
    public String updateProduct()
    {
        pname= current.getProductname();
        pid=current.getPid();
        price=current.getPrice();
        catid=current.getCategory().getId();
        
        ebl.updateProduct(pid, pname, price, catid);
        return "index.jsf";
        
    }
    
    public String deleteProduct()
    {
        ebl.deleteProduct(pid);
        return "index.jsf";
    }

   

    public Collection<Category> getCategories() {
        return ebl.getAllCategories();
    }

    public void setCategories(Collection<Category> categories) {
        this.categories = categories;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }
    
    public Category getCategoryByName(String name)
    {
        return ebl.getByCatName(name);
    }
    
    Collection<Productmaster> getProductsByCategory(int catid)
    {
        return ebl.getProductsByCategory(catid);
    }
    
    
  public String  redirectToAddProduct()
  {
      return "AddProduct.jsf";
  }
  
  public String  redirectToEditProduct()
  {
      return "EditProduct.jsf";
  }
    
}
