package bean;

import java.io.Serializable;

@SuppressWarnings("serial")
public class DetalleProductoBean implements Serializable{
	private int codigo;
	private int codigo_producto;
	private int codigo_insumo;
	private ProductoBean producto;
	private InsumoBean insumo;
	private double cantidad;
	
	public int getCodigo() {
		return codigo;
	}
	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}
	public int getCodigo_producto() {
		return codigo_producto;
	}
	public void setCodigo_producto(int codigo_producto) {
		this.codigo_producto = codigo_producto;
	}
	public int getCodigo_insumo() {
		return codigo_insumo;
	}
	public void setCodigo_insumo(int codigo_insumo) {
		this.codigo_insumo = codigo_insumo;
	}
	public ProductoBean getProducto() {
		return producto;
	}
	public void setProducto(ProductoBean producto) {
		this.producto = producto;
	}
	public InsumoBean getInsumo() {
		return insumo;
	}
	public void setInsumo(InsumoBean insumo) {
		this.insumo = insumo;
	}
	public double getCantidad() {
		return cantidad;
	}
	public void setCantidad(double cantidad) {
		this.cantidad = cantidad;
	}
	
	
	

}
