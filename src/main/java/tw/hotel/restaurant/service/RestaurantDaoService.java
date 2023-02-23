package tw.hotel.restaurant.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import tw.hotel.restaurant.dao.RestaurantDaoImpl;
import tw.hotel.restaurant.model.Arrange;
import tw.hotel.restaurant.model.ArrangeRepository;
import tw.hotel.restaurant.model.Restaurant;
import tw.hotel.restaurant.model.RestaurantRepository;

@Service
@Transactional
public class RestaurantDaoService implements RestaurantService {

	@Autowired
	private RestaurantRepository resRepo;
	@Autowired
	private ArrangeRepository arrRepo;

	private RestaurantDaoImpl resDao;
	
	public List<Restaurant> findRestaurantById(String id) {
		return resRepo.findAllRestaurantById(id);
	}
	
	// 餐廳跟訂單的查詢全部
	public List<Restaurant> resALL() {
		return resRepo.findAll(Sort.by(Sort.Direction.ASC,"restaurantid"));
	}

	public List<Arrange> arrALL() {
		return arrRepo.findAll(Sort.by(Sort.Direction.ASC,"day"));
	}

	// 餐廳跟訂單的新增
	public void insertRes(Restaurant Restaurant) {
		resRepo.save(Restaurant);
	}

	public void insertArr(Arrange Arrange) {
		arrRepo.save(Arrange);
	}

	// 餐廳跟訂單的刪除
	public void deleteRes(Integer id) {
		resRepo.deleteById(id);
	}

	public void deleteArr(Integer id) {
		arrRepo.deleteById(id);
	}

	// 確認餐廳跟訂單是否存在
	public boolean findRes(Integer id) {

		Restaurant probe = new Restaurant();
		probe.setRestaurantid(id);
		Example<Restaurant> example = Example.of(probe);
		Restaurant restaurant = resRepo.findOne(example).orElse(null);

		if (restaurant == null) {
			return true;
		} else {
			return false;
		}

	}

	public boolean findArr(Integer id) {

		Arrange probe = new Arrange();
		probe.setArrangenumber(id);
		Example<Arrange> example = Example.of(probe);
		Arrange restaurant = arrRepo.findOne(example).orElse(null);

		if (restaurant == null) {
			return true;
		} else {
			return false;
		}

	}
	//用id查詢餐廳
	public boolean findArrByid(Integer id) {
	    Arrange restaurant = arrRepo.findById(id).orElse(null);
	    if (restaurant == null) {
			return true;
		} else {
			return false;
		}
	}
	

	// 給予餐廳id查詢是否有訂單
	public boolean checkArrExist(Integer id) {
		List<Arrange> arr1 = null;
		arr1 = arrRepo.findByrestaurantidLike(id);
		if (arr1 == null || arr1.isEmpty()) {
			return false;
		} else {
			return true;
		}
	}

	// 修改餐廳和訂單
	public void reInsertRes(Restaurant Restaurant) {
		Integer id = Restaurant.getRestaurantid();
		Restaurant res = resRepo.getReferenceById(id);
		res.setRestaurantaddress(Restaurant.getRestaurantaddress());
		res.setRestaurantdes(Restaurant.getRestaurantdes());
		res.setRestaurantname(Restaurant.getRestaurantname());
		res.setRestaurantphone(Restaurant.getRestaurantphone());
		res.setRestaurantprice(Restaurant.getRestaurantprice());
		
		res.setRestauranttype(Restaurant.getRestauranttype());
		res.setImage(Restaurant.getImage());
	}

	public void reInsertArr(Arrange Arrange) {
		Integer id = Arrange.getArrangenumber();
		Arrange arr = arrRepo.getReferenceById(id);

		arr.setArrangenumber(Arrange.getArrangenumber());
		arr.setArrangename(Arrange.getArrangename());
		arr.setArrangephone(Arrange.getArrangephone());
		arr.setPeople(Arrange.getPeople());
		arr.setDay(Arrange.getDay());
		arr.setEattime(Arrange.getEattime());
		arr.setRestaurantid(Arrange.getRestaurantid());
		arr.setResname(Arrange.getResname());
		arr.setAccountid(Arrange.getAccountid());
		arr.setPrice(Arrange.getPrice());
	}

	// 以下為餐廳查詢功能
	//餐廳id查詢
	public List<Restaurant> findResById(Integer id) {

		   Restaurant probe = new Restaurant();
		    probe.setRestaurantid(id);
		    Example<Restaurant> example = Example.of(probe);
		    List<Restaurant> result = resRepo.findAll(example);
		    return result;

	}
	// 餐廳種類查詢
	public List<Restaurant> findResByType(String type) {

		List<Restaurant> result = resRepo.findByNameLike("%"+type+"%");
	    return result;

	}
	// 餐廳名子查詢
	public List<Restaurant> findResByName(String name) {
		
		 List<Restaurant> result = resRepo.findByNameLike("%"+name+"%");
		    return result;
		
	}
	// 餐廳地址查詢
	public List<Restaurant> findResByAddress(String address) {
		
		List<Restaurant> result = resRepo.findByAddressLike("%"+address+"%");
		return result;
	}
	
	//訂位者姓名查詢
	public List<Arrange> ArrfindByNameLike(String name) {
		
		 List<Arrange> result = arrRepo.ArrfindByNameLike("%"+name+"%");
		    return result;
		
	}
	//訂位者電話查詢
	public List<Arrange> ArrfindByPhoneLike(String phone) {
		
		List<Arrange> result = arrRepo.ArrfindByPhoneLike("%"+phone+"%");
		return result;
		
	}
	//訂位者ID查詢
	public List<Arrange> ArrfindByIdLike(Integer id) {
		List<Arrange> result = arrRepo.findByrestaurantidLike(id);
	
		return result;
	 
	}

	public List<Arrange> ArrfindById(String id) {
		int id2 = Integer.parseInt(id);
		List<Arrange> result = arrRepo.ArrfindById(id2);
		
		return result;
	}
	

	// 以上為修改

	public boolean checkRes(int id) {
		return resDao.checkRes(id);
	}

	public void AddRestautant(Restaurant resBean) {
		resDao.AddRestautant(resBean);
	}

	public void DeleteRestaurant(Integer id) {
		resDao.DeleteRestaurant(id);
	}

	public void RewriteRestaurant(Restaurant resBean) {
		resDao.RewriteRestaurant(resBean);
	}

	public List<Restaurant> SearchRestaurant(int id) {
		return resDao.SearchRestaurant(id);
	}

	public List<Restaurant> selectAll() {
		return resDao.selectAll();
	}

	public List<Restaurant> SearchResAddress(String resturantaddress) {
		return resDao.SearchResAddress(resturantaddress);
	}

	public List<Restaurant> SearchResName(String resturantname) {
		return resDao.SearchResName(resturantname);
	}

	public List<Restaurant> SearchResType(String resturanttype) {
		return resDao.SearchResType(resturanttype);
	}

	public void AddArrange(Arrange arr) {
		resDao.AddArrange(arr);
	}

	public void DeleteArrange(int id) {
		resDao.DeleteArrange(id);
	}

	public void RewriteArrange(Arrange arrBean) {
		resDao.RewriteArrange(arrBean);
	}

	public List<Arrange> selectArrange() {
		return resDao.selectArrange();
	}

	public List<Arrange> selectArrangeName(String name) {
		return resDao.selectArrangeName(name);
	}

	public List<Arrange> selectArrangeResid(int resid) {
		return resDao.selectArrangeResid(resid);
	}

	public List<Arrange> selectArrangePhone(String phone) {
		return resDao.selectArrangePhone(phone);
	}

	public boolean checkArr(int id) {
		return resDao.checkArr(id);
	}
	public List<Arrange> findByAccountid(int userid){
		return arrRepo.findByAccountid(userid);
	}
	public List<Arrange> orderstate(String eattime,String day,String ResName){
		return arrRepo.orderstate(eattime, day,ResName);
	}
}
