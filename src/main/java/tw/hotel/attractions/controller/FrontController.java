package tw.hotel.attractions.controller;

import java.io.IOException;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;


import tw.hotel.attractions.model.Attractions;
import tw.hotel.attractions.model.Comment;
import tw.hotel.attractions.model.Itinerary;
import tw.hotel.attractions.service.AttractionsService;
import tw.hotel.attractions.service.CommentService;
import tw.hotel.attractions.service.ItineraryService;

@Controller
public class FrontController {
	@Autowired
	private ItineraryService iService;
	
	@Autowired
	private AttractionsService aService;
	
	@Autowired
	private CommentService cService;
	
	@GetMapping("/itinerary")
	public String processItineraryAction() {
		return "attractions/itinerary";
	}
	
	@PostMapping("/itinerary")
	public String processPostItineraryAction() {
		return "attractions/itinerary";
	}
	
	@GetMapping("/itinerary{id}")
	public String processItineraryDetailsAction(@PathVariable("id") String id, Model m) {
		int iid = Integer.parseInt(id);
		Itinerary i = iService.findById(iid);
		List<Attractions> a = aService.findAll();
		
		m.addAttribute("i", i);
		m.addAttribute("a", a);
		return "attractions/itineraryDetails";
	}
	
	@GetMapping("/attractions")
	public String processAttractionsActions() {
		return "attractions/attractionsDetails";
	}
	
	@PostMapping("/attractions")
	public String processPostAttractionsActions() {
		return "attractions/attractionsDetails";
	}
	
	@PostMapping("/likesearch")
	@ResponseBody
	public List<Attractions> processLikeSearchAction(@RequestBody String search) {
		List<Attractions> result = aService.likeSearch(search);
		return result;
	}
	
	@PostMapping("/jump")
	@ResponseBody
	public List<Attractions> processJumpAction(@RequestBody String value) throws UnsupportedEncodingException{
		value = URLDecoder.decode(value,"UTF-8");
        List<Attractions> result;
        switch(value) {
	        case "全區瀏覽":
	        	return aService.findAll();
	        case "士林":
	        	result = aService.areaSearch("士林");
	        	return result;
	        case "大同":
	        	result = aService.areaSearch("大同");
	        	return result;
	        case "中正":
	        	result = aService.areaSearch("中正");
	        	return result;
	        case "北投":
	        	result = aService.areaSearch("北投");
	        	return result;
	        case "信義":
	        	result = aService.areaSearch("信義");
	        	return result;
	        case "文山":
	        	result = aService.areaSearch("文山");
	        	return result;
	        case "內湖":
	        	result = aService.areaSearch("內湖");
	        	return result;
	        case "石門":
	        	result = aService.areaSearch("石門");
	        	return result;
	        case "瑞芳":
	        	result = aService.areaSearch("瑞芳");
	        	return result;
	        case "貢寮":
	        	result = aService.areaSearch("貢寮");
	        	return result;
	        default:
	        	break;
        }
		return null;
	}
	
	@PostMapping("/queryAll")
	@ResponseBody
	public List<Attractions> processQueryAllAction() {
		return aService.findAll();
	}
	
	@PostMapping("/iqueryAll")
	@ResponseBody
	public List<Itinerary> iprocessQueryAllAction() {
		return iService.findAll();
	}
	
	@PostMapping("/iqueryId")
	@ResponseBody
	public List<Attractions> iprocessQueryIdAction(@RequestBody int pageId, Model m) {
	    Itinerary i = iService.findById(pageId);
	    List<Attractions> a = aService.findAll();
	    String line = i.getAttractions();
	    String[] sline = line.split(",");
	    List<String> list = Arrays.asList(sline);
	    List<Attractions> attractionsList = new ArrayList<>();
	    for (Attractions attraction : a) {
	        if (list.contains(attraction.getAname())) {
	            attractionsList.add(attraction);
	        }
	    }
	    m.addAttribute("list", attractionsList);
	    return attractionsList;
	}
	
	@PostMapping("/upload")
	@ResponseBody
	public Object processUploadFileAction(@RequestParam("file1") MultipartFile mf) throws IOException{
		String fileName = mf.getOriginalFilename();
		byte[] b = mf.getBytes();
		Map<String, Object> json = new HashMap<>();
		json.put("fileName", fileName);
		json.put("image1", b);
		return json;
	}
	
	@GetMapping("/file/{pid}")
	@ResponseBody
	public byte[] processGetImageAction(@PathVariable("pid") int pid) throws IOException {
		Attractions bean = aService.findById(pid);
		byte[] b = bean.getAimage();
		return b;
	}
	
	@GetMapping("/filei/{pid}")
	@ResponseBody
	public byte[] processGetImageiAction(@PathVariable("pid") int pid) throws IOException {
		Itinerary bean = iService.findById(pid);
		byte[] b = bean.getImage();
		return b;
	}
	
	@PostMapping("/jump1")
	@ResponseBody
	public List<Itinerary> processJump1Action(@RequestBody String value) {
        List<Itinerary> result;
        switch(value) {
	        case "所有行程":
	        	return iService.findAll();
	        case "花香風景":
	        	result = iService.typeSearch("花香風景");
	        	return result;
	        case "山林徜徉":
	        	result = iService.typeSearch("山林徜徉");
	        	return result;
	        case "海岸探索":
	        	result = iService.typeSearch("海岸探索");
	        	return result;
	        case "城市探索":
	        	result = iService.typeSearch("城市探索");
	        	return result;
	        default:
	        	break;
        }
		return null;
	}
	
	@PostMapping("/commlist")
	@ResponseBody
	public List<Comment> processStarListAction(@RequestBody String c) {
		int pageId =Integer.parseInt(c);
		List<Comment> comm =  cService.findByPageId(pageId);
		return comm;
	}
			
}
