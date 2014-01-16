package dao;

import java.io.Reader;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import bean.InsumoBean;
import iDAO.InsumoDAO;

public class MySqlInsumoDAO implements InsumoDAO {

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
	public List<InsumoBean> listarInsumosXCategoria(int id) {
		SqlSession cnx = sqlMapper.openSession();
		List<InsumoBean> listado = new ArrayList<InsumoBean>();
		try {
			listado = cnx.selectList("dawi.SQL_LISTAR_INSUMO_X_CATEGORIA", id);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			cnx.close();
		}
		return listado;
	}

}
