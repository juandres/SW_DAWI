package bean;

import java.io.Serializable;

@SuppressWarnings("serial")
public class ProductoBean implements Serializable{
	
	private int codigo;
	private String descripcion;
	private double precio;
	private String tiempo_preparacion;
	private CategoriaProductoBean categoria;
	
	public int getCodigo() {
		return codigo;
	}
	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	public double getPrecio() {
		return precio;
	}
	public void setPrecio(double precio) {
		this.precio = precio;
	}
	public String getTiempo_preparacion() {
		return tiempo_preparacion;
	}
	public void setTiempo_preparacion(String tiempo_preparacion) {
		this.tiempo_preparacion = tiempo_preparacion;
	}
	public CategoriaProductoBean getCategoria() {
		return categoria;
	}
	public void setCategoria(CategoriaProductoBean categoria) {
		this.categoria = categoria;
	}
	
	

}
