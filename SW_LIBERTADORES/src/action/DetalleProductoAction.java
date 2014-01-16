package action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;









import bean.DetalleProductoBean;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
@ParentPackage(value = "dawi")
public class DetalleProductoAction extends ActionSupport{
	
	private DetalleProductoBean detalle;
	private static final Log log = LogFactory.getLog(DetalleProductoAction.class);
	private int records, rows, page, total;
	private double cantidad;
	List<DetalleProductoBean> detalle_producto = new ArrayList<DetalleProductoBean>();
	Map<String, Object> session = ActionContext.getContext().getSession();
	List<DetalleProductoBean> grdDetalle = new ArrayList<DetalleProductoBean>();	
	private String insumos;
		
	@Action(value = "/anhadirDetalle", results = { @Result(location = "/detalle_grid.jsp", name = "success") })
	public String anhadirDetalle() throws Exception {		
		
		log.info("En AÑADIR DETALLE - Detalle Producto");
		detalle = new DetalleProductoBean();
		detalle.setCodigo(1);
		detalle.setCodigo_producto(1);
		detalle.setCodigo_insumo(Integer.parseInt(insumos));
		detalle.setCantidad(cantidad);	
		detalle_producto.add(detalle);
		session.put("keyDetalle", detalle_producto);		
		return SUCCESS;
	}
	
	@SuppressWarnings("unchecked")
	@Action(value = "/cargarGridDetalle", results = { @Result(name = "success", type = "json") })
	public String cargarGridDetalle() throws Exception {
		log.info("En LISTAR DETALLE - Detalle Producto");		
	
		List<DetalleProductoBean> data = (ArrayList<DetalleProductoBean>) session.get("keyDetalle");

		records = data.size();

		int hasta = (rows * page);
		int desde = hasta - rows;
		if (hasta > records)
			hasta = records;

		grdDetalle = data.subList(desde, hasta);

		setTotal((int) Math.ceil((double) records / (double) rows));
		return SUCCESS;
	}
	
	public DetalleProductoBean getDetalle() {
		return detalle;
	}

	public void setDetalle(DetalleProductoBean detalle) {
		this.detalle = detalle;
	}

	public String getInsumos() {
		return insumos;
	}

	public void setInsumos(String insumos) {
		this.insumos = insumos;
	}

	public double getCantidad() {
		return cantidad;
	}

	public void setCantidad(double cantidad) {
		this.cantidad = cantidad;
	}

	public List<DetalleProductoBean> getDetalle_producto() {
		return detalle_producto;
	}

	public void setDetalle_producto(List<DetalleProductoBean> detalle_producto) {
		this.detalle_producto = detalle_producto;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}	
	
	public List<DetalleProductoBean> getGrdDetalle() {
		return grdDetalle;
	}

	public void setGrdDetalle(List<DetalleProductoBean> grdDetalle) {
		this.grdDetalle = grdDetalle;
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
}
