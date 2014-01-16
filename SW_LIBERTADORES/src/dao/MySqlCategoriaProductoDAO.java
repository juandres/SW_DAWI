package dao;

import java.io.Reader;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import bean.CategoriaProductoBean;
import iDAO.CategoriaProductoDAO;

public class MySqlCategoriaProductoDAO implements CategoriaProductoDAO{

	SqlSessionFactory sqlMapper = null;
	{
		String archivo = "ConfiguracionIbatis.xml";
		try {
			Reader reader = Resources.getResourceAsReader(archivo);
			sqlMapper = new SqlSessionFactoryBuilder().build(reader);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<CategoriaProductoBean> listarCategoriaProducto() {
		SqlSession cnx = sqlMapper.openSession();
		List<CategoriaProductoBean> listado = new ArrayList<CategoriaProductoBean>();
		try {			
			listado = cnx.selectList("dawi.SQL_LISTAR_CATEGORIA_PRODUCTO");
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			cnx.close();
		}
		return listado;
		
	}

}
