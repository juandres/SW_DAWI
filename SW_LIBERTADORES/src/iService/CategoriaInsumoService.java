package iService;

import java.util.List;

import bean.CategoriaInsumoBean;

public interface CategoriaInsumoService {

	public abstract void registrarCategoriaInsumo(CategoriaInsumoBean c);
	public abstract void actualizarCategoriaInsumo(CategoriaInsumoBean c);
	public abstract void eliminarCategoriaInsumo(int id);
	public abstract List<CategoriaInsumoBean> listarCategoriaInsumo();

}
