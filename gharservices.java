package com.example.demo;

import java.util.List;

public interface gharservices 
{
 public void alldata(ghar g1);
 
 public List<ghar> allinformation();
 
 public void delete(int id);
 
 public ghar getsinle(int id);
 
 public ghar datalogin(String Email,String Pass);
}
 