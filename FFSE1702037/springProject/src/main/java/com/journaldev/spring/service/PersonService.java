package com.journaldev.spring.service;

import java.math.BigInteger;
import java.util.List;

import com.journaldev.spring.model.Person;

public interface PersonService {

	public void addPerson(Person p);
	public void updatePerson(Person p);
	public List<Person> listPersons(int position);
	public Person getPersonById(int id);
	public void removePerson(int id);
	public BigInteger countPersons();
	
}