package dominio;
// Generated 11-01-2014 10:14:49 AM by Hibernate Tools 3.6.0


import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Embeddable;

/**
 * ClientetarjetaestadoId generated by hbm2java
 */
@Embeddable
public class ClientetarjetaestadoId  implements java.io.Serializable {


     private Date fechaLimtePago;
     private int idCliente;
     private int idTarjetaCredito;

    public ClientetarjetaestadoId() {
    }

    public ClientetarjetaestadoId(Date fechaLimtePago, int idCliente, int idTarjetaCredito) {
       this.fechaLimtePago = fechaLimtePago;
       this.idCliente = idCliente;
       this.idTarjetaCredito = idTarjetaCredito;
    }
   


    @Column(name="fechaLimtePago", nullable=false, length=10)
    public Date getFechaLimtePago() {
        return this.fechaLimtePago;
    }
    
    public void setFechaLimtePago(Date fechaLimtePago) {
        this.fechaLimtePago = fechaLimtePago;
    }


    @Column(name="idCliente", nullable=false)
    public int getIdCliente() {
        return this.idCliente;
    }
    
    public void setIdCliente(int idCliente) {
        this.idCliente = idCliente;
    }


    @Column(name="idTarjetaCredito", nullable=false)
    public int getIdTarjetaCredito() {
        return this.idTarjetaCredito;
    }
    
    public void setIdTarjetaCredito(int idTarjetaCredito) {
        this.idTarjetaCredito = idTarjetaCredito;
    }


   public boolean equals(Object other) {
         if ( (this == other ) ) return true;
		 if ( (other == null ) ) return false;
		 if ( !(other instanceof ClientetarjetaestadoId) ) return false;
		 ClientetarjetaestadoId castOther = ( ClientetarjetaestadoId ) other; 
         
		 return ( (this.getFechaLimtePago()==castOther.getFechaLimtePago()) || ( this.getFechaLimtePago()!=null && castOther.getFechaLimtePago()!=null && this.getFechaLimtePago().equals(castOther.getFechaLimtePago()) ) )
 && (this.getIdCliente()==castOther.getIdCliente())
 && (this.getIdTarjetaCredito()==castOther.getIdTarjetaCredito());
   }
   
   public int hashCode() {
         int result = 17;
         
         result = 37 * result + ( getFechaLimtePago() == null ? 0 : this.getFechaLimtePago().hashCode() );
         result = 37 * result + this.getIdCliente();
         result = 37 * result + this.getIdTarjetaCredito();
         return result;
   }   


}


