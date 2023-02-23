package tw.hotel.roomtype.service.impl;

import java.sql.Blob;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.hotel.orderRoom.model.OrdersRepository;
import tw.hotel.roomtype.dao.RoomTypeRepository;
import tw.hotel.roomtype.model.RoomsBean;
import tw.hotel.roomtype.service.RoomTypeService;

@Service
@Transactional
public class RoomTypeServiceImpl implements RoomTypeService {

	@Autowired
	private RoomTypeRepository rRepo;
	@Autowired
	private OrdersRepository oRepo;

	@Override
	public List<RoomsBean> findAll() {
		List<RoomsBean> rooms = rRepo.findAll();
		Date now = new Date();
		for(RoomsBean room : rooms) {
			boolean isAvailable = oRepo.checkAvailable(room.getRoomId(), now, now).isEmpty();
			if (isAvailable) {
				room.setStatus(1);
			} else {
				room.setStatus(0);
			}
		}
		return rooms;
	}

	@Override
	public List<RoomsBean> findById(String Id) {
		return rRepo.findAllRoomsById(Id);
	}
	
	@Override
	public boolean idExist(String Id) {
		Optional<RoomsBean> opt = rRepo.findById(Id);
		return opt.isPresent();
	}

	@Override
	public List<RoomsBean> findAnyMatch(String input) {
		return rRepo.findAnyMatch(input);
	}

	@Override
	public List<RoomsBean> findByCapacity(int capacity) {
		return rRepo.findByCapacity(capacity);
	}

	@Override
	public List<RoomsBean> findByName(String name) {
		return rRepo.findByName(name);
	}

	@Override
	public List<RoomsBean> findByStatus(int status) {
		return rRepo.findByStatus(status);
	}

	@Override
	public List<RoomsBean> findByCapacityAndStatus(int capacity, int status) {
		return rRepo.findByCapacityAndStatus(capacity, status);
	}

	@Override
	public List<RoomsBean> findByPriceRange(int minPrice, int maxPrice) {
		return rRepo.findByPriceRange(minPrice, maxPrice);
	}

	@Override
	public List<RoomsBean> findByMinPrice(int minPrice) {
		return rRepo.findByMinPrice(minPrice);
	}

	@Override
	public List<RoomsBean> findByMaxPrice(int maxPrice) {
		return rRepo.findByMaxPrice(maxPrice);
	}

	@Override
	public List<RoomsBean> findByCapacityAndPriceRange(int capacity, int minPrice, int maxPrice) {
		return rRepo.findByCapacityAndPriceRange(capacity, minPrice, maxPrice);
	}

	@Override
	public List<RoomsBean> findByStatusAndPriceRange(int status, int minPrice, int maxPrice) {
		return rRepo.findByStatusAndPriceRange(status, minPrice, maxPrice);
	}

	@Override
	public List<RoomsBean> findByCapacityAndStatusAndPriceRange(int capacity, int status, int minPrice, int maxPrice) {
		return rRepo.findByCapacityAndStatusAndPriceRange(capacity, status, minPrice, maxPrice);
	}

	@Override
	public int insertRoomType(RoomsBean bean) {
		RoomsBean b = rRepo.save(bean);
		return b == null ? 0 : 1;
	}

	@Override
	public int insertRoomType(String roomId, String name, int status, int capacity, int bed, double size, int price,
			Blob img, String description, String equipment) {
		RoomsBean b = new RoomsBean(roomId, name, status, capacity, bed, size, price, img, description, equipment);
		return insertRoomType(b);
	}

	@Override
	public int updateStatusById(String id, int status) {
		RoomsBean b = null;
		Optional<RoomsBean> opt = rRepo.findById(id);
		if (opt.isPresent()) {
			b = opt.get();
		}
		b.setStatus(status);
		return insertRoomType(b);
	}

	@Override
	public int updateRoom(RoomsBean bean) {
		return insertRoomType(bean);
	}

	@Override
	public int deleteById(String id) {
		rRepo.deleteById(id);
		Optional<RoomsBean> opt = rRepo.findById(id);
		return opt.isEmpty() ? 1 : 0;
	}

	@Override
	public int deleteByIds(List<String> ids) {
		ids.forEach(id -> deleteById(id));
		return 1;
	}

}
