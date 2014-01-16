package service;

import java.util.List;

import factory.DAOFactory;
import bean.InsumoBean;
import iDAO.InsumoDAO;
import iService.InsumoService;

public class InsumoServiceIMP implements InsumoService {

	DAOFactory fabrica = DAOFactory.getFactorty(DAOFactory.MYSQL);
	InsumoDAO dao = fabrica.getInsumo();

	@Override
	public List<InsumoBean> listarInsumosXCategoria(int id) {
		return dao.listarInsumosXCategoria(id);
	}

}
