package misc;
import java.io.File;
import java.nio.file.Files;

public class Util {
    public static String method1() {
        return "Warrior";
    }

    public String method2() {
        return "non static";
    }

    public static void writeToFile(String filename, String content)
    {
        try {
            File f = new File(filename);
            Files.write(f.toPath(), content.getBytes());
            System.out.println("File ==> " + f.getAbsolutePath());
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }

}
