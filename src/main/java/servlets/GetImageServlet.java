package servlets;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;

@WebServlet(urlPatterns = "/getImage")
public class GetImageServlet  extends HttpServlet {
    private static final String IMAGE_PATH = "C:\\Users\\Paruyr\\Desktop\\pictures\\";


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String profilePic = req.getParameter("profilePic");
        String filePath = IMAGE_PATH + profilePic;
        File imageFail = new File(filePath);
        if (imageFail.exists()) {
            try(FileInputStream stream = new FileInputStream(imageFail)) {
                resp.setContentType("image/jpeg");
                resp.setContentLength((int)imageFail.length());

                OutputStream outputStream = resp.getOutputStream();
                byte[] buffer = new byte[4096];
                int bytesRead = -1;
                while ((bytesRead = stream.read(buffer)) != -1) {
                    outputStream.write(buffer, 0, bytesRead);
                }

            } catch (IOException e) {
                e.printStackTrace();
            }


        }

    }
}
