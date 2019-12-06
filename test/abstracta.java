
import java.util.ArrayList;
import java.util.List;
import javax.swing.table.AbstractTableModel;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author JorgeLPR
 * @param <T>
 */
public abstract class abstracta<T>{
    
    private List<T> objectRows = new ArrayList<>();

    public abstract List<T> getObjectRows();

    public void setObjectRows(List<T> objectRows) {
        this.objectRows = objectRows;
    }

    
}
