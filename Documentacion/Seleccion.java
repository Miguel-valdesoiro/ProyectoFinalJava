/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package domain;

/**
 *
 * @author Curso Tarde
 */
public class Seleccion {
    private  int id_Empresa;
    private String id_Puesto;
    private String criterio_Seleccion;
     private String anuncio_Seleccion;
    private String responsable_Seleccion;
    private String genero_Responsable;
    private String tipo_Seleccion;
    private int numero_hombres;
    private int numero_mujer;

    public Seleccion() {
    }

    public Seleccion(int id_Empresa, String id_Puesto, String criterio_Seleccion, String anuncio_Seleccion, String responsable_Seleccion, String genero_Responsable, String tipo_Seleccion, int numero_hombres, int numero_mujer) {
        this.id_Empresa = id_Empresa;
        this.id_Puesto = id_Puesto;
        this.criterio_Seleccion = criterio_Seleccion;
        this.anuncio_Seleccion = anuncio_Seleccion;
        this.responsable_Seleccion = responsable_Seleccion;
        this.genero_Responsable = genero_Responsable;
        this.tipo_Seleccion = tipo_Seleccion;
        this.numero_hombres = numero_hombres;
        this.numero_mujer = numero_mujer;
    }

    public int getId_Empresa() {
        return id_Empresa;
    }

    public void setId_Empresa(int id_Empresa) {
        this.id_Empresa = id_Empresa;
    }

    public String getId_Puesto() {
        return id_Puesto;
    }

    public void setId_Puesto(String id_Puesto) {
        this.id_Puesto = id_Puesto;
    }

    public String getCriterio_Seleccion() {
        return criterio_Seleccion;
    }

    public void setCriterio_Seleccion(String criterio_Seleccion) {
        this.criterio_Seleccion = criterio_Seleccion;
    }

    public String getAnuncio_Seleccion() {
        return anuncio_Seleccion;
    }

    public void setAnuncio_Seleccion(String anuncio_Seleccion) {
        this.anuncio_Seleccion = anuncio_Seleccion;
    }

    public String getResponsable_Seleccion() {
        return responsable_Seleccion;
    }

    public void setResponsable_Seleccion(String responsable_Seleccion) {
        this.responsable_Seleccion = responsable_Seleccion;
    }

    public String getGenero_Responsable() {
        return genero_Responsable;
    }

    public void setGenero_Responsable(String genero_Responsable) {
        this.genero_Responsable = genero_Responsable;
    }

    public String getTipo_Seleccion() {
        return tipo_Seleccion;
    }

    public void setTipo_Seleccion(String tipo_Seleccion) {
        this.tipo_Seleccion = tipo_Seleccion;
    }

    public int getNumero_hombres() {
        return numero_hombres;
    }

    public void setNumero_hombres(int numero_hombres) {
        this.numero_hombres = numero_hombres;
    }

    public int getNumero_mujer() {
        return numero_mujer;
    }

    public void setNumero_mujer(int numero_mujer) {
        this.numero_mujer = numero_mujer;
    }

    @Override
    public String toString() {
        return "Seleccion{" + "id_Empresa=" + id_Empresa + ", id_Puesto=" + id_Puesto + ", criterio_Seleccion=" + criterio_Seleccion + ", anuncio_Seleccion=" + anuncio_Seleccion + ", responsable_Seleccion=" + responsable_Seleccion + ", genero_Responsable=" + genero_Responsable + ", tipo_Seleccion=" + tipo_Seleccion + ", numero_hombres=" + numero_hombres + ", numero_mujer=" + numero_mujer + '}';
    }
    
    
}
