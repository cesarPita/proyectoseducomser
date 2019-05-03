package com.educomser.dao;

import com.educomser.domain.Producto;
import java.util.List;

public interface ProductoDao {
    
    public void save(Producto producto);

    public void update(Producto producto);

    public void delete(int id);

    public List<Producto> findAll();

    public Producto findById(int id);

}
