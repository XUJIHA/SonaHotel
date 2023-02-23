package tw.hotel.attractions.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import tw.hotel.attractions.model.Collect;
import tw.hotel.attractions.model.Comment;
import tw.hotel.attractions.model.Itinerary;
import tw.hotel.attractions.service.CollectService;
import tw.hotel.attractions.service.CommentService;
import tw.hotel.attractions.service.ItineraryService;
import tw.hotel.loginlogout.model.HotelBean;
import tw.hotel.loginlogout.service.LoginService;

@RequestMapping("/users")
@Controller
public class UserControlle {

	@Autowired
	private LoginService lService;
	
	@Autowired
	private CommentService cService;
	
	@Autowired
	private CollectService coService;
	
	@Autowired
	private ItineraryService iService;
	
	//Comment Add
	@PostMapping("/commentadd")
	@ResponseBody
	public List<Comment> processStarAction(@RequestBody Comment c, Principal p) {
		HotelBean user = lService.findUserEmail2(p.getName());
		int uid = user.getUserid();
		String name = user.getUsername();
		c.setUserId(uid);
		c.setUserName(name);
		cService.insert(c);
		List<Comment> comm =  cService.findByPageId(c.getPageId());
		return comm;
	}
	//Collect
	@PostMapping("/collect")
	@ResponseBody
	public Collect processCollectAction(@RequestBody Collect c, Principal p){
		HotelBean user = lService.findUserEmail2(p.getName());
		int uid = user.getUserid();
		c.setUserId(uid);
		Collect exist = null;
		Collect a = coService.findById(c.getPageId(), uid);
		if(null == a) {
			c.setLiketf(1);
			exist = coService.insert(c);
		}else {
			if(1 == a.getLiketf()) {
				a.setLiketf(0);
			}else {
				a.setLiketf(1);
			}
			exist = coService.update(a);
		}
		return exist;
	}
	
	@GetMapping("/searchcollect")
	@ResponseBody
	public List<Itinerary> processSearchCollectAction(Principal p){
		HotelBean user = lService.findUserEmail2(p.getName());
		int uid = user.getUserid();
		List<Collect> collect = coService.findByUserId(uid);
		List<Itinerary> list = new ArrayList<Itinerary>();
		List<Integer> pageList = new ArrayList<Integer>();
		for (Collect co : collect) {
			if(co.getLiketf() == 1) {
				int pageId = co.getPageId();
				pageList.add(pageId);
			}
		}
		for (int i : pageList) {
			Itinerary itinerary = iService.findById(i);
			list.add(itinerary);
		}
		
		return list;
	}
	
}
