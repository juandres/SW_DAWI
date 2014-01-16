package factory;

import dao.MySqlCategoriaInsumoDAO;
import dao.MySqlCategoriaProductoDAO;
import dao.MySqlDetalleProductoDAO;
import dao.MySqlInsumoDAO;
import iDAO.CategoriaInsumoDAO;
import iDAO.CategoriaProductoDAO;
import iDAO.DetalleProductoDAO;
import iDAO.InsumoDAO;
import iDAO.UnidadMedidaDAO;

public class MySqlDAOFactory extends DAOFactory{

	@Override
	public CategoriaInsumoDAO getCategoriaInsumo() {
		return new MySqlCategoriaInsumoDAO();
	}

	@Override
	public CategoriaProductoDAO getCategoriaProducto() {
		return new MySqlCategoriaProductoDAO();
	}

	@Override
	public InsumoDAO getInsumo() {
		return new MySqlInsumoDAO();
	}

	@Override
	public UnidadMedidaDAO getUnidadMedida() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public DetalleProductoDAO getDetalleProducto() {
		return new MySqlDetalleProductoDAO();
	}

	
}
