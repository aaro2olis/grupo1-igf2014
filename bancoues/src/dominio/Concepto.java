package dominio;
// Generated 11-01-2014 10:14:49 AM by Hibernate Tools 3.6.0


import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Concepto generated by hbm2java
 */
@Entity
@Table(name="concepto"
    ,catalog="g1"
)
public class Concepto  implements java.io.Serializable {


     private Integer idConcepto;
     private String descripcion;
     private Set transaccions = new HashSet(0);

    public Concepto() {
    }

	
    public Concepto(String descripcion) {
        this.descripcion = descripcion;
    }
    public Concepto(String descripcion, Set transaccions) {
       this.descripcion = descripcion;
       this.transaccions = transaccions;
    }
   
     @Id @GeneratedValue(strategy=IDENTITY)

    
    @Column(name="idConcepto", unique=true, nullable=false)
    public Integer getIdConcepto() {
        return this.idConcepto;
    }
    
    public void setIdConcepto(Integer idConcepto) {
        this.idConcepto = idConcepto;
    }

    
    @Column(name="descripcion", nullable=false, length=45)
    public String getDescripcion() {
        return this.descripcion;
    }
    
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

//@OneToMany(fetch=FetchType.LAZY, mappedBy="concepto")
  /*  public Set getTransaccions() {
        return this.transaccions;
    }
    
    public void setTransaccions(Set transaccions) {
        this.transaccions = transaccions;
    }*/




}

