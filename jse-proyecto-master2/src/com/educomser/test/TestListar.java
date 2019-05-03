package com.educomser.test;

import com.educomser.dao.CategoriaDao;
import com.educomser.dao.ProductoDao;
import com.educomser.dao.impl.CategoriaDaoImpl;
import com.educomser.dao.impl.ProductoDaoImpl;
import com.educomser.domain.Categoria;
import com.educomser.domain.Producto;
import java.util.Scanner;

public class TestListar {

    public static void main(String[] args) {
        ProductoDao pdao = new ProductoDaoImpl();
        CategoriaDao cdao = new CategoriaDaoImpl();
        Scanner in = new Scanner(System.in);
        //System.out.println("-- LISTA DE PRODUCTOS --");
        System.out.println("1. LISTA DE PRODUCTOS");
        System.out.println("2. LISTA DE CATEGORIAS");
        System.out.println("Ingrese opción:");
        String opcion = in.next();
        if (opcion.equals("1")) {
            System.out.println("--- LISTA DE PRODUCTOS ---");
            for (Producto prod : pdao.findAll()) {
                System.out.println(prod.getId() + " \t "
                        + prod.getNombre() + " \t "
                        + prod.getUnidadMedida() + " \t "
                        + prod.getPrecio() + " \t "
                        + prod.getStockActual() + " \t "
                        + prod.getStockMinimo() + " \t "
                        + prod.getFechaVencimiento());
            }
        }
        if (opcion.equals("2")) {
            System.out.println("--- LISTA DE CATEGORIAS ---");
            for (Categoria cat : cdao.findAll()) {
                System.out.println(cat.getId() + " \t "
                        + cat.getCategoria() + " \t "
                        + cat.getDescripcion());
            }
        }
    }
}
