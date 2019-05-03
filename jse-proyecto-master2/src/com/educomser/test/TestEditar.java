package com.educomser.test;

import com.educomser.dao.CategoriaDao;
import com.educomser.dao.ProductoDao;
import com.educomser.dao.impl.CategoriaDaoImpl;
import com.educomser.dao.impl.ProductoDaoImpl;
import com.educomser.domain.Categoria;
import com.educomser.domain.Producto;
import java.util.Scanner;

public class TestEditar {

    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        System.out.println("1. MODIFICAR PRODUCTO");
        System.out.println("2. MODIFICAR CATEGORIA");
        System.out.println("Ingrese opción:");
        String opcion = in.next();
        if (opcion.equals("1")) {
            ProductoDao pdao = new ProductoDaoImpl();
            System.out.println("Ingreser id del producto a editar: ");
            Producto prod = pdao.findById(in.nextInt());
            if (prod == null) {
                System.out.println("No se encuentra el id del producto");
                System.exit(0);
            }
            System.out.println("Producto encontrado...");
            System.out.println(prod);
            System.out.println("Ingrese nuevo nombre:");
            prod.setNombre(in.next());
            pdao.update(prod);
            System.out.println("Producto editado correctamente");
        }
        if (opcion.equals("2")) {
            CategoriaDao cdao = new CategoriaDaoImpl();
            System.out.println("Ingreser id de la categoria a editar: ");
            Categoria cat = cdao.findById(in.nextInt());
            if (cat == null) {
                System.out.println("No se encuentra el id de la categoria");
                System.exit(0);
            }
            System.out.println("Categoria encontrada...");
            System.out.println(cat);
            System.out.println("Ingrese nueva descripción:");
            cat.setDescripcion(in.next());
            cdao.update(cat);
            System.out.println("Categoria editada correctamente");
        }
    }
}
