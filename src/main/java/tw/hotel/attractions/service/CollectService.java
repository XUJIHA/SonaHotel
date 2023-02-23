package tw.hotel.attractions.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.hotel.attractions.model.Collect;
import tw.hotel.attractions.model.CollectRepository;

@Service
@Transactional
public class CollectService {
	
	@Autowired
	private CollectRepository coRepo;
	
	public Collect insert(Collect bean) {
		return coRepo.save(bean);
	}
	
	public Collect update(Collect bean) {
		return coRepo.save(bean);
	}
	
	public void deleteById(Integer id) {
		coRepo.deleteById(id);
	}
	
	public Collect findById(Integer id) {
		Optional<Collect> op = coRepo.findById(id);
		Collect a1 = null;
		
		if(op.isPresent()) {
			a1 = op.get();
		}
		
		return a1;
	}
	
	public List<Collect> findAll(){
		return coRepo.findAll();
	}
	
	public List<Collect> findByPageId(int id){
		return coRepo.findByPageId(id);
	}
	
	public Collect findById(int pageId, int userId){
		return coRepo.findByPageIdAndUserId(pageId,userId);
	}
	
	public List<Collect> findByUserId(int userId){
		return coRepo.findByUserId(userId);
	}
}
