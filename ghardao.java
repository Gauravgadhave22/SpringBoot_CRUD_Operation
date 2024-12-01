package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ghardao implements gharservices {

	@Autowired
	repository r1;
	
	@Override
	public void alldata(ghar g1) 
	{
		r1.save(g1);

	}

	@Override
	public java.util.List<ghar> allinformation() {
		
		return r1.findAll();
	}

	@Override
	public void delete(int id) {
		r1.deleteById(id);
	}

	@Override
	public ghar getsinle(int id) {
		return r1.getById(id);
	}



	@Override
	public ghar datalogin(String Email, String Pass) {
		
		return r1.findByEmailAndPassword(Email, Pass);
	}

	

	
}
