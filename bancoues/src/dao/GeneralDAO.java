package dao;

import org.hibernate.*;

import utilidades.HibernateUtil;

public class GeneralDAO {
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
	
	public void guardar(Object var) {
		try {
			iniciaOperacion() ;
			sesion.save(var) ;
			tx.commit() ;
			sesion.flush() ;
		} catch (HibernateException he) {
		
			manejaExcepcion(he) ;
			throw he ;
		} finally {
			sesion.close() ;
		}
	}
	
	
	public void Actualiza(Object var) {
		try {
			iniciaOperacion() ;
			sesion.update(var) ;
			tx.commit() ;
			sesion.flush() ;
		} catch (HibernateException he) {
			manejaExcepcion(he) ;
			throw he ;
		} finally {
			sesion.close() ;
		}
	}
	public void eliminar(Object var) {
		try {
			iniciaOperacion() ;
			sesion.delete(var) ;
			tx.commit() ;
			sesion.flush() ;
		} catch (HibernateException he) {
			manejaExcepcion(he) ;
			throw he ;
		} finally {
			sesion.close() ;
		}
	}
	


}
