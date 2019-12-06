package utilities;

import java.util.List;

public interface ProveedorDeDatosDePaginacion<T> {
    int getTotalRowCount();
    List <T> getRows(int startIndex, int endIndex);
}