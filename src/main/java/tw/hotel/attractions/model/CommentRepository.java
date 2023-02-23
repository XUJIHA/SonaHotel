package tw.hotel.attractions.model;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface CommentRepository extends JpaRepository<Comment, Integer> {
	public List<Comment> findByPageId(int id);

}
