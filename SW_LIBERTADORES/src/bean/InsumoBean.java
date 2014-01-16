package bean;

import java.io.Serializable;

@SuppressWarnings("serial")
public class InsumoBean implements Serializable{
	
	private int codigo;
	private String descripcion;
	private CategoriaInsumoBean categoria;
	private UnidadMedidaBean unidad;
	
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
	public CategoriaInsumoBean getCategoria() {
		return categoria;
	}
	public void setCategoria(CategoriaInsumoBean categoria) {
		this.categoria = categoria;
	}
	public UnidadMedidaBean getUnidad() {
		return unidad;
	}
	public void setUnidad(UnidadMedidaBean unidad) {
		this.unidad = unidad;
	}
	
	

}
