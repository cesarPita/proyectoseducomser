package com.educomser.dao;

import com.educomser.domain.Categoria;
import java.util.List;

public interface CategoriaDao {
    public void save(Categoria categoria);
    public void update(Categoria categoria);
    public void delete(int id);
    public List<Categoria> findAll();
    public Categoria findById(int id);
}
