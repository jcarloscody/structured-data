import java.io.*;

public class Patch {
    /**
     * the patch process is end up successfully
     */
    public static final int RETURN_SUCCESS = 1;

    /**
     * diffFile is null, or the diffFile does not exist
     */
    public static final int RETURN_DIFF_FILE_ERR = 2;

    /**
     * oldFile is null, or the oldFile does not exist
     */
    public static final int RETURN_OLD_FILE_ERR = 3;

    /**
     * newFile is null, or can not create the newFile
     */
    public static final int RETURN_NEW_FILE_ERR = 4;


    public static int patchFast(File oldFile, File newFile, File patchFile, int extLen) throws IOException {
        if (oldFile == null || oldFile.length() <= 0) {
            return RETURN_OLD_FILE_ERR;
        }
        if (newFile == null) {
            return RETURN_NEW_FILE_ERR;
        }
        if (patchFile == null || patchFile.length() <= 0) {
            return RETURN_DIFF_FILE_ERR;
        }

        InputStream oldFileInputStream = new BufferedInputStream(new FileInputStream(oldFile));

        byte[] patchBytes = new byte[(int) patchFile.length()];

        InputStream patchInputStream = new FileInputStream(patchFile);
        patchBytes = BSUtil.inputStreamToByte(patchInputStream);
        try {
            BSUtil.readFromStream(patchInputStream, patchBytes, 0, patchBytes.length);
        } finally {
            patchInputStream.close();
        }

//        byte[] newBytes = patchFast(oldFileInputStream, (int) oldFile.length(), patchBytes, extLen);
//
//        OutputStream newOutputStream = new FileOutputStream(newFile);
//        try {
//            newOutputStream.write(newBytes);
//        } finally {
//            newOutputStream.close();
//        }
       return RETURN_SUCCESS;
   }



//    public static void main(String[] args) {
//
//            File texto1 = new File("C:\\Users\\josue\\Documents\\repositorio\\studing\\structured-data\\Strutur\\src\\old.apk");
//            File textopatch = new File("C:\\Users\\josue\\Documents\\repositorio\\studing\\structured-data\\Strutur\\src\\new.patch");
//            File texto = new File("C:\\Users\\josue\\Documents\\repositorio\\studing\\structured-data\\Strutur\\src\\newN.apk");
//
//            try {
//                BSPatch.patchFast(texto1,texto , textopatch, 0);
//            } catch (Exception e){
//                e.printStackTrace();
//            }
//
//
//            // BSDiff.bsdiff(texto1, texto, textopatch);
//
//    }

}


