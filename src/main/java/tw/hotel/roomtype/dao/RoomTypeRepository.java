package tw.hotel.roomtype.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import tw.hotel.roomtype.model.RoomsBean;

public interface RoomTypeRepository extends JpaRepository<RoomsBean, String> {
	
	@Query(value = "from RoomsBean where roomId like concat('%',?1,'%') or name like concat('%',?1,'%')")
	List<RoomsBean> findAnyMatch(String input);
	
	@Query(value = "from RoomsBean where roomId like ?1")
	List<RoomsBean> findAllRoomsById(String Id);
	
	@Query(value = "from RoomsBean where capacity = ?1")
	List<RoomsBean> findByCapacity(int capacity);

	@Query(value = "from RoomsBean where name like ?1")
	List<RoomsBean> findByName(String name);
	
	@Query(value = "from RoomsBean where status = ?1")
	List<RoomsBean> findByStatus(int status);
	
	@Query(value = "from RoomsBean where capacity = ?1 and status = ?2")
	List<RoomsBean> findByCapacityAndStatus(int capacity, int status);
	
	@Query(value = "from RoomsBean where price >= ?1 and price <= ?2")
	List<RoomsBean> findByPriceRange(int minPrice, int maxPrice);
	
	@Query(value = "from RoomsBean where price >= ?1")
	List<RoomsBean> findByMinPrice(int minPrice);
	
	@Query(value = "from RoomsBean where price <= ?1")
	List<RoomsBean> findByMaxPrice(int maxPrice);
	
	@Query(value = "from RoomsBean where capacity = ?1 and (price >= ?2 and price <= ?3)")
	List<RoomsBean> findByCapacityAndPriceRange(int capacity, int minPrice, int maxPrice);
	
	@Query(value = "from RoomsBean where status = ?1 and (price >= ?2 and price <= ?3)")
	List<RoomsBean> findByStatusAndPriceRange(int status, int minPrice, int maxPrice);
	
	@Query(value = "from RoomsBean where capacity = ?1 and status = ?2 and (price >= ?3 and price <= ?4)")
	List<RoomsBean> findByCapacityAndStatusAndPriceRange(int capacity, int status, int minPrice, int maxPrice);
	
}
