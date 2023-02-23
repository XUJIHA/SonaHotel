package tw.hotel.attractions.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.hotel.attractions.model.Attractions;
//import tw.hotel.attractions.model.AttractionsBean;
import tw.hotel.attractions.model.AttractionsRepository;

@Service
@Transactional
public class AttractionsService {
	
	@Autowired
	private AttractionsRepository aRepo;
	
	public Attractions insert(Attractions bean) {
		return aRepo.save(bean);
	}
	
	public Attractions update(Attractions bean) {
		return aRepo.save(bean);
	}
	
	public void deleteById(Integer id) {
		aRepo.deleteById(id);
	}
	
	public Attractions findById(Integer id) {
		Optional<Attractions> op = aRepo.findById(id);
		Attractions a1 = null;
		
		if(op.isPresent()) {
			a1 = op.get();
		}
		
		return a1;
	}
	
	public List<Attractions> findAll(){
		return aRepo.findAll();
	}
	
	public List<Attractions> likeSearch(String search){
		return aRepo.likeSearch(search);
	}
	
	public List<Attractions> areaSearch(String search){
		return aRepo.areaSearch(search);
	}
	
}
