package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.AccountDAO;
import model.Account;

/**
 * Servlet implementation class SignUpController
 */
public class SignUpController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUpController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession(true);
		AccountDAO accountDAO = new AccountDAO();
		try {
			//check email exist
			String email = request.getParameter("email");
			if (accountDAO.isExistAccount(email)) {
				session.setAttribute("signUpMessage", "Email đã được sử dụng!");
				response.sendRedirect("sign-up.jsp");
				return;
			}	
			
			//check length password
			String password = request.getParameter("password");
			if (password.length() < 6) {
				session.setAttribute("signUpMessage", "Mật khẩu không đủ độ dài!");
				response.sendRedirect("sign-up.jsp");
				return;
			}
			
			//check repeat password
			String password2 = request.getParameter("password2");
			if ( !password.equals(password2) ) {
				session.setAttribute("signUpMessage", "Mật khẩu không trùng khớp!");
				response.sendRedirect("sign-up.jsp");
				return;
			}
			
			String phone = request.getParameter("phone");
			String address = request.getParameter("address");
			String username = request.getParameter("username");
			
			Account acc = new Account(email, password, 2, username, address, phone);
			accountDAO.insertAccount(acc);
			session.setAttribute("signUpMessage", "");
			session.setAttribute("loginMessage", "Đăng ký thành công! Bạn vui lòng đăng nhập tại đây");
			response.sendRedirect("login.jsp");
		} catch (Exception e) {
			response.getWriter().println(e);
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
