package tw.hotel.loginlogout.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tw.hotel.loginlogout.dao.LoginRepository;
import tw.hotel.loginlogout.model.HotelBean;

@Service
@Transactional
public class LoginService {

	@Autowired
	private LoginRepository hDao;
	private int loginCount;


	// 查詢帳號密碼
	public List<HotelBean> loginhotel(String useremail, String userpassword) {
		List<HotelBean> hb = hDao.findByUseremailAndUserpassword(useremail, userpassword);
		return hb;
	};
	
	// 查詢全部資料
	public List<HotelBean> findAll() {
		List<HotelBean> hb = hDao.findAll();
		return hb;
	};

	// 透過email拿id資料
	public int findUserIdByEmail(String useremail) {
		List<HotelBean> hb = hDao.findByUseremail(useremail);
		int id = 0;
		for (HotelBean b : hb) {
			id = b.getUserid();
		}
		return id;
	}

	// 查詢email
	public Boolean findUserEmail(String useremail) {
		Optional<HotelBean> findByUseremail = hDao.findByUseremail2(useremail);
		
		System.out.println(findByUseremail.isPresent());
		return findByUseremail.isPresent();
	}
	
	// 查詢email
	public HotelBean findUserEmail2(String useremail) {
		List<HotelBean> hb = hDao.findByUseremail(useremail);
		return hb.get(0);
	}
	// 查詢密碼
	public Boolean findUserPassword(String userpassword) {
		Optional<HotelBean> findByUserpassword = hDao.findByUserpassword(userpassword);
		System.out.println(findByUserpassword.isPresent());
		return findByUserpassword.isPresent();
	}
	
	//會員總數
	public int getmemberCount() {
		return (int) hDao.count();
    }
	
		
	// 查詢註冊日期
	public List<String> findByRegister(String userregistration) {
		List<HotelBean> findByUserregistration = hDao.findAll();		
		List<String> userregistrations=new ArrayList<>();
		
		for (HotelBean b : findByUserregistration) {
			
			userregistrations.add(b.getUserregistration());
		}
		
		return userregistrations;
	}
	
	// 查詢性別
		public List<String> findByGender(String usergender) {
			System.out.println(usergender);
			List<HotelBean> findByUsergender = hDao.findAll();		
			List<String> Allusergender=new ArrayList<>();
			
			for (HotelBean b : findByUsergender) {
				
				Allusergender.add(b.getUsergender());
			}
			return Allusergender;
		}

	// 查詢身分證字號
	public Boolean findUserIdentity(String useridentity) {
		Optional<HotelBean> findByUseridentity = hDao.findByUseridentity(useridentity);
		if (findByUseridentity.isPresent()) {
			return true;
		} else {
			return false;
		}
	}
	
	// 查詢驗證狀態
	public Boolean findUserStatus(String userstatus) {
		Optional<HotelBean> findByUserStatus = hDao.findByUserstatus(userstatus);
		if (findByUserStatus.isPresent()) {
			return true;
		} else {
			return false;
		}
	}
	
	public List<String> findByUserStatus(String userstatus) {
		System.out.println(userstatus);
		List<HotelBean> findByUserStatus = hDao.findAll();		
		List<String> Alluserstatus=new ArrayList<>();
		
		for (HotelBean b : findByUserStatus) {
			Alluserstatus.add(b.getUserstatus());
		}
		return Alluserstatus;
	}

	// 新增
	public void addhotel(HotelBean hBean) {
		System.out.println(hBean);
		hDao.save(hBean);
	};

	// 透過id拿資料
	public List<HotelBean> findById(int userid) {
		return hDao.findByuserid(userid);
	};

	// 刪除
	public void deleteById(int userid) {
		hDao.deleteByuserid(userid);
	};

	// 修改
	public HotelBean updatehotel(HotelBean hBean) {
		HotelBean hb = hDao.save(hBean);
		return hb;
	}
	
	// 修改忘記密碼
	public void updatePassword(String useremail, String userpassword) {
		HotelBean user = hDao.findByUseremail2(useremail).get();
		user.setUserpassword(userpassword);
	    
	}

	// 查詢全部
	public List<HotelBean> selecthotel() {
		List<HotelBean> hb = hDao.findAll();
		return hb;
	};
	
	public int getLoginCount() {
	    return loginCount;
	}

}
