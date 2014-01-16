package action;

import iService.CategoriaInsumoService;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Action;

import service.CategoriaInsumoServiceIMP;
import bean.CategoriaInsumoBean;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
@ParentPackage(value = "dawi")
public class CategoriaInsumoAction extends ActionSupport {

	private CategoriaInsumoBean categoria_insumo;
	private CategoriaInsumoService categoriaInsumoService = new CategoriaInsumoServiceIMP();
	private List<CategoriaInsumoBean> grdCategoriaInsumo;
	private String codigo, descripcion, mensaje, id;
	private Integer rows = 0, page = 0, total = 0, records = 0;
	private Map<String, Object> session = ActionContext.getContext().getSession();
	private static final Log log = LogFactory.getLog(CategoriaInsumoAction.class);
	
	@Action(value = "/registrar", results = { @Result(location = "/categoria_insumo_grid.jsp", name = "success") })
	public String registrarCategoriaInsumo() throws Exception {		
		log.info("En REGISTRAR - Categoria Insumo");
		categoria_insumo = new CategoriaInsumoBean();
		categoria_insumo.setCodigo(Integer.parseInt(codigo));
		categoria_insumo.setDescripcion(descripcion);
		categoriaInsumoService.registrarCategoriaInsumo(categoria_insumo);
		return listarCategoriaInsumo();

	}

	@Action(value = "/actualizar", results = { @Result(location = "/categoria_insumo_grid.jsp", name = "success") })
	public String actualizarCategoriaInsumo() throws Exception {
		log.info("En ACTUALIZAR - Categoria Insumo");

		categoria_insumo = new CategoriaInsumoBean();
		categoria_insumo.setCodigo(Integer.parseInt(codigo));
		categoria_insumo.setDescripcion(descripcion);
		categoriaInsumoService.actualizarCategoriaInsumo(categoria_insumo);
		return listarCategoriaInsumo();
	}

	@SuppressWarnings("unchecked")
	@Action(value = "/eliminar", results = { @Result(location = "/categoria_insumo_grid.jsp", name = "success") })
	public String eliminarCategoriaInsumo() throws Exception {
		log.info("En ELIMINAR - Categoria Insumo");

		grdCategoriaInsumo = (ArrayList<CategoriaInsumoBean>) session.get("keyCategoriaInsumo");

		if (grdCategoriaInsumo == null || grdCategoriaInsumo.size() == 0) {
			mensaje = "Se debería haber realizado una selección";
			return SUCCESS;
		}

		if (id == null || id.length() == 0) {
			mensaje = "Se debería haber seleccionado un registro";
			return SUCCESS;
		}

		categoriaInsumoService.eliminarCategoriaInsumo(Integer.parseInt(id));
		id = null;

		return listarCategoriaInsumo();
	}

	@Action(value = "/listar", results = { @Result(location = "/categoria_insumo_grid.jsp", name = "success") })
	public String listarCategoriaInsumo() throws Exception {
		log.info("En LISTAR - Categoria Insumo");

		ArrayList<CategoriaInsumoBean> data = (ArrayList<CategoriaInsumoBean>)categoriaInsumoService.listarCategoriaInsumo();
		session.put("keyCategoriaInsumo", data);
		return SUCCESS;
	}

	@Action(value = "/grid", results = { @Result(name = "success", type = "json") })
	@SuppressWarnings("unchecked")
	public String grilla() {
		log.info("En lista vendedor Grid");
		try {

			List<CategoriaInsumoBean> data = (ArrayList<CategoriaInsumoBean>) session.get("keyCategoriaInsumo");

			records = data.size();

			int hasta = (rows * page);
			int desde = hasta - rows;
			if (hasta > records)
				hasta = records;

			grdCategoriaInsumo = data.subList(desde, hasta);

			total = (int) Math.ceil((double) records / (double) rows);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	
	public CategoriaInsumoBean getCategoria_insumo() {
		return categoria_insumo;
	}

	public void setCategoria_insumo(CategoriaInsumoBean categoria_insumo) {
		this.categoria_insumo = categoria_insumo;
	}

	public List<CategoriaInsumoBean> getGrdCategoriaInsumo() {
		return grdCategoriaInsumo;
	}

	public void setGrdCategoriaInsumo(
			List<CategoriaInsumoBean> grdCategoriaInsumo) {
		this.grdCategoriaInsumo = grdCategoriaInsumo;
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

	public String getMensaje() {
		return mensaje;
	}

	public void setMensaje(String mensaje) {
		this.mensaje = mensaje;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Integer getRows() {
		return rows;
	}

	public void setRows(Integer rows) {
		this.rows = rows;
	}

	public Integer getPage() {
		return page;
	}

	public void setPage(Integer page) {
		this.page = page;
	}

	public Integer getTotal() {
		return total;
	}

	public void setTotal(Integer total) {
		this.total = total;
	}

	public Integer getRecords() {
		return records;
	}

	public void setRecords(Integer records) {
		this.records = records;
	}
	
	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

}
