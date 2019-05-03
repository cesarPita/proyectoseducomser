package com.educomser.test;

import com.educomser.dao.CategoriaDao;
import com.educomser.dao.ProductoDao;
import com.educomser.dao.impl.CategoriaDaoImpl;
import com.educomser.dao.impl.ProductoDaoImpl;
import com.educomser.domain.Categoria;
import com.educomser.domain.Producto;
import java.util.Scanner;

public class TestProductoEliminar {

    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        System.out.println("1. ELIMINAR PRODUCTO");
        System.out.println("2. ELIMINAR CATEGORIA");
        System.out.println("Ingrese opción:");
        String opcion = in.next();
        if (opcion.equals("1")) {
            ProductoDao pdao = new ProductoDaoImpl();
            System.out.println("Ingreser id del producto a eliminar: ");
            Producto prod = pdao.findById(in.nextInt());
            if (prod == null) {
                System.out.println("No se encuentra el id del producto");
                System.exit(0);
            }
            pdao.delete(prod.getId());
            System.out.println("Producto eliminado correctamente");
        }
        if (opcion.equals("2")) {
            CategoriaDao cdao = new CategoriaDaoImpl();
            System.out.println("Ingreser id de la categoria a eliminar: ");
            Categoria cat = cdao.findById(in.nextInt());
            if (cat == null) {
                System.out.println("No se encuentra el id de la categoria");
                System.exit(0);
            }
            cdao.delete(cat.getId());
            System.out.println("Categoria eliminada correctamente");
        }
    }
}
