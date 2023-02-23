package tw.hotel.orderRoom.model;

import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface OrdersRepository extends JpaRepository<Orders, Integer> {


	@Query(value = "Select * from Orders where user_id = ?1", nativeQuery = true)
	public List<Orders> findAllByUserid(int userid);

	
	@Query(value = "from Orders where canceltag = ?4 and roomid = ?1 "
			+ "and ((?2 <= checkoutdate and ?3 >= checkindate) " + "or (?2 >= checkindate and ?2 <= checkoutdate) "
			+ "or (?3 >= checkindate and ?3 <= checkoutdate))")
	public List<Orders> checkAvailable1(String roomId, Date checkin, Date checkout,String canceltag);
	
	@Query(value = "from Orders where roomid = ?1 "
			+ "and ((?2 <= checkoutdate and ?3 >= checkindate) " + "or (?2 >= checkindate and ?2 <= checkoutdate) "
			+ "or (?3 >= checkindate and ?3 <= checkoutdate))")
	public List<Orders> checkAvailable(String roomId, Date checkin, Date checkout);
	
	
	@Query(value = "from Orders where username =?1 and userid=?2 and roomid=?3 and orderdate= ?4 "
			+ "and checkindate= ?5 and checkoutdate=?6 and roomname= ?7 and price= ?8")
	public Optional<Orders> findOrderid(String username, int id, String roomid, java.sql.Date sqlorderdate,
			java.sql.Date sqlcheckindate, java.sql.Date sqlcheckoutdate, String roomname, int price);

	@Query(value = "from Orders where couponid =?1")
	public Optional<Orders> findOrderid(int intcouponid);
	
}
