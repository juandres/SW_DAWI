package service;

import factory.DAOFactory;
import iDAO.ProductoDAO;
import iService.ProductoService;
import bean.ProductoBean;

public class ProductoServiceIMP implements ProductoService{

	DAOFactory fabrica = DAOFactory.getFactorty(DAOFactory.MYSQL);
	ProductoDAO dao = fabrica.getProducto();
	
	@Override
	public void registrarProducto(ProductoBean p) {
		dao.registrarProducto(p);		
	}
	
	
	

}
