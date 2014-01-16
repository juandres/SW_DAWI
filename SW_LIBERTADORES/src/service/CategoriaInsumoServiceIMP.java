package service;

import iDAO.CategoriaInsumoDAO;
import iService.CategoriaInsumoService;

import java.util.List;

import factory.DAOFactory;
import bean.CategoriaInsumoBean;

public class CategoriaInsumoServiceIMP implements CategoriaInsumoService{

	DAOFactory fabrica = DAOFactory.getFactorty(DAOFactory.MYSQL);
	CategoriaInsumoDAO dao = fabrica.getCategoriaInsumo();
	
	@Override
	public void registrarCategoriaInsumo(CategoriaInsumoBean c) {
		dao.registrarCategoriaInsumo(c);
		
	}

	@Override
	public void actualizarCategoriaInsumo(CategoriaInsumoBean c) {
		dao.actualizarCategoriaInsumo(c);		
	}

	@Override
	public void eliminarCategoriaInsumo(int id) {
		dao.eliminarCategoriaInsumo(id);		
	}

	@Override
	public List<CategoriaInsumoBean> listarCategoriaInsumo() {
		return dao.listarCategoriaInsumo();
	}

}
