package tw.hotel.orderRoom.model;


import org.springframework.data.jpa.repository.JpaRepository;


public interface OrderDetailsRepository extends JpaRepository<OrderDetails, Integer> {
	
}