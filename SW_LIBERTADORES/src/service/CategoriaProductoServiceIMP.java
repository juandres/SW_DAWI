package service;

import java.util.List;

import factory.DAOFactory;
import bean.CategoriaProductoBean;
import iDAO.CategoriaProductoDAO;
import iService.CategoriaProductoService;

public class CategoriaProductoServiceIMP implements CategoriaProductoService{

	DAOFactory fabrica = DAOFactory.getFactorty(DAOFactory.MYSQL);
	CategoriaProductoDAO dao = fabrica.getCategoriaProducto();
	
	@Override
	public List<CategoriaProductoBean> listarCategoriaProducto() {
		return dao.listarCategoriaProducto();
	}

}
