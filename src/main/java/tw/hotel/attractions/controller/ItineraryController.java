package tw.hotel.attractions.controller;

import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import tw.hotel.attractions.model.Attractions;
import tw.hotel.attractions.model.Comment;
import tw.hotel.attractions.model.Itinerary;
import tw.hotel.attractions.service.AttractionsService;
import tw.hotel.attractions.service.CommentService;
import tw.hotel.attractions.service.ItineraryService;

@Controller
@RequestMapping("/admin")
public class ItineraryController {
	
	@Autowired
	private ItineraryService iService;
	
	@Autowired
	private AttractionsService aService;
	
	@Autowired
	private CommentService cService;
	
	@GetMapping("/additinerary")
	public String processAddAction(Model m) {
		List<Attractions> a = aService.findAll();
		m.addAttribute("a", a);
		return "attractions/itineraryInsert";
	}
	
	@GetMapping("/edititinerary")
	public String processEditAction(Model m) {
		List<Attractions> a = aService.findAll();
		m.addAttribute("a", a);
		return "attractions/itineraryUpdate";
	}
	
	@GetMapping("/searchitinerary")
	public String processSearchAction() {
		return "attractions/itinerarySearch";
	}
	
	@PostMapping("/checkitineraryadd")
	public String processCheckItineraryAddAction(@ModelAttribute Itinerary a,@RequestPart("file1") MultipartFile mf, Model m) throws IOException {
		Map<String, String> errors = new HashMap<String, String>();
		m.addAttribute("errors", errors);
		if(a.getTitle()==null || a.getTitle().trim().length()==0) {
			errors.put("title", "活動標題必須輸入");
		}
		
		if(a.getDays()<1) {
			errors.put("days", "旅遊天數必須輸入");
		}
		
		if(a.getAttractions() == null || a.getAttractions().trim().length() == 0) {
			errors.put("attractions", "景點必須輸入");
		}
		
		if(a.getIntroduction() == null || a.getIntroduction().trim().length() == 0) {
			errors.put("introduction", "介紹必須輸入");
		}
		
		if(!errors.isEmpty()) {
			return "attractions/itineraryInsert";
		}
		
		String fileName = mf.getOriginalFilename();
		byte[] b = mf.getBytes();
		a.setImage(b);
		a.setImageName(fileName);
		iService.insert(a);
		
		m.addAttribute("aBean", a);
		
		return "attractions/itinerarySearch";
	}
	
	@GetMapping("/editi{eid}")
	public String processGetIdAction(@PathVariable("eid") int eid, Model m) {
		Itinerary i = iService.findById(eid);
		List<Attractions> a = aService.findAll();
		String line= i.getAttractions();
		String[] sline = line.split(",");
		List<String> list = new ArrayList<String>();
		for (String s: sline) {
			list.add(s);
		}
		m.addAttribute("ssline", list);
		m.addAttribute("i", i);
		m.addAttribute("a", a);
		return "attractions/itineraryUpdate";
	}
	
	@PostMapping("/checkitineraryedit{eid}")
	public String processCheckItineraryEditAction(@PathVariable("eid") String eid, @ModelAttribute Itinerary a, @RequestPart("file1") MultipartFile mf, Model m) throws IOException {
		Map<String, String> errors = new HashMap<String, String>();
		m.addAttribute("errors", errors);
		int id = Integer.parseInt(eid);
		a.setId(id);
		
		if(a.getTitle()==null || a.getTitle().trim().length()==0) {
			errors.put("title", "活動標題必須輸入");
		}
		
		if(a.getDays()<1) {
			errors.put("days", "旅遊天數必須輸入");
		}
		
		if(a.getAttractions() == null || a.getAttractions().trim().length() == 0) {
			errors.put("attractions", "景點必須輸入");
		}
		
		if(a.getIntroduction() == null || a.getIntroduction().trim().length() == 0) {
			errors.put("introduction", "介紹必須輸入");
		}
		
		if(!errors.isEmpty()) {
			Itinerary aa = iService.findById(id);
			m.addAttribute("a", aa);
			return "attractions/itineraryUpdate";
		}
		
		String fileName = mf.getOriginalFilename();
		byte[] b = mf.getBytes();
		long size = fileName.length();
		if(fileName != null && size != 0) {
			a.setImage(b);
			a.setImageName(fileName);
		}else {
			Itinerary ib = iService.findById(id);
			a.setImage(ib.getImage());
			a.setImageName(ib.getImageName());
		}

		iService.update(a);
		
		m.addAttribute("aBean", a);
		
		return "attractions/itinerarySearch";
	}
	
	@DeleteMapping("/deleteitinerary/{did}")
	@ResponseBody
	public List<Itinerary> processDeleteAction(@PathVariable("did") int did) {
		iService.deleteById(did);
		List<Itinerary> result = iService.findAll();
		return result;
	}
	
	//Output Json
	@GetMapping("/outputJsonI")
	public void outputFileJson(HttpServletResponse response) throws IOException {
		List<Itinerary> all = iService.findAll();
	    //建立新的物件列表，只保留需要的欄位
	    List<Itinerary> list = new ArrayList<>();
	    for (Itinerary i : all) {
	    	Itinerary newItinerary = new Itinerary();
	    	newItinerary.setId(i.getId());
	    	newItinerary.setTitle(i.getTitle());
	    	newItinerary.setDays(i.getDays());
	    	newItinerary.setAttractions(i.getAttractions());
	    	newItinerary.setItype(i.getItype());
	    	newItinerary.setIntroduction(i.getIntroduction());
	        list.add(newItinerary);
	    }
	    Gson gson = new GsonBuilder().setPrettyPrinting().create();
	    String json = gson.toJson(list);
	    String fileName = "Itinerary.json";
	    response.setContentType("application/json");
	    response.setHeader("Content-Disposition", "attachment;filename=" + fileName);

	    try (OutputStream out = response.getOutputStream()) {
	        out.write(json.getBytes(StandardCharsets.UTF_8));
	    }
	    
	}
	//Output Csv
	@GetMapping(path = "/outputCsvI")
	public void exportCsv(HttpServletResponse response) throws IOException {
	    String fileName = "Itinerary.csv";
	    response.setContentType("text/csv; charset=BIG5");
	    response.setHeader("Content-Disposition", "attachment; filename=" + fileName);

	    List<Itinerary> data = iService.findAll();
	    try (PrintWriter writer = response.getWriter()) {
	        writer.println("#,活動標題,旅遊天數,景點,類型,行程介紹");
	        for (Itinerary bean : data) {
	            writer.println(bean.getId() + "," + bean.getTitle() + "," + bean.getDays() + "," + "\"" + bean.getAttractions() + "\"" + "," + bean.getItype()+ "," + bean.getIntroduction());
	        }
	    }
	}

	@GetMapping("/attractionschart")
	public String processCountAllAction(Model m) {
		double countS = 0;
		int countCl = 0;
		List<Attractions> a = aService.findAll();
		int countA = a.size();
		List<Itinerary> i = iService.findAll();
		int countI = i.size();
		List<Comment> c = cService.findAll();
		int countSl = c.size();
		for (Comment comment : c) {
			countS += comment.getStar();
			countCl ++;
		}
		countS = Math.round(countS/countSl*100.00)/100.00;
		m.addAttribute("a", countA);
		m.addAttribute("i", countI);
		m.addAttribute("s", countS);
		m.addAttribute("c", countCl);
		return "attractions/attractionsChart";
	}
		
}
