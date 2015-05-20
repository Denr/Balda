import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/RandomWord/*")
public class RandomWord extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");
        File file = new File("here path to random.txt");
        BufferedReader reader = new BufferedReader(new FileReader(file));
        String s;
        ArrayList<String> list = new ArrayList<String>();
        int random = (int) (Math.random() * 11869);
        while ((s = reader.readLine()) != null) {
            list.add(s);
        }
        String randomWord = list.get(random);
        String newRandom = new String(randomWord.getBytes(), "UTF-8");
        reader.close();
        response.getWriter().write(newRandom);
    }
}