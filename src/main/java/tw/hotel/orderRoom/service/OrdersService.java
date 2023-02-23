package tw.hotel.orderRoom.service;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.sql.Date;
import java.util.List;
import java.util.Optional;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.opencsv.CSVWriter;
import com.opencsv.bean.StatefulBeanToCsv;
import com.opencsv.bean.StatefulBeanToCsvBuilder;
import com.opencsv.exceptions.CsvDataTypeMismatchException;
import com.opencsv.exceptions.CsvRequiredFieldEmptyException;

import tw.hotel.orderRoom.model.Orders;
import tw.hotel.orderRoom.model.OrderDetails;
import tw.hotel.orderRoom.model.OrderDetailsRepository;
import tw.hotel.orderRoom.model.OrdersRepository;

@Service
@Transactional
public class OrdersService {

	@Autowired
	private OrdersRepository orderRepository;

	@Autowired
	private OrderDetailsRepository orderdetailsRepository;

	public Orders InsertOrder(Orders obean) {
		return orderRepository.save(obean);
	}
	public OrderDetails InsertOrderDetails(OrderDetails odbean) {
		return orderdetailsRepository.save(odbean);
	}

	
	public Orders modifyOrder(Orders ob) {
		return orderRepository.save(ob);
	}
	public OrderDetails modifyOrderDetails(OrderDetails odb) {
		return orderdetailsRepository.save(odb);
	}

	
	public List<Orders> searchOrder() {
		return orderRepository.findAll();
	}
	public List<OrderDetails> searchOrderDetails() {
		return orderdetailsRepository.findAll();
	}

	
	public Orders findByIdforOrder(Integer id) {
		Optional<Orders> op = orderRepository.findById(id);
		Orders order = null;

		if (op.isPresent()) {
			order = op.get();
		}

		return order;
	}
	public OrderDetails findByIdforDetails(Integer id) {
		Optional<OrderDetails> op = orderdetailsRepository.findById(id);
		OrderDetails orderdetails = null;

		if (op.isPresent()) {
			orderdetails = op.get();
		}

		return orderdetails;
	}
	
	public List<Orders> findAllByUserid(int userid) {
		return orderRepository.findAllByUserid(userid);
	}
	public Orders findOrderid(String username, int id, String roomid, Date sqlorderdate, Date sqlcheckindate,
			Date sqlcheckoutdate, String roomname, int price) {
		Optional<Orders> op = orderRepository.findOrderid(username, id, roomid, sqlorderdate, sqlcheckindate,
				sqlcheckoutdate, roomname, price);
		Orders orderbean = null;

		if (op.isPresent()) {
			orderbean = op.get();
		}
		
		return orderbean;
	}
	public Orders findOrderid(int intcouponid) {
		Optional<Orders> op = orderRepository.findOrderid(intcouponid);
		Orders orderbean = null;

		if (op.isPresent()) {
			orderbean = op.get();
		}
		
		return orderbean;
	}
	
	
	public List<Orders> checkAvailable(String roomId, Date checkin, Date checkout){
		return orderRepository.checkAvailable(roomId, checkin, checkout);
	}
	
	// Csv
	public void exportToCsv() throws IOException {
		List<Orders> orders = searchOrder();

		try (Writer writer = new OutputStreamWriter(new FileOutputStream("/Users/Alice/Desktop/Orders.csv"), "BIG5")) {
			StatefulBeanToCsv<Orders> beanToCsv = new StatefulBeanToCsvBuilder<Orders>(writer)
					.withQuotechar(CSVWriter.NO_QUOTE_CHARACTER).build();
			beanToCsv.write(orders);
		} catch (CsvDataTypeMismatchException e) {
			e.printStackTrace();
		} catch (CsvRequiredFieldEmptyException e) {
			e.printStackTrace();
		}
	}
	
}
