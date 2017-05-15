package web;

import java.io.IOException;
import java.util.ArrayList;
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
        String previous = req.getParameter("previous");
        String party = req.getParameter("party");
        
        President pres = dao.getPresidentByTermNumber(termNum);
        List<President> presidents = dao.getAllPresidents();
        List<President> filteredList = new ArrayList<>();
        
        HttpSession session = req.getSession();
       
        if ( party != null && !(party.equals("none"))) {
        		filteredList = dao.getFilteredList(party);
        		presidents = filteredList;
        }
        
        if(termNum != null && next == null && previous == null){
            req.setAttribute("president", pres);
            req.setAttribute("party", party);
            req.getRequestDispatcher("display.jsp").forward(req, resp);
        }
        else if(next != null){
	        		President nextPres;
        		if ((presidents.indexOf(pres) == presidents.size()-1)) {
        			nextPres = presidents.get(0);
        		}
        		else {
        			nextPres =  presidents.get((presidents.indexOf(pres))+1);
        		}
            req.setAttribute("president", nextPres);
            req.setAttribute("party", party);
            req.getRequestDispatcher("display.jsp").forward(req, resp);
        }
//        else if(next != null){
//        		President nextPres;
//            
//        		if ((filteredList.indexOf(pres) == filteredList.size()-1)) {
//        			nextPres = filteredList.get(0);
//        		}
//        		else {
//        			nextPres =  filteredList.get((filteredList.indexOf(pres))+1);
//        		}
//        	req.setAttribute("president", nextPres);
//        req.getRequestDispatcher("display.jsp").forward(req, resp);
//        }
        
        else if(previous != null) {
        		President previousPres;
    			if ((presidents.indexOf(pres) == 0) && (presidents.size() > 1)) {
    				previousPres = presidents.get(presidents.size()-1);
    			}
    			else  if (presidents.indexOf(pres)== 0 && (presidents.size() ==1)) {
    				previousPres =  presidents.get(0);
    			}
    			else if (presidents.indexOf(pres) < 0) {
    				previousPres = presidents.get(0);
    			}
    			else {
    				previousPres = presidents.get(presidents.indexOf(pres)-1);
    			}
 
    			req.setAttribute("president", previousPres);
    			req.setAttribute("party", party);
    			req.getRequestDispatcher("display.jsp").forward(req, resp);
        	
       	}
//        else if(party != null) {
//        		for (President p : presidents) {
//        			if((p.getParty().trim()).equalsIgnoreCase(party)) {
//					filteredList.add(p);
//				}
//			}
//        		req.setAttribute("president", filteredList.get(0));
//        		req.setAttribute("presidents", filteredList);
//			req.getRequestDispatcher("display.jsp").forward(req, resp);
//        		
//        }
        
    }

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

	@Override
	public void init() throws ServletException {
		super.init();
		dao = new PresidentDaoImpl(this.getServletContext());
	}
	
	
}
