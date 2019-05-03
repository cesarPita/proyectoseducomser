package com.educomser.test;

import com.educomser.dao.CategoriaDao;
import com.educomser.dao.ProductoDao;
import com.educomser.dao.impl.CategoriaDaoImpl;
import com.educomser.dao.impl.ProductoDaoImpl;
import com.educomser.domain.Categoria;
import com.educomser.domain.Producto;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;

public class TestProductoGuardar {

    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        System.out.println("1. REGISTRAR NUEVO PRODUCTO");
        System.out.println("2. REGISTRAR NUEVA CATEGORIA");
        System.out.println("Ingrese opción:");
        String opcion = in.next();
        if (opcion.equals("1")) {
            System.out.println("-- NUEVO PRODUCTO --");
            Producto prod = new Producto();
            System.out.println("Nombre: ");
            prod.setNombre(in.next());
            System.out.println("Unidad de medida: ");
            prod.setUnidadMedida(in.next());
            System.out.println("Precio: ");
            prod.setPrecio(in.nextDouble());
            System.out.println("Stock actual: ");
            prod.setStockActual(in.nextInt());
            System.out.println("Stock minimo: ");
            prod.setStockMinimo(in.nextInt());
            System.out.println("Fecha de vencimiento (dd/mm/aaaa): ");
            String fechaVenc = in.next();
            SimpleDateFormat df = new SimpleDateFormat("dd/MM/yyyy");
            try {
                prod.setFechaVencimiento(df.parse(fechaVenc));
            } catch (ParseException ex) {
                Logger.getLogger(TestProductoGuardar.class.getName()).log(Level.SEVERE, null, ex);
            }
            System.out.println("Id categoria: ");
            prod.setIdCategoria(in.nextInt());
            ProductoDao pdao = new ProductoDaoImpl();
            pdao.save(prod);
            System.out.println("El producto fue guardado...");
        }
        if (opcion.equals("2")) {
            System.out.println("-- NUEVA CATEGORIA --");
            Categoria cat = new Categoria();
            System.out.println("Categoria: ");
            cat.setCategoria(in.next());
            System.out.println("Descripcioón: ");
            cat.setDescripcion(in.next());
            CategoriaDao cdao = new CategoriaDaoImpl();
            cdao.save(cat);
            System.out.println("La Categoria fue guardada...");
        }
    }
}
