package com.niit.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.dao.CartDAO;
import com.niit.dao.OrderDAO;
import com.niit.model.Cart;
import com.niit.model.OrderDetail;

@Controller
public class OrderController {
	
	@Autowired
	CartDAO cartDAO;
	
	@Autowired
	OrderDAO orderDAO;
	
	@RequestMapping(value="/Checkout")
	public String checkout(HttpSession session,Model m)
	{
		String username=(String)session.getAttribute("username");
		
		List<Cart> listCartItems=cartDAO.listCartItems(username);
		m.addAttribute("cartItems",listCartItems);
		//m.addAttribute("totalAmount",this.calcTotalAmount(listCartItems));
		return "OrderConfirm";
	}
	
	
	@RequestMapping(value="/Payment",method=RequestMethod.POST)
	public String processPayment(@RequestParam("pmode")String pmode,HttpSession session,Model m)
	{
		
		String username=(String)session.getAttribute("username");
		OrderDetail orderDetail=new OrderDetail();
		List<Cart> listCartItems=cartDAO.listCartItems(username);
		
		orderDetail.setPmode(pmode);
		//orderDetail.setTotalShoppingAmount(this.calcTotalAmount(listCartItems));
		orderDetail.setUsername(username);
		
		orderDAO.paymentProcess(orderDetail);
		
		return "ThankYou";
	}
	
/*	 public int calcTotalAmount(List<Cart> cartItems)
	  {
		int var=0,totalAmount=0;
		while(var<cartItems.size())
		{
			Cart cart=cartItems.get(var);
			totalAmount=totalAmount+(cart.getPrice()*cart.getQuantity());
			var++;
		}
		return totalAmount;
	}
*/	
	

}