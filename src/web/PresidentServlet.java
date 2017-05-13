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
        String termNum= req.getParameter("termNum");
        String next = req.getParameter("next");
        President pres = dao.getPresidentByTermNumber(termNum);
        List<President> presidents = dao.getAllPresidents();
//        President nextPres = presidents.get(termN+1);
        System.out.println(next);
        System.out.println(termNum);
        HttpSession session = req.getSession();
        if(termNum != null && next == null){
            req.setAttribute("president", pres);
            req.getRequestDispatcher("display.jsp").forward(req, resp);
        }
        else if(next != null && termNum != null){
            President nextPres = presidents.get((presidents.indexOf(pres))+1);
            req.setAttribute("president", nextPres);
            req.getRequestDispatcher("display.jsp").forward(req, resp);
            
        }
//        req.setAttribute("presidents", presidents);
//        req.setAttribute("presidents", presidents);
//        req.getRequestDispatcher("display.jsp").forward(req, resp);
//        //if 
//        req.setAttribute("nextPresident", nextPres);
//        req.getRequestDispatcher("display.jsp").forward(req, resp);
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
