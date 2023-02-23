package tw.hotel.restaurant.model;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import tw.hotel.roomtype.model.RoomsBean;

public interface RestaurantRepository extends JpaRepository<Restaurant, Integer> {
	 @Query("SELECT r FROM Restaurant r WHERE r.restaurantname LIKE %:name%")
	    List<Restaurant> findByNameLike(@Param("name") String name);
	 @Query("SELECT r FROM Restaurant r WHERE r.restauranttype LIKE %:type%")
	 List<Restaurant> findByTypeLike(@Param("type") String type);
	 @Query("SELECT r FROM Restaurant r WHERE r.restaurantaddress LIKE %:address%")
	 List<Restaurant> findByAddressLike(@Param("address") String address);
	 @Query(value = "from Restaurant where Restaurant_Id like ?1")
		List<Restaurant> findAllRestaurantById(String Id);
}
