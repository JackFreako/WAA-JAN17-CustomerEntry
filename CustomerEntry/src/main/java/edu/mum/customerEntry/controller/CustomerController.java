/**
 * 
 */
package edu.mum.customerEntry.controller;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import edu.mum.customerEntry.domain.Customer;

/**
 * @author yared
 *
 */

@Controller
public class CustomerController {
	
	@RequestMapping(value={"/add"},method=RequestMethod.GET)
	public String getAddCustomerForm(@ModelAttribute("newCustomer") Customer customer)
	{
		return "CustomerEntryForm";
	}
	
	
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String processCustomerForm(@ModelAttribute("newCustomer") @Valid Customer customer,
									BindingResult result, RedirectAttributes redirectAttributes){
		
		if(result.hasErrors()){
			return "CustomerEntryForm";
		}
		
		
		redirectAttributes.addFlashAttribute(customer);
		
		return "redirect:/details";
	}
	
	@RequestMapping(value="/details",method=RequestMethod.GET)
	public String showCustomerDetails(){		
		return "CustomerDetails";
	}
	
}
