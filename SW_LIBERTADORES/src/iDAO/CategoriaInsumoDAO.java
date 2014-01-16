package iDAO;

import java.util.List;

import bean.CategoriaInsumoBean;

public interface CategoriaInsumoDAO {
	
	public void registrarCategoriaInsumo(CategoriaInsumoBean c);
	public void actualizarCategoriaInsumo(CategoriaInsumoBean c);
	public void eliminarCategoriaInsumo(int id);
	public List<CategoriaInsumoBean> listarCategoriaInsumo();
}
