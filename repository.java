package com.example.demo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface repository extends JpaRepository<ghar, Integer>
{

	public ghar findByEmailAndPassword(String Email,String Pass);
}
