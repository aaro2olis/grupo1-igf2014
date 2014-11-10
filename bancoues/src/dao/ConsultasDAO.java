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
	public Cliente getCliente(int id) {
Cliente tipo=null;
		try {
			iniciaOperacion() ;
			tipo=(Cliente)sesion.get(Cliente.class, id) ;
			
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
	public List getListaCliente() {
		List  tipo=null;
		try {
			iniciaOperacion() ;
			tipo=sesion.createCriteria(Cliente.class).list() ;
			
		} catch (HibernateException he) {
		
		//	manejaExcepcion(he) ;
	
		} finally {
			sesion.close() ;
		}
		System.out.println(tipo.size());

		return tipo;
	}
	
	
	public List getListaPais() {
		List  Lpais=null;
		try {
			iniciaOperacion() ;
			Lpais=sesion.createCriteria(Pais.class).list() ;
			
		} catch (HibernateException he) {
		
		//	manejaExcepcion(he) ;
	
		} finally {
			sesion.close() ;
		}
		System.out.println(Lpais.size());

		return Lpais;
	}
	
	
	
	/////////////////////////////////////////////////////////////////////////////
	
	
	
	public List getListaIdCliente() {
		List  Lid=null;
		try {
			iniciaOperacion() ;
			 Lid=sesion.createCriteria(Cliente.class).list() ;
			
		} catch (HibernateException he) {
		
		//	manejaExcepcion(he) ;
	
		} finally {
			sesion.close() ;
		}
		System.out.println(Lid.size());

		return  Lid;
	}
	
	
////////////////////////////////////////////////////////////
	public boolean isConcepto(Integer var) {
		Concepto concepto=null;
		try {
			iniciaOperacion() ;
			concepto=(Concepto)sesion.get(Concepto.class, var) ;
			
		} catch (HibernateException he) {
		
			manejaExcepcion(he) ;
			throw he ;
		} finally {
			sesion.close() ;
		}
		if(concepto==null)
			return false;
		else
			return true;
	}
	
	public List getListaConcepto() {
		List  Lconcepto=null;
		try {
			iniciaOperacion() ;
			Lconcepto=sesion.createCriteria(Concepto.class).list() ;
			
		} catch (HibernateException he) {
		
		//	manejaExcepcion(he) ;
	
		} finally {
			sesion.close() ;
		}
		System.out.println(Lconcepto.size());

		return Lconcepto;
	}

	///////////////////////////////////////////////////////////////
	
	public boolean isEstablecimiento(short var) {
		Establecimiento establecimiento=null;
		try {
			iniciaOperacion() ;
			establecimiento=(Establecimiento)sesion.get(Establecimiento.class, var) ;
			
		} catch (HibernateException he) {
		
			manejaExcepcion(he) ;
			throw he ;
		} finally {
			sesion.close() ;
		}
		if(establecimiento==null)
			return false;
		else
			return true;
	}
	
	public List getListaEstablecimiento() {
		List  Lestablecimiento=null;
		try {
			iniciaOperacion() ;
			Lestablecimiento=sesion.createCriteria(Establecimiento.class).list() ;
			
		} catch (HibernateException he) {
		
		//	manejaExcepcion(he) ;
	
		} finally {
			sesion.close() ;
		}
		System.out.println(Lestablecimiento.size());

		return Lestablecimiento;
	}
	
	/////////////////////////////////////////////////////////////////////////
	public boolean isTarjetaCredito(Integer var){
		Tarjetacredito tarjetaCredito=null;
		try {
			iniciaOperacion() ;
			tarjetaCredito=(Tarjetacredito)sesion.get(Tarjetacredito.class, var) ;
			
		} catch (HibernateException he) {
		
			manejaExcepcion(he) ;
			throw he ;
		} finally {
			sesion.close() ;
		}
		if(tarjetaCredito==null)
			return false;
		else
			return true;
	}
	
	public List getListaTarjetaCredito() {
		List  LtarjetaCredito=null;
		try {
			iniciaOperacion() ;
			LtarjetaCredito=sesion.createCriteria(Tarjetacredito.class).list() ;
			
		} catch (HibernateException he) {
		
		//	manejaExcepcion(he) ;
	
		} finally {
			sesion.close() ;
		}
		System.out.println(LtarjetaCredito.size());

		return LtarjetaCredito;
	}
//////////////////////////////////////////////////////////////
	public List getListaClienteTarjetaEstado() {
		List  LtarClienteTarjetaEstado=null;
		try {
			iniciaOperacion() ;
			LtarClienteTarjetaEstado=sesion.createCriteria(Clientetarjetaestado.class).list() ;
			
		} catch (HibernateException he) {
		
		//	manejaExcepcion(he) ;
	
		} finally {
			sesion.close() ;
		}
		System.out.println(LtarClienteTarjetaEstado.size());

		return LtarClienteTarjetaEstado;
	}
	
	/////////////////////////////////////
	public List getListaClienteTarjetaEstadoId() {
		List  LtarClienteTarjetaEstadoId=null;
		try {
			iniciaOperacion() ;
			LtarClienteTarjetaEstadoId=sesion.createCriteria(ClientetarjetaestadoId.class).list() ;
			
		} catch (HibernateException he) {
		
		//	manejaExcepcion(he) ;
	
		} finally {
			sesion.close() ;
		}
		System.out.println(LtarClienteTarjetaEstadoId.size());

		return LtarClienteTarjetaEstadoId;
	}
	
}
