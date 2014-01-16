package dao;

import iDAO.CategoriaInsumoDAO;

import java.io.Reader;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import bean.CategoriaInsumoBean;

public class MySqlCategoriaInsumoDAO implements CategoriaInsumoDAO{
	
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
	@Override
	public void registrarCategoriaInsumo(CategoriaInsumoBean c) {
		SqlSession cnx = sqlMapper.openSession();		
		try {			
			cnx.insert("dawi.SQL_INSERTAR_CATEGORIA_INSUMO", c);			
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			cnx.close();
		}
		
	}
	@Override
	public void actualizarCategoriaInsumo(CategoriaInsumoBean c) {
		SqlSession cnx = sqlMapper.openSession();
		try {
			cnx.update("dawi.SQL_ACTUALIZAR_CATEGORIA_INSUMO", c);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			cnx.close();
		}		
	}
	@Override
	public void eliminarCategoriaInsumo(int id) {
		SqlSession cnx = sqlMapper.openSession();
		try {
			cnx.delete("dawi.SQL_ELIMINAR_CATEGORIA_INSUMO", id);
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			cnx.close();
		}
		
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<CategoriaInsumoBean> listarCategoriaInsumo() {
		SqlSession cnx = sqlMapper.openSession();
		List<CategoriaInsumoBean> listado = new ArrayList<CategoriaInsumoBean>(); 
		try {
			listado = cnx.selectList("dawi.SQL_LISTAR_CATEGORIA_INSUMO");
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			cnx.close();
		}
		return listado;
	}
	
	

}
