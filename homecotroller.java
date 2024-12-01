package com.example.demo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class homecotroller
{
	@Autowired
	gharservices g1;
	
	
	@RequestMapping("/")
	public String one()
	{
		System.out.println("hi");
		return "register";
	}
	@PostMapping("submitdata")
	public String two(@ModelAttribute("pa") ghar pa )
	{
		System.out.println(pa);
		
		g1.alldata(pa);
		return "login";
		
	}
	
	@RequestMapping("/login")
	public String post()
	{
		return "login";
		
	}
	
	@RequestMapping("/display")
	public String displaydata(Model m)
	{
		List<ghar>po=g1.allinformation();
		m.addAttribute("oppo", po);
		return "display";
		
	}
	@RequestMapping("/deletepage/{id}")
	public String delete(@PathVariable int id)
	{
		System.out.println(id);
		g1.delete(id);
		return"redirect:/display";
		
	}
	
	@RequestMapping("/Editpage/{id}")
	public String edite(@PathVariable int id,Model m)
	{
		ghar pl=g1.getsinle(id);
		System.out.println(pl);
		m.addAttribute("kk", pl);
		return "Editpage";
		
	}
	
	@PostMapping("/updatedata")
	public String onedata(@ModelAttribute("p1") ghar p1)
	{
		System.out.println(p1);
		
		ghar g2 =new ghar();
		
		g2.setId(p1.getId());
		g2.setFname(p1.getFname());
		g2.setLname(p1.getLname());
		g2.setEmail(p1.getEmail());
		g2.setMobile(p1.getMobile());
		g2.setPassword(p1.getPassword());
		g2.setConpass(p1.getConpass());
		g2.setGender(p1.getGender());
		
		g1.alldata(g2);
		
		return "redirect:/display";
		
	}
	
	@GetMapping("/LoginData")
	public String LOgindatai(@RequestParam("Email") String email,@RequestParam String Pass)
	{
	        ghar op=g1.datalogin(email, Pass);
	        System.out.println(op);
		
		if(op==null)
		{
		return"login";
		}
		return "redirect:/display";
		
	}
}
