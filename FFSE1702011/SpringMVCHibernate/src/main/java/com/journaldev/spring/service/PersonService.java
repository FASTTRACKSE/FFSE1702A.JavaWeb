package com.journaldev.spring.service;

import java.io.Serializable;
import java.util.List;

import com.journaldev.spring.model.Person;

public interface PersonService extends Serializable {

	public void addPerson(Person p);
	public void updatePerson(Person p);
	//public List<Person> listPersons();
	public Person getPersonById(int id);
	public void removePerson(int id);
	public List<Person> findAll(Integer offset, Integer maxResult);
    public Long count();
	
}