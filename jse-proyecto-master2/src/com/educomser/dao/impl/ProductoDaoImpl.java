package com.educomser.dao.impl;

import com.educomser.dao.ProductoDao;
import com.educomser.domain.Producto;
import com.educomser.util.Conexion;
import java.util.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ProductoDaoImpl implements ProductoDao {

    private Conexion conexion;

    @Override
    public void save(Producto producto) {
        try {
            conexion = new Conexion();
            String sql = "INSERT INTO producto (nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento, id_categoria) VALUES (?,?,?,?,?,?,?)";
            PreparedStatement st = conexion.getConnection().prepareStatement(sql);
            st.setString(1, producto.getNombre());
            st.setString(2, producto.getUnidadMedida());
            st.setDouble(3, producto.getPrecio());
            st.setInt(4, producto.getStockActual());
            st.setInt(5, producto.getStockMinimo());
            st.setDate(6, new java.sql.Date(producto.getFechaVencimiento().getTime()));
            st.setInt(7, producto.getIdCategoria());
            Logger.getLogger(ProductoDaoImpl.class.getName()).log(Level.INFO, st.toString());
            st.executeUpdate();
            st.close();
        } catch (SQLException ex) {
            String msg = "Error al guardar: ";
            Logger.getLogger(ProductoDaoImpl.class.getName()).log(Level.SEVERE, msg, ex);
        } finally {
            conexion.close();
        }
    }

    @Override
    public void update(Producto producto) {
        try {
            conexion = new Conexion();
            String sql = "UPDATE producto SET nombre=?, unidad_medida=?, precio=?, stock_actual=?, stock_minimo=?, fecha_vencimiento=?, id_categoria=?, updated_at=? WHERE id=?";
            PreparedStatement st = conexion.getConnection().prepareStatement(sql);
            st.setString(1, producto.getNombre());
            st.setString(2, producto.getUnidadMedida());
            st.setDouble(3, producto.getPrecio());
            st.setInt(4, producto.getStockActual());
            st.setInt(5, producto.getStockMinimo());
            st.setDate(6, new java.sql.Date(producto.getFechaVencimiento().getTime()));
            st.setInt(7, producto.getIdCategoria());
            st.setTimestamp(8, new java.sql.Timestamp(new Date().getTime()));
            st.setInt(9, producto.getId());
            Logger.getLogger(ProductoDaoImpl.class.getName()).log(Level.INFO, st.toString());
            st.executeUpdate();
            st.close();
        } catch (SQLException ex) {
            String msg = "Error al actualizar";
            Logger.getLogger(ProductoDaoImpl.class.getName()).log(Level.SEVERE, msg, ex);
        } finally {
            conexion.close();
        }
    }

    @Override
    public void delete(int id) {
        try {
            conexion = new Conexion();
            String sql = "DELETE FROM producto WHERE id=?";
            PreparedStatement st = conexion.getConnection().prepareStatement(sql);
            st.setInt(1, id);
            Logger.getLogger(ProductoDaoImpl.class.getName()).log(Level.INFO, st.toString());
            st.executeUpdate();
            st.close();
        } catch (SQLException ex) {
            String msg = "Error al eliminar";
            Logger.getLogger(ProductoDaoImpl.class.getName()).log(Level.SEVERE, msg, ex);
        } finally {
            conexion.close();
        }
    }

    @Override
    public List<Producto> findAll() {
        List<Producto> list = new ArrayList<Producto>();
        try {
            conexion = new Conexion();
            String sql = "SELECT id, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento FROM producto";
            Logger.getLogger(ProductoDaoImpl.class.getName()).log(Level.INFO, sql);
            Statement st = conexion.getConnection().createStatement();
            ResultSet rs = st.executeQuery(sql);
            while (rs.next()) {
                Producto prod = new Producto();
                prod.setId(rs.getInt("id"));
                prod.setNombre(rs.getString("nombre"));
                prod.setUnidadMedida(rs.getString("unidad_medida"));
                prod.setPrecio(rs.getDouble("precio"));
                prod.setStockActual(rs.getInt("stock_actual"));
                prod.setStockMinimo(rs.getInt("stock_minimo"));
                prod.setFechaVencimiento(rs.getDate("fecha_vencimiento"));
                list.add(prod);
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
    public Producto findById(int id) {
        Producto prod = null;
        try {
            conexion = new Conexion();
            String sql = "SELECT id, nombre, unidad_medida, precio, stock_actual, stock_minimo, fecha_vencimiento, id_categoria FROM producto WHERE id=?";
            PreparedStatement st = conexion.getConnection().prepareStatement(sql);
            st.setInt(1, id);
            Logger.getLogger(ProductoDaoImpl.class.getName()).log(Level.INFO, st.toString());
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                prod = new Producto();
                prod.setId(rs.getInt("id"));
                prod.setNombre(rs.getString("nombre"));
                prod.setUnidadMedida(rs.getString("unidad_medida"));
                prod.setPrecio(rs.getDouble("precio"));
                prod.setStockActual(rs.getInt("stock_actual"));
                prod.setStockMinimo(rs.getInt("stock_minimo"));
                prod.setFechaVencimiento(rs.getDate("fecha_vencimiento"));
                prod.setIdCategoria(rs.getInt("id_categoria"));
            }
            st.close();
            rs.close();
        } catch (SQLException ex) {
            String msg = "Error al listar";
            Logger.getLogger(ProductoDaoImpl.class.getName()).log(Level.SEVERE, msg, ex);
        } finally {
            conexion.close();
        }
        return prod;
    }

}
