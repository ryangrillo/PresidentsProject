package data;

import java.util.List;

public interface PresidentDao {
	List<President> getAllPresidents();
	President getPresidentByTermNumber(String termNum);
	List<President> getFilteredList();
}
