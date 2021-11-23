package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.OrderDAO;
import model.Cart;
import model.Order;

/**
 * Servlet implementation class CheckoutController
 */
public class CheckoutController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckoutController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		try {
			HttpSession session = request.getSession();
			if (session.getAttribute("cart") == null) {
				session.setAttribute("cart", new Cart());
			}
			Cart currentCart = (Cart) session.getAttribute("cart");
			String email = request.getParameter("email");
			String phone = request.getParameter("phone");
			String address = request.getParameter("address");
			String code = request.getParameter("code");
			Order newOrder = new Order(1, code, address, email, phone, null);
			OrderDAO dao = new OrderDAO();
			dao.insertOrder(newOrder, currentCart);
			session.setAttribute("cart", new Cart());
			response.sendRedirect("order-success.jsp");
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
