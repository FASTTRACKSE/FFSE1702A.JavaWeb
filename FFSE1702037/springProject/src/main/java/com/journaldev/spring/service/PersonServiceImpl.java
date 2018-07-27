package com.journaldev.spring.service;

import java.math.BigInteger;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.journaldev.spring.dao.PersonDAO;
import com.journaldev.spring.model.Person;

@Service
public class PersonServiceImpl implements PersonService {
	@Autowired
	private PersonDAO personDAO;

	@Override
	@Transactional
	public void addPerson(Person p) {
		this.personDAO.addPerson(p);
	}

	@Override
	@Transactional
	public void updatePerson(Person p) {
		this.personDAO.updatePerson(p);
	}

	@Override
	@Transactional
	public List<Person> listPersons(int position) {
		return this.personDAO.listPersons(position);
	}

	@Override
	@Transactional
	public Person getPersonById(int id) {
		return this.personDAO.getPersonById(id);
	}

	@Override
	@Transactional
	public BigInteger countPersons() {
		return this.personDAO.countPersons();
	}

	@Override
	@Transactional
	public void removePerson(int id) {
		this.personDAO.removePerson(id);
	}
	@Override
	@Transactional
	public List<Person> getByLop(int idLop) {
		return this.personDAO.getByLop(idLop);
	}

}