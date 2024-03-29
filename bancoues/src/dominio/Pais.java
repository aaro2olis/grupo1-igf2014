package dominio;
// Generated 11-01-2014 10:14:49 AM by Hibernate Tools 3.6.0


import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * Pais generated by hbm2java
 */
@Entity
@Table(name="pais"
    ,catalog="g1"
)
public class Pais  implements java.io.Serializable {


     private short idPais;
     private String nombrePais;
     private Set transaccions = new HashSet(0);

    public Pais() {
    }

	
    public Pais(short idPais, String nombrePais) {
        this.idPais = idPais;
        this.nombrePais = nombrePais;
    }
    public Pais(short idPais, String nombrePais, Set transaccions) {
       this.idPais = idPais;
       this.nombrePais = nombrePais;
       this.transaccions = transaccions;
    }
   
     @Id 

    
    @Column(name="idPais", unique=true, nullable=false)
    public short getIdPais() {
        return this.idPais;
    }
    
    public void setIdPais(short idPais) {
        this.idPais = idPais;
    }

    
    @Column(name="nombre_pais", nullable=false, length=45)
    public String getNombrePais() {
        return this.nombrePais;
    }
    
    public void setNombrePais(String nombrePais) {
        this.nombrePais = nombrePais;
    }
    /*
@OneToMany(fetch=FetchType.LAZY, mappedBy="pais")
  public Set getTransaccions() {
        return this.transaccions;
    }
    
    public void setTransaccions(Set transaccions) {
        this.transaccions = transaccions;
    }
*/



}


