import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;

@WebServlet("/CheckWord/*")
public class CheckWord extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("cp1251");
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html");
        String word = request.getParameter("word");
        String result = "no";
        File file = new File("here path to words.txt");
        BufferedReader reader = new BufferedReader(new FileReader(file));
        String s;
        while ((s = reader.readLine()) != null) {
            if (s.equals(word)) {
                result = "yes";
            }
        }
        reader.close();
        response.getWriter().write(result);
    }
}