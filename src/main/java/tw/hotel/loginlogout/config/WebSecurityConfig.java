package tw.hotel.loginlogout.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpMethod;
import org.springframework.security.authentication.DisabledException;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import tw.hotel.loginlogout.service.AuthUserDetialService;

@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter{

	@Autowired
	private AuthUserDetialService authService;

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth
		  .userDetailsService(authService)
		  .passwordEncoder(new BCryptPasswordEncoder());
	}

	@Override
	public void configure(WebSecurity web) throws Exception {

	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		
		 http
         .authorizeRequests()
         .antMatchers("/img/**", "/css/**","/js/**","/font/**","/Source/**","/login/**","/captcha").permitAll()
//       .antMatchers("/img2/**", "/css2/**","/js2/**","/fonts/**","/scss/**","/vendor/**","/captcha").permitAll()
       .antMatchers(HttpMethod.GET,"/backgroundIndex.controller").hasRole("admin")
       .antMatchers(HttpMethod.POST,"/backgroundIndex.controller").hasRole("admin")
       .antMatchers("/admin/**").hasRole("ADMIN")
       .antMatchers("/users/**").hasAnyRole("ADMIN","USER")
       .antMatchers(HttpMethod.GET,"/users/**").authenticated()
         .antMatchers(HttpMethod.GET).permitAll()
         .antMatchers(HttpMethod.POST,"/users/**").authenticated()
       .antMatchers(HttpMethod.GET,"/backgroundIndex.controller").hasRole("admin")
       .antMatchers(HttpMethod.POST,"/backgroundIndex.controller").hasRole("admin")
       .antMatchers(HttpMethod.GET,"/insertsuccess.controller").hasRole("users")
       .antMatchers(HttpMethod.POST,"/showgorder.controller").hasRole("users")
         .antMatchers(HttpMethod.POST).permitAll()
         .anyRequest().authenticated()
         .and()
         .rememberMe().tokenValiditySeconds(86400).key("rememberMe-key")
         .and()
         .csrf().disable()
         .formLogin().loginPage("/login/page")
         .defaultSuccessUrl("/login/welcome",true)
         .failureHandler((request, response, exception) -> {
     	    if (exception instanceof DisabledException) {
     	        request.getSession().setAttribute("stoperror", "帳號已停用或未驗證");
     	    } else {
     	        request.getSession().setAttribute("error", "帳號密碼錯誤");
     	    }
     	    response.sendRedirect("/login/page?error");
     	})
         
		 .and()
         .logout()
         .logoutUrl("/logout") //自定義登出URL
         .logoutSuccessUrl("/") //登出成功後導向首頁
         .deleteCookies("JSESSIONID") //刪除指定的Cookie
         .invalidateHttpSession(true) //使HttpSession失效
         ;
	
		
		http.exceptionHandling().accessDeniedPage("/login/welcome");//403錯誤頁面

//		http
//         .authorizeRequests()
//         .antMatchers("/img/**", "/css/**","/js/**","/font/**","/Source/**","/login/**","/captcha").permitAll()
//         .antMatchers("/img2/**", "/css2/**","/js2/**","/fonts/**","/scss/**","/vendor/**","/captcha").permitAll()
//         .antMatchers("/register1.controller").permitAll()
//         .antMatchers(HttpMethod.GET,"/backgroundIndex.controller").hasRole("admin")
//         .antMatchers(HttpMethod.POST,"/backgroundIndex.controller").hasRole("admin")
//         .antMatchers("/backgroundIndex").hasRole("admin")
         //只有具 ADMIN 權限才可訪問此路徑
//         .antMatchers("/origin.controller").hasRole("USER")
         //只有具 USER 權限才可訪問此路徑
//         .antMatchers("/admin/**").hasRole("ADMIN")
//         .antMatchers("/users/**").hasAnyRole("ADMIN","USER")
//         .antMatchers(HttpMethod.GET).permitAll()
//         .antMatchers(HttpMethod.POST).permitAll()
//         .anyRequest().authenticated()
//         .and()
//         .rememberMe().tokenValiditySeconds(86400).key("rememberMe-key")
//         .and()
//         .csrf().disable()
//         .formLogin().loginPage("/NewFile.jsp")
//         .defaultSuccessUrl("/login/welcome",true)
//         .failureHandler((request, response, exception) -> {
//             request.getSession().setAttribute("error", "帳號密碼錯誤");
//             response.sendRedirect("/login/page?error");
//          })
//       
//       	 .and()
//         .logout()
//         .logoutUrl("/logout") //自定義登出URL
//         .logoutSuccessUrl("/") //登出成功後導向首頁
//         .deleteCookies("JSESSIONID") //刪除指定的Cookie
//         .invalidateHttpSession(true) //使HttpSession失效
//         ;
	}
	
}
