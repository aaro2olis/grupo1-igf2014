package dominio;
// Generated 11-01-2014 10:14:49 AM by Hibernate Tools 3.6.0


import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * Establecimiento generated by hbm2java
 */
@Entity
@Table(name="establecimiento"
    ,catalog="g1"
)
public class Establecimiento  implements java.io.Serializable {


     private short numReferencia;
     private String establecimiento;
     private String domicilio;
     private Date fechIngreso;
     private String activo;
     private Set clientetarjetaestados = new HashSet(0);
  
    public Establecimiento() {
    }

	
    public Establecimiento(short numReferencia, String establecimiento, String domicilio, Date fechIngreso, String activo) {
        this.numReferencia = numReferencia;
        this.establecimiento = establecimiento;
        this.domicilio = domicilio;
        this.fechIngreso = fechIngreso;
        this.activo = activo;
    }
    public Establecimiento(short numReferencia, String establecimiento, String domicilio, Date fechIngreso, String activo, Set clientetarjetaestados) {
       this.numReferencia = numReferencia;
       this.establecimiento = establecimiento;
       this.domicilio = domicilio;
       this.fechIngreso = fechIngreso;
       this.activo = activo;
       this.clientetarjetaestados = clientetarjetaestados;
    }
   
     @Id 

    
    @Column(name="num_referencia", unique=true, nullable=false)
    public short getNumReferencia() {
        return this.numReferencia;
    }
    
    public void setNumReferencia(short numReferencia) {
        this.numReferencia = numReferencia;
    }

    
    @Column(name="establecimiento", nullable=false, length=35)
    public String getEstablecimiento() {
        return this.establecimiento;
    }
    
    public void setEstablecimiento(String establecimiento) {
        this.establecimiento = establecimiento;
    }

    
    @Column(name="domicilio", nullable=false, length=45)
    public String getDomicilio() {
        return this.domicilio;
    }
    
    public void setDomicilio(String domicilio) {
        this.domicilio = domicilio;
    }

    @Temporal(TemporalType.DATE)
    @Column(name="fech_ingreso", nullable=false, length=10)
    public Date getFechIngreso() {
        return this.fechIngreso;
    }
    
    public void setFechIngreso(Date fechIngreso) {
        this.fechIngreso = fechIngreso;
    }

    
    @Column(name="activo", nullable=false, length=1)
    public String getActivo() {
        return this.activo;
    }
    
    public void setActivo(String activo) {
        this.activo = activo;
    }

//@OneToMany(fetch=FetchType.LAZY, mappedBy="establecimiento")
  /*  public Set getClientetarjetaestados() {
        return this.clientetarjetaestados;
    }
    
    public void setClientetarjetaestados(Set clientetarjetaestados) {
        this.clientetarjetaestados = clientetarjetaestados;
    }*/




}


