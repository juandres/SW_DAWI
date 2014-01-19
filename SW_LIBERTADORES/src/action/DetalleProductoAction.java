package action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import bean.InsumoBean;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
@ParentPackage(value = "dawi")
public class DetalleProductoAction extends ActionSupport {

	private InsumoBean insumo;
	private String codigo, descripcion;
	private static final Log log = LogFactory.getLog(DetalleProductoAction.class);
	private int records, rows, page, total;
	private double cantidad;
	List<InsumoBean> detalle_producto = new ArrayList<InsumoBean>();
	Map<String, Object> session = ActionContext.getContext().getSession();
	List<InsumoBean> grdDetalle = new ArrayList<InsumoBean>();

	@SuppressWarnings("unchecked")
	@Action(value = "/anhadirDetalle", results = { @Result(location = "/detalle_grid.jsp", name = "success") })
	public String anhadirDetalle() throws Exception {
		log.info("En AÑADIR DETALLE - Detalle Producto");
		if (session.get("keyDetalle") == null) {
			insumo = new InsumoBean();
			insumo.setCodigo(Integer.parseInt(codigo));
			insumo.setDescripcion(descripcion);
			detalle_producto.add(insumo);
			session.put("keyDetalle", detalle_producto);
			System.out.println(session.put("keyDetalle", detalle_producto));
			log.info("Creando nuevo detalle.");
		} else {
			detalle_producto = (ArrayList<InsumoBean>) session.get("keyDetalle");
			insumo = new InsumoBean();
			insumo = new InsumoBean();			
			insumo.setCodigo(Integer.parseInt(codigo));
			insumo.setDescripcion(descripcion);
			detalle_producto.add(insumo);
			session.put("keyDetalle", detalle_producto);
			System.out.println(session.put("keyDetalle", detalle_producto));
			log.info("Agregando nuevo detalle.");
		}

		return SUCCESS;
	}

	@SuppressWarnings("unchecked")
	@Action(value = "/cargarGridDetalle", results = { @Result(name = "success", type = "json") })
	public String cargarGridDetalle() throws Exception {
		log.info("En LISTAR DETALLE - Detalle Producto");

		List<InsumoBean> data = (ArrayList<InsumoBean>) session
				.get("keyDetalle");

		records = data.size();

		int hasta = (rows * page);
		int desde = hasta - rows;
		if (hasta > records)
			hasta = records;

		grdDetalle = data.subList(desde, hasta);

		setTotal((int) Math.ceil((double) records / (double) rows));
		return SUCCESS;
	}

	public int getRecords() {
		return records;
	}

	public void setRecords(int records) {
		this.records = records;
	}

	public int getRows() {
		return rows;
	}

	public void setRows(int rows) {
		this.rows = rows;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public InsumoBean getInsumo() {
		return insumo;
	}

	public void setInsumo(InsumoBean insumo) {
		this.insumo = insumo;
	}

	public String getCodigo() {
		return codigo;
	}

	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public double getCantidad() {
		return cantidad;
	}

	public void setCantidad(double cantidad) {
		this.cantidad = cantidad;
	}

	public List<InsumoBean> getDetalle_producto() {
		return detalle_producto;
	}

	public void setDetalle_producto(List<InsumoBean> detalle_producto) {
		this.detalle_producto = detalle_producto;
	}

	public List<InsumoBean> getGrdDetalle() {
		return grdDetalle;
	}

	public void setGrdDetalle(List<InsumoBean> grdDetalle) {
		this.grdDetalle = grdDetalle;
	}

}
