package factory;

import iDAO.CategoriaInsumoDAO;
import iDAO.CategoriaProductoDAO;
import iDAO.DetalleProductoDAO;
import iDAO.InsumoDAO;
import iDAO.UnidadMedidaDAO;

public abstract class DAOFactory {

	public static final int MYSQL = 1;
	public static final int ORACLE = 2;

	
	public abstract CategoriaInsumoDAO getCategoriaInsumo();
	public abstract CategoriaProductoDAO getCategoriaProducto();
	public abstract InsumoDAO getInsumo();
	public abstract UnidadMedidaDAO getUnidadMedida();
	public abstract DetalleProductoDAO getDetalleProducto();
	
	public static DAOFactory getFactorty(int bd) {
		switch (bd) {
			case MYSQL:
				return new MySqlDAOFactory();
			
		}
		return null;
	}

	

}
