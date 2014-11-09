package dao;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import dominio.*;

import utilidades.HibernateUtil;

public class ConsultasDAO{
	private HibernateUtil hibernateUtil = new HibernateUtil() ;
	private SessionFactory sessionFactory = hibernateUtil.getSessionFactory();
	
	private Session sesion;
	private Transaction tx;
	
	private void iniciaOperacion() throws HibernateException {
		sesion = sessionFactory.openSession() ;
		tx = sesion.beginTransaction() ;
	}
	
	private void manejaExcepcion(HibernateException he) throws HibernateException {
		tx.rollback();
		throw new HibernateException("Ocurrió un error en la capa DAO", he);
	}
	
	public boolean isPais(short var) {
		Pais pais=null;
		try {
			iniciaOperacion() ;
			pais=(Pais)sesion.get(Pais.class, var) ;
			
		} catch (HibernateException he) {
		
			manejaExcepcion(he) ;
			throw he ;
		} finally {
			sesion.close() ;
		}
		if(pais==null)
			return false;
		else
			return true;
	}
	
	public boolean isTipoCliente(String var) {
		Tipocliente tipo=null;
		try {
			iniciaOperacion() ;
			tipo=(Tipocliente)sesion.get(Tipocliente.class, var) ;
			
		} catch (HibernateException he) {
		
		//	manejaExcepcion(he) ;
	
		} finally {
			sesion.close() ;
		}
		if(tipo==null)
			return false;
		else
			return true;
	}
	
	
	
}
