package tw.hotel.attractions.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.hotel.attractions.model.Itinerary;
import tw.hotel.attractions.model.ItineraryRepository;

@Service
@Transactional
public class ItineraryService {
	@Autowired
	private ItineraryRepository iRepo;
	
	public Itinerary insert(Itinerary bean) {
		return iRepo.save(bean);
	}
	
	public Itinerary update(Itinerary bean) {
		return iRepo.save(bean);
	}
	
	public void deleteById(Integer id) {
		iRepo.deleteById(id);
	}
	
	public Itinerary findById(Integer id) {
		Optional<Itinerary> op = iRepo.findById(id);
		Itinerary a1 = null;
		
		if(op.isPresent()) {
			a1 = op.get();
		}
		
		return a1;
	}
	
	public List<Itinerary> findAll(){
		return iRepo.findAll();
	}
	
	public List<Itinerary> typeSearch(String search){
		return iRepo.typeSearch(search);
	}
	
}
