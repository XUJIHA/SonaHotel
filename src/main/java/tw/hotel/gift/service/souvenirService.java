package tw.hotel.gift.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.hotel.gift.dao.souvenirRepository;
import tw.hotel.gift.model.souvenirBean;

@Service
@Transactional
public class souvenirService {
	
	@Autowired
	private souvenirRepository sRepo;
	
	public List<souvenirBean> findByAll() {
		return sRepo.findAll();
	}
	
	public souvenirBean findById(int sid) {
		
		Optional<souvenirBean> optional = sRepo.findById(sid);
		souvenirBean sBean = null;
		
		if(optional.isPresent()) {
			sBean = optional.get();
		}
		
		return sBean;
	}
	
	public souvenirBean save(souvenirBean sBean) {
		return sRepo.save(sBean);
	}
	
	public souvenirBean updateSouvenir(souvenirBean sBean) {
		return sRepo.save(sBean);
	}
	
	public void deleteById(int sid) {
		sRepo.deleteById(sid);
	}
}
