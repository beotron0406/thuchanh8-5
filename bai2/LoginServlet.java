import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Kiểm tra thông tin đăng nhập
        if (password.equals("123456")) {
            // Lưu username vào session
            HttpSession session = request.getSession();
            session.setAttribute("username", username);

            // Chuyển hướng đến trang dashboard
            response.sendRedirect("dashboard.jsp");
        } else {
            // Hiển thị thông báo lỗi và quay lại trang đăng nhập
            response.sendRedirect("login.jsp?error=true");
        }
    }
}