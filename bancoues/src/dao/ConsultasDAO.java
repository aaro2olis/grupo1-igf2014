package dao;

import java.util.List;

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
	public boolean isTarjeta(int var) {
		Tarjetacredito tar=null;
		try {
			iniciaOperacion() ;
			tar=(Tarjetacredito)sesion.get(Tarjetacredito.class, var) ;
			
		} catch (HibernateException he) {
		
		//	manejaExcepcion(he) ;
	
		} finally {
			sesion.close() ;
		}
		if(tar==null)
			return false;
		else
			return true;
	}

	public boolean isCliente(int var) {
	Cliente tipo=null;
		try {
			iniciaOperacion() ;
			tipo=(Cliente)sesion.get(Cliente.class, var) ;
			
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
	public Tipocliente getTipoCliente(String var) {
		Tipocliente tipo=null;
		try {
			iniciaOperacion() ;
			tipo=(Tipocliente)sesion.get(Tipocliente.class, var) ;
			
		} catch (HibernateException he) {
		
		//	manejaExcepcion(he) ;
	
		} finally {
			sesion.close() ;
		}

			return tipo;
	
	}
	
	public List getListaTipoCliente() {
		List  tipo=null;
		try {
			iniciaOperacion() ;
			tipo=sesion.createCriteria(Tipocliente.class).list() ;
			
		} catch (HibernateException he) {
		
		//	manejaExcepcion(he) ;
	
		} finally {
			sesion.close() ;
		}
		System.out.println(tipo.size());

		return tipo;
	}
	
	
}
