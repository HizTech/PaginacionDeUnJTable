package utilities;

import javax.swing.table.AbstractTableModel;
import java.util.ArrayList;
import java.util.List;


public abstract class ModeloDeTabla<T> extends AbstractTableModel {

    private List<T> listadoDeFilas = new ArrayList<>();

    public List<T> getListRows() {
        return listadoDeFilas;
    }

    public void setListRows(List<T> listadoDeFilas) {
        this.listadoDeFilas = listadoDeFilas;
    }

    @Override
    public int getRowCount() {
        return listadoDeFilas.size();
    }
    
    
    @Override
    public Object getValueAt(int filas, int columnas) {
        T t = listadoDeFilas.get(filas);
        return getValueAt(t, columnas);
    }

    public abstract Object getValueAt(T t, int columnas);

    @Override
    public abstract String getColumnName(int columnas);

}