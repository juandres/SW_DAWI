package action;

import java.util.ArrayList;
import java.util.List;

import iService.CategoriaProductoService;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;

import service.CategoriaProductoServiceIMP;
import bean.CategoriaProductoBean;

import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
@ParentPackage(value = "dawi")
public class CategoriaProductoAction extends ActionSupport{
	
	private CategoriaProductoService service = new CategoriaProductoServiceIMP();
	private static final Log log = LogFactory.getLog(CategoriaProductoAction.class);
	private List<CategoriaProductoBean> grdCategoriaProducto = new ArrayList<CategoriaProductoBean>(); 
	
	@Action(value = "/listarCategoriaProducto", results = { @Result(name = "success", type = "json") })
	public String listarCategoriaProducto() throws Exception {
		log.info("En LISTAR - Categoria Producto");
		grdCategoriaProducto = service.listarCategoriaProducto();
		return SUCCESS;
	}

	public List<CategoriaProductoBean> getGrdCategoriaProducto() {
		return grdCategoriaProducto;
	}

	public void setGrdCategoriaProducto(List<CategoriaProductoBean> grdCategoriaProducto) {
		this.grdCategoriaProducto = grdCategoriaProducto;
	}
}
