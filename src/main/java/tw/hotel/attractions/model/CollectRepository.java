package tw.hotel.attractions.model;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface CollectRepository extends JpaRepository<Collect, Integer> {
	public List<Collect> findByPageId(int id);
	public Collect findByPageIdAndUserId(int pageId, int userId);
	public List<Collect> findByUserId(int userId);
}
