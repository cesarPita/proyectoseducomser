package com.educomser.domain;

import java.util.Date;

public class Producto {
    
    private int id;
    private int idCategoria;
    private String nombre;
    private String unidadMedida;
    private double precio;
    private int stockActual;
    private int stockMinimo;
    private Date fechaVencimiento;

    public Producto() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdCategoria() {
        return idCategoria;
    }

    public void setIdCategoria(int idCategoria) {
        this.idCategoria = idCategoria;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getUnidadMedida() {
        return unidadMedida;
    }

    public void setUnidadMedida(String unidadMedida) {
        this.unidadMedida = unidadMedida;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public int getStockActual() {
        return stockActual;
    }

    public void setStockActual(int stockActual) {
        this.stockActual = stockActual;
    }

    public int getStockMinimo() {
        return stockMinimo;
    }

    public void setStockMinimo(int stockMinimo) {
        this.stockMinimo = stockMinimo;
    }

    public Date getFechaVencimiento() {
        return fechaVencimiento;
    }

    public void setFechaVencimiento(Date fechaVencimiento) {
        this.fechaVencimiento = fechaVencimiento;
    }

    @Override
    public String toString() {
        return "Producto{" + "id=" + id + ", idCategoria=" + idCategoria + ", nombre=" + nombre + ", unidadMedida=" + unidadMedida + ", precio=" + precio + ", stockActual=" + stockActual + ", stockMinimo=" + stockMinimo + ", fechaVencimiento=" + fechaVencimiento + '}';
    }
}
