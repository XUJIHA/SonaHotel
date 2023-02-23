package tw.hotel.attractions.model;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface ItineraryRepository extends JpaRepository<Itinerary, Integer> {
	@Query(value = "from Itinerary where itype like %:search%")
	public List<Itinerary> typeSearch(String search);
}