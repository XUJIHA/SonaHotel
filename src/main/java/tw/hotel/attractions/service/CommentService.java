package tw.hotel.attractions.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.hotel.attractions.model.Comment;
import tw.hotel.attractions.model.CommentRepository;

@Service
@Transactional
public class CommentService {
	@Autowired
	private CommentRepository cRepo;
	
	public Comment insert(Comment bean) {
		return cRepo.save(bean);
	}
	
	public Comment update(Comment bean) {
		return cRepo.save(bean);
	}
	
	public void deleteById(Integer id) {
		cRepo.deleteById(id);
	}
	
	public Comment findById(Integer id) {
		Optional<Comment> op = cRepo.findById(id);
		Comment a1 = null;
		
		if(op.isPresent()) {
			a1 = op.get();
		}
		
		return a1;
	}
	
	public List<Comment> findAll(){
		return cRepo.findAll();
	}
	
	public List<Comment> findByPageId(int id){
		return cRepo.findByPageId(id);
	}
}
