package dao;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import bean.ProductoBean;
import iDAO.ProductoDAO;

public class MySqlProductoDAO implements ProductoDAO{

	SqlSessionFactory sqlMapper = null;
	{		
		try {
			String archivo = "ConfiguracionIbatis.xml";
			Reader reader = Resources.getResourceAsReader(archivo);
			sqlMapper = new SqlSessionFactoryBuilder().build(reader);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@Override
	public void registrarProducto(ProductoBean p) {
		try {
			SqlSession cnx = sqlMapper.openSession();
			cnx.insert("dawi.SQL_REGISTRAR_PRODUCTO",p);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
