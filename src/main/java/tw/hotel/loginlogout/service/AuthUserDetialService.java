package tw.hotel.loginlogout.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.security.authentication.DisabledException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.User;

import tw.hotel.loginlogout.model.HotelBean;

@Service
public class AuthUserDetialService implements UserDetailsService {
	
	@Autowired
	private UserService userService;
	private int loginCount;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		loginCount++;
		HotelBean user = userService.getUseremail(username);
		
		List<GrantedAuthority> authAdmin=AuthorityUtils.commaSeparatedStringToAuthorityList("ROLE_ADMIN");
		List<GrantedAuthority> authUser=AuthorityUtils.commaSeparatedStringToAuthorityList("ROLE_USER");
		
		if(user.getUseremail().equals("eeit156.sonahotel@gmail.com") ) {			
			return new User(user.getUseremail(), user.getUserpassword(), authAdmin);
		}
		// 檢查使用者帳號狀態，如果為"停用"或"未驗證"，則拋出異常
		if (user.getUserstatus().equals("停用") || user.getUserstatus().equals("未驗證")) {
			throw new DisabledException("停用");
		}
		
		return new User(user.getUseremail(), user.getUserpassword(), authUser);
	}
	
	
	public int getLoginCount() {
	    return loginCount;
	}

}
