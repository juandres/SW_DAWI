package action;

import iService.ProductoService;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;

import service.ProductoServiceIMP;
import bean.ProductoBean;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
@ParentPackage(value = "dawi")
public class ProductoAction extends ActionSupport {

	private ProductoService service = new ProductoServiceIMP();
	private ProductoBean producto;
	private String codigo, nombre, precio, tiempo_preparacion;
	private static final Log log = LogFactory.getLog(DetalleProductoAction.class);

	@Action(value = "/registrarProducto", results = { @Result(location = "/producto_grid.jsp", name = "success") })
	public String registrarProducto() throws Exception {
		log.info("En REGISTRAR PRODUCTO - Producto");
		System.out.println(precio);
		System.out.println(nombre);
		producto.setCodigo(Integer.parseInt(codigo));
		producto.setDescripcion(nombre);
		producto.setPrecio(Double.parseDouble(precio));
		producto.setTiempo_preparacion(tiempo_preparacion);
		service.registrarProducto(producto);
		return SUCCESS;
	}

	public ProductoBean getProducto() {
		return producto;
	}

	public void setProducto(ProductoBean producto) {
		this.producto = producto;
	}

	public String getCodigo() {
		return codigo;
	}

	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getPrecio() {
		return precio;
	}

	public void setPrecio(String precio) {
		this.precio = precio;
	}

	public String getTiempo_preparacion() {
		return tiempo_preparacion;
	}

	public void setTiempo_preparacion(String tiempo_preparacion) {
		this.tiempo_preparacion = tiempo_preparacion;
	}	

}
