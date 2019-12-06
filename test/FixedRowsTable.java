
import java.awt.BorderLayout;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.List;
import javax.swing.JButton;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JScrollBar;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.SwingUtilities;
import javax.swing.table.DefaultTableModel;

public class FixedRowsTable {

    public static void main(String[] args) {

        abstracta s = new abstracta() {
            @Override
            public List getObjectRows() {
                throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
            }
         
        };
        
        SwingUtilities.invokeLater(new Runnable() {
            public void run() {
                String[] columns = {"1","2","3","4","5","6","7"};
                Integer[][] data = new Integer[1000][columns.length];
                for (int xx=0; xx<data.length; xx++) {
                    for (int yy=0; yy<data[0].length; yy++) {
                        data[xx][yy] = new Integer((xx+1)*(yy+1));
                    }
                }
                final int rows = 11;

                JPanel gui = new JPanel(new BorderLayout(3,3));

                final JTable table = new JTable(
                    new DefaultTableModel(data, columns));

                final JScrollPane scrollPane = new JScrollPane(
                    table,
                    JScrollPane.VERTICAL_SCROLLBAR_NEVER,
                    JScrollPane.HORIZONTAL_SCROLLBAR_NEVER);
                
                Dimension d = table.getPreferredSize();
                scrollPane.setPreferredSize(
                    new Dimension(d.width,table.getRowHeight()*rows));

                JPanel navigation = new JPanel(
                    new FlowLayout(FlowLayout.CENTER));
                JButton next = new JButton(">");
                next.addActionListener( new ActionListener(){
                    public void actionPerformed(ActionEvent ae) {
                        int height = table.getRowHeight()*(rows-1);
                        JScrollBar bar = scrollPane.getVerticalScrollBar();
                        bar.setValue( bar.getValue()+height );
                    }

                } );
                JButton previous = new JButton("<");
                previous.addActionListener( new ActionListener(){
                    public void actionPerformed(ActionEvent ae) {
                        int height = table.getRowHeight()*(rows-1);
                        JScrollBar bar = scrollPane.getVerticalScrollBar();
                        bar.setValue( bar.getValue()-height );
                    }
                } );

                navigation.add(previous);
                navigation.add(next);

                gui.add(scrollPane, BorderLayout.CENTER);
                gui.add(navigation, BorderLayout.SOUTH);

                JOptionPane.showMessageDialog(null, gui);
            }
        });
    }
}
