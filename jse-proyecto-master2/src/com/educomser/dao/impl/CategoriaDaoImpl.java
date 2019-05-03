package com.educomser.dao.impl;

import com.educomser.dao.CategoriaDao;
import com.educomser.domain.Categoria;
import com.educomser.util.Conexion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class CategoriaDaoImpl implements CategoriaDao {

    private Conexion conexion;

    @Override
    public void save(Categoria categoria) {
        try {
            conexion = new Conexion();
            String sql = "INSERT INTO categoria (categoria, descripcion) values (?,?)";
            PreparedStatement st = conexion.getConnection().prepareStatement(sql);
            st.setString(1, categoria.getCategoria());
            st.setString(2, categoria.getDescripcion());
            Logger.getLogger(CategoriaDaoImpl.class.getName()).log(Level.INFO, st.toString());
            st.executeUpdate();
            st.close();
        } catch (SQLException ex) {
            String msg = "Error al guardar: ";
            Logger.getLogger(CategoriaDaoImpl.class.getName()).log(Level.SEVERE, msg, ex);
        } finally {
            conexion.close();
        }
    }

    @Override
    public void update(Categoria categoria) {
        try {
            conexion = new Conexion();
            String sql = "UPDATE categoria SET categoria=?, descripcion=?, updated_at=? WHERE id=?";
            PreparedStatement st = conexion.getConnection().prepareStatement(sql);
            st.setString(1, categoria.getCategoria());
            st.setString(2, categoria.getDescripcion());
            st.setTimestamp(3, new java.sql.Timestamp(new Date().getTime()));
            st.setInt(4, categoria.getId());
            Logger.getLogger(CategoriaDaoImpl.class.getName()).log(Level.INFO, st.toString());
            st.executeUpdate();
            st.close();
        } catch (SQLException ex) {
            String msg = "Error al modificar la categoria: ";
            Logger.getLogger(CategoriaDaoImpl.class.getName()).log(Level.SEVERE, msg, ex);
        } finally {
            conexion.close();
        }
    }

    @Override
    public void delete(int id) {
        try {
            conexion = new Conexion();
            String sql = "DELETE FROM categoria WHERE id=?";
            PreparedStatement st = conexion.getConnection().prepareStatement(sql);
            st.setInt(1, id);
            Logger.getLogger(CategoriaDaoImpl.class.getName()).log(Level.INFO, st.toString());
            st.executeUpdate();
            st.close();
        } catch (SQLException ex) {
            String msg = "Error al eliminar la categoria: ";
            Logger.getLogger(CategoriaDaoImpl.class.getName()).log(Level.SEVERE, msg, ex);
        } finally {
            conexion.close();
        }
    }

    @Override
    public List<Categoria> findAll() {
        List<Categoria> list = new ArrayList<Categoria>();
        try {
            conexion = new Conexion();
            String sql = "SELECT id, categoria, descripcion FROM categoria";
            Logger.getLogger(ProductoDaoImpl.class.getName()).log(Level.INFO, sql);
            Statement st = conexion.getConnection().createStatement();
            ResultSet rs = st.executeQuery(sql);
            while (rs.next()) {
                Categoria cat = new Categoria();
                cat.setId(rs.getInt("id"));
                cat.setCategoria(rs.getString("categoria"));
                cat.setDescripcion(rs.getString("descripcion"));
                list.add(cat);
            }
            st.close();
            rs.close();
        } catch (SQLException ex) {
            String msg = "Error al listar";
            Logger.getLogger(ProductoDaoImpl.class.getName()).log(Level.SEVERE, msg, ex);
        } finally {
            conexion.close();
        }
        return list;
    }

    @Override
    public Categoria findById(int id) {
        Categoria cat = null;
        try {
            conexion = new Conexion();
            String sql = "SELECT id, categoria, descripcion FROM categoria WHERE id=?";
            PreparedStatement st = conexion.getConnection().prepareStatement(sql);
            st.setInt(1, id);
            Logger.getLogger(ProductoDaoImpl.class.getName()).log(Level.INFO, st.toString());
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                cat = new Categoria();
                cat.setId(rs.getInt("id"));
                cat.setCategoria(rs.getString("categoria"));
                cat.setDescripcion(rs.getString("descripcion"));
            }
            st.close();
            rs.close();
        } catch (SQLException ex) {
            String msg = "Error al buscar";
            Logger.getLogger(ProductoDaoImpl.class.getName()).log(Level.SEVERE, msg, ex);
        } finally {
            conexion.close();
        }
        return cat;
    }
}
