package tw.hotel.attractions.model;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface AttractionsRepository extends JpaRepository<Attractions, Integer> {
	
	@Query(value = "from Attractions where aname like %:search% or address like %:search% or introduction like %:search% or phone like %:search%")
	public List<Attractions> likeSearch(String search);
	
	@Query(value = "from Attractions where address like %:search%")
	public List<Attractions> areaSearch(String search);

}
