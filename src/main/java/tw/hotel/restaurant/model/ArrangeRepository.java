package tw.hotel.restaurant.model;

import java.sql.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;


public interface ArrangeRepository extends JpaRepository<Arrange, Integer> {
	
	List<Arrange> findByrestaurantidLike(Integer restaurantid);
	
	@Query("SELECT r FROM Arrange r WHERE r.arrangename LIKE %:name%")
    List<Arrange> ArrfindByNameLike(@Param("name") String name);
	
	@Query("SELECT r FROM Arrange r WHERE r.arrangephone LIKE %:phone%")
    List<Arrange> ArrfindByPhoneLike(@Param("phone") String phone);
	
	@Query("SELECT r FROM Arrange r WHERE r.restaurantid LIKE %:id%")
    List<Arrange> ArrfindByIdLike(@Param("id") String id);

	@Query("SELECT r FROM Arrange r WHERE r.arrangenumber = :id")
	List<Arrange> ArrfindById(@Param("id") Integer id);
	
	@Query(value = "SELECT * FROM Arrange WHERE accountid = ?1", nativeQuery = true)
	List<Arrange> findByAccountid(int userid);
	
	@Query(value = "SELECT * FROM Arrange WHERE EAT_TIME = ?1 and DAY =?2 and RESTAURANT_Name =?3", nativeQuery = true)
	List<Arrange> orderstate(String eattime,String day,String ResName);
	
}
