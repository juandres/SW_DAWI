package action;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import iService.InsumoService;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;

import service.InsumoServiceIMP;
import bean.InsumoBean;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
@ParentPackage(value = "dawi")
public class InsumoAction extends ActionSupport{
	
	private InsumoService service = new InsumoServiceIMP();
	private static final Log log = LogFactory.getLog(InsumoAction.class);
	private List<InsumoBean> grdInsumos = new ArrayList<InsumoBean>();
	private Map<String, Object> session = ActionContext.getContext().getSession();
	private String id;
	
	@Action(value = "/listarInsumosXCategoria", results = { @Result(location = "/insumo_grid.jsp", name = "success") })
	public String listarInsumosXCategoria() throws Exception {
		log.info("En LISTAR - Insumos");		
		session.put("keyInsumos", (ArrayList<InsumoBean>)service.listarInsumosXCategoria(Integer.parseInt(id)));  
		return SUCCESS;
	}	
	
	@SuppressWarnings("unchecked")
	@Action(value = "/cargarGridInsumos", results = { @Result(name = "success", type = "json") })
	public String cargarGridInsumos() throws Exception {
		log.info("En GRILLA - Insumos");
		grdInsumos = (ArrayList<InsumoBean>)session.get("keyInsumos");
		return SUCCESS;
	}

	public List<InsumoBean> getGrdInsumos() {
		return grdInsumos;
	}

	public void setGrdInsumos(List<InsumoBean> grdInsumos) {
		this.grdInsumos = grdInsumos;
	}
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

}
