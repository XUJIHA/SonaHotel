package tw.hotel.loginlogout.service;

import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import tw.hotel.loginlogout.dao.LoginRepository;
import tw.hotel.loginlogout.model.HotelBean;

@Service
@Transactional
public class UserService {

	@Autowired 
	private LoginRepository hDao;
	
	public HotelBean getUseremail(String useremail) {

		Optional<HotelBean> op1 = hDao.findByUseremail2(useremail);

		if (op1.isEmpty()) {
			throw new UsernameNotFoundException("Can't find User");
		}

		return op1.get();
	}

	public HotelBean createUserProfiles(HotelBean up1) {
		return hDao.save(up1);
	}
}
