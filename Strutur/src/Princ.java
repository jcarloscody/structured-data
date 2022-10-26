import java.io.File;
import java.io.IOException;

public class Princ {
    public static void main(String[] args) throws IOException {
        File texto1 = new File("C:\\Users\\josue\\Documents\\repositorio\\studing\\structured-data\\Strutur\\src\\texto1.txt");
        File textopatch = new File("C:\\Users\\josue\\Documents\\repositorio\\studing\\structured-data\\Strutur\\src\\texto.patch");
        File texto = new File("C:\\Users\\josue\\Documents\\repositorio\\studing\\structured-data\\Strutur\\src\\textoN.patch");

        try {
           BSPatch.patchFast(texto1,texto , textopatch, 0);
        } catch (Exception e){
            e.printStackTrace();
        }


       // BSDiff.bsdiff(texto1, texto, textopatch);

    }
}
