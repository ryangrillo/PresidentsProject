package web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import data.President;
import data.PresidentDao;
import data.PresidentDaoImpl;

public class PresidentServlet extends HttpServlet {
	private PresidentDao dao;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		
		List<President> presidents = dao.getAllPresidents();
		req.setAttribute("presidents", presidents);
		String termNum= req.getParameter("termNum");
		President pres = dao.getPresidentByTermNumber(termNum);
		req.setAttribute("president", pres);
		req.getRequestDispatcher("display.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

	@Override
	public void init() throws ServletException {
		super.init();
		dao = new PresidentDaoImpl(getServletContext());
	}
	
	
}
