package tw.hotel.loginlogout.dao;

import java.util.List;
import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import tw.hotel.loginlogout.model.HotelBean;


public interface LoginRepository extends JpaRepository<HotelBean, String>{

		// 透過id拿資料
		public List<HotelBean> findByuserid(int userid);

		// 查詢全部
		public List<HotelBean> findAll();
		
		// 查詢帳號密碼
		@Query(value="from HotelBean where useremail=?1 and userpassword=?2")
		public  List<HotelBean> findByUseremailAndUserpassword(String useremail,String userpassword);
		
		// 透過email拿id資料
		public List<HotelBean> findByUseremail(String useremail);
		
		//透過ID刪除會員資料
		public void deleteByuserid(int userid);
		
		//查詢帳號是否存在
		@Query(value="from HotelBean where useremail=?1")
		public Optional<HotelBean> findByUseremail2(String useremail);
		
		//查詢身分證字號
		public Optional<HotelBean> findByUseridentity(String useridentity);
		
		//查詢密碼
		public Optional<HotelBean> findByUserpassword(String userpassword);
		
		//查詢使用者狀態
		public Optional<HotelBean> findByUserstatus(String userstatus);

		@Query(value="from HotelBean where userstatus=?1")
		public List<HotelBean> findByUserstatus2(String userstatus);
			
		

}

