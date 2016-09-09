package com.controler;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import java.util.List;
import com.DAO.ProductDAO;
import com.model.Product;
import com.google.gson.Gson;
@Controller
public class ProductController 
{
	@Autowired
	 ProductDAO objDAO;
	@RequestMapping("/Product")
	public String showproduct(Model m)
	{
		

		List<Product> li=objDAO.getProduct();
				Gson gson = new Gson();
       String jsonNames = gson.toJson(li);
       // System.out.println("jsonNames = " + jsonNames);
       m.addAttribute("proddt",jsonNames);
        return "Product";
       // return new ModelAndView("Product","li",li);

	}

}
