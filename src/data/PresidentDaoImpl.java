package data;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;

public class PresidentDaoImpl implements PresidentDao {
	private List<President> presidents = new ArrayList<>();
	
	public PresidentDaoImpl(ServletContext context) {
		loadPresidentsFromFile(context);
	}

	@Override
	public List<President> getAllPresidents() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public President getPresidentByTermNumber(String termNum) {
		President pres = null;
		if(termNum==null){
			return pres;
		}
		for (President p : presidents) {
			if (termNum.equals(pres.getTermNumber())) {
				pres = p;
				break;
			}
		}
		return pres;
	}

	@Override
	public List<President> getFilteredList() {
		// TODO Auto-generated method stub
		return null;
	}
	private void loadPresidentsFromFile(ServletContext context) {
		String fileName = "WEB-INF/presidents.txt";
		try {
			InputStream is = context.getResourceAsStream(fileName);
			BufferedReader br = new BufferedReader(new InputStreamReader(is));
			String line = "";
			while ( (line = br.readLine()) != null) {
				String[] fields = line.split(",");
				if (fields.length !=6) {continue;}
				String[] termRange = fields[4].split("-");
				President p = new President(fields[1], fields[2], fields[3], fields[5], fields[0], termRange[0],
						termRange[1]);
				presidents.add(p);
			}
			br.close();
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
