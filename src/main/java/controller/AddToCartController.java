package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ProductDAO;
import model.Cart;
import model.Product;

/**
 * Servlet implementation class AddToCartController
 */
public class AddToCartController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddToCartController() {
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
			String action = request.getParameter("action");
			String id = request.getParameter("id");
			HttpSession session = request.getSession();
			if (action != null) {
				if (session.getAttribute("cart") == null) {
					session.setAttribute("cart", new Cart());
				}
				if (action.equals("add")) {
					int productId = Integer.parseInt(id);
					Product newProduct = new ProductDAO().searchProductById(productId);
					Cart currentCart = (Cart) session.getAttribute("cart");
					currentCart.add(newProduct);
				} else if (action.equals("delete")) {
					int productId = Integer.parseInt(id);
					Cart currentCart = (Cart) session.getAttribute("cart");
					currentCart.remove(productId);
				}
				response.sendRedirect("product?id="+id);
			}
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
