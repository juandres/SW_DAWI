package iDAO;

import java.util.List;

import bean.InsumoBean;

public interface InsumoDAO {
	
	public List<InsumoBean> listarInsumosXCategoria(int id);

}
