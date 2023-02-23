package tw.hotel.attractions.controller;

import java.io.FileInputStream;
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
//import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import tw.hotel.attractions.model.Attractions;
import tw.hotel.attractions.service.AttractionsService;

@Controller
@RequestMapping("/admin")
public class AttractionsController {
	
	@Autowired
	private AttractionsService aService;

	@GetMapping("/addattractions")
	public String processMainAction() {
		return "attractions/attractionsInsert";
	}
	
	@GetMapping("/editattractions")
	public String processUpdateAction() {
		return "attractions/attractionsUpdate";
	}
	
	@GetMapping("/searchattractions")
	public String processShowAllAction() {
		return "attractions/attractionsSearch";
	}
	
	@PostMapping("/checkadd")
	public String processTestAction(@ModelAttribute Attractions a, @RequestPart("file1") MultipartFile mf, Model m) throws IOException {
		Map<String, String> errors = new HashMap<String, String>();
		m.addAttribute("errors", errors);
		if(a.getAname()==null || a.getAname().trim().length()==0) {
			errors.put("name", "景點名稱必須輸入");
		}
		
		if(a.getAddress()==null || a.getAddress().trim().length()==0) {
			errors.put("address", "地址必須輸入");
		}
		
		if(a.getLng()==null || a.getLng().trim().length()==0) {
			errors.put("lng", "經度必須輸入");
		}
		
		if(a.getLat()==null || a.getLat().trim().length()==0) {
			errors.put("lat", "緯度必須輸入");
		}
		
		if((a.getBegin7() == null || a.getBegin7().trim().length() == 0)) {
			errors.put("begin7", "營業時間必須輸入");
		}
		
		if((a.getEnd7() == null || a.getEnd7().trim().length() == 0)) {
			errors.put("end7", "營業時間必須輸入");
		}
		
		if((a.getBegin1() == null || a.getBegin1().trim().length() == 0)) {
			errors.put("begin1", "營業時間必須輸入");
		}
		
		if((a.getEnd1() == null || a.getEnd1().trim().length() == 0)) {
			errors.put("end1", "營業時間必須輸入");
		}
		
		if((a.getBegin2() == null || a.getBegin2().trim().length() == 0)) {
			errors.put("begin2", "營業時間必須輸入");
		}
		
		if((a.getEnd2() == null || a.getEnd2().trim().length() == 0)) {
			errors.put("end2", "營業時間必須輸入");
		}
		
		if((a.getBegin3() == null || a.getBegin3().trim().length() == 0)) {
			errors.put("begin3", "營業時間必須輸入");
		}
		
		if((a.getEnd3() == null || a.getEnd3().trim().length() == 0)) {
			errors.put("end3", "營業時間必須輸入");
		}
		
		if((a.getBegin4() == null || a.getBegin4().trim().length() == 0)) {
			errors.put("begin4", "營業時間必須輸入");
		}
		
		if((a.getEnd4() == null || a.getEnd4().trim().length() == 0)) {
			errors.put("end4", "營業時間必須輸入");
		}
		
		if((a.getBegin5() == null || a.getBegin5().trim().length() == 0)) {
			errors.put("begin5", "營業時間必須輸入");
		}
		
		if((a.getEnd5() == null || a.getEnd5().trim().length() == 0)) {
			errors.put("end5", "營業時間必須輸入");
		}
		
		if((a.getBegin6() == null || a.getBegin6().trim().length() == 0)) {
			errors.put("begin6", "營業時間必須輸入");
		}
		
		if((a.getEnd6() == null || a.getEnd6().trim().length() == 0)) {
			errors.put("end6", "營業時間必須輸入");
		}
		
		if(a.getIntroduction() == null || a.getIntroduction().trim().length() == 0) {
			errors.put("introduction", "介紹必須輸入");
		}
		
		if(a.getPhone().trim().length() < 7 || a.getPhone().trim().length() == 0) {
			errors.put("phone", "電話格式錯誤");
		}
		
		if(!errors.isEmpty()) {
			return "attractions/attractionsInsert";
		}
		
		String fileName = mf.getOriginalFilename();
		byte[] b = mf.getBytes();
		
		a.setAimage(b);
		a.setImageName(fileName);
		
		aService.insert(a);
		
		m.addAttribute("aBean", a);
		
		return "attractions/attractionsSearch";
	}
	
	@GetMapping("/edit{eid}")
	public String processGetIdAction(@PathVariable("eid") int eid, Model m) {
		Attractions a = aService.findById(eid);
		m.addAttribute("a", a);
		return "attractions/attractionsUpdate";
	}
	
	@PostMapping("/checkedit{eid}")
	public String processEditAction(@PathVariable("eid") String eid, @ModelAttribute Attractions a, @RequestPart("file1") MultipartFile mf, Model m) throws IOException {
		Map<String, String> errors = new HashMap<String, String>();
		m.addAttribute("errors", errors);
		int aid = Integer.parseInt(eid);
		a.setAid(aid);
		
		if(a.getAname()==null || a.getAname().trim().length()==0) {
			errors.put("name", "景點名稱必須輸入");
		}
		
		if(a.getAddress()==null || a.getAddress().trim().length()==0) {
			errors.put("address", "地址必須輸入");
		}
		
		if(a.getLng()==null || a.getLng().trim().length()==0) {
			errors.put("lng", "經度必須輸入");
		}
		
		if(a.getLat()==null || a.getLat().trim().length()==0) {
			errors.put("lat", "緯度必須輸入");
		}
		
		if((a.getBegin7() == null || a.getBegin7().trim().length() == 0)) {
			errors.put("begin7", "營業時間必須輸入");
		}
		
		if((a.getEnd7() == null || a.getEnd7().trim().length() == 0)) {
			errors.put("end7", "營業時間必須輸入");
		}
		
		if((a.getBegin1() == null || a.getBegin1().trim().length() == 0)) {
			errors.put("begin1", "營業時間必須輸入");
		}
		
		if((a.getEnd1() == null || a.getEnd1().trim().length() == 0)) {
			errors.put("end1", "營業時間必須輸入");
		}
		
		if((a.getBegin2() == null || a.getBegin2().trim().length() == 0)) {
			errors.put("begin2", "營業時間必須輸入");
		}
		
		if((a.getEnd2() == null || a.getEnd2().trim().length() == 0)) {
			errors.put("end2", "營業時間必須輸入");
		}
		
		if((a.getBegin3() == null || a.getBegin3().trim().length() == 0)) {
			errors.put("begin3", "營業時間必須輸入");
		}
		
		if((a.getEnd3() == null || a.getEnd3().trim().length() == 0)) {
			errors.put("end3", "營業時間必須輸入");
		}
		
		if((a.getBegin4() == null || a.getBegin4().trim().length() == 0)) {
			errors.put("begin4", "營業時間必須輸入");
		}
		
		if((a.getEnd4() == null || a.getEnd4().trim().length() == 0)) {
			errors.put("end4", "營業時間必須輸入");
		}
		
		if((a.getBegin5() == null || a.getBegin5().trim().length() == 0)) {
			errors.put("begin5", "營業時間必須輸入");
		}
		
		if((a.getEnd5() == null || a.getEnd5().trim().length() == 0)) {
			errors.put("end5", "營業時間必須輸入");
		}
		
		if((a.getBegin6() == null || a.getBegin6().trim().length() == 0)) {
			errors.put("begin6", "營業時間必須輸入");
		}
		
		if((a.getEnd6() == null || a.getEnd6().trim().length() == 0)) {
			errors.put("end6", "營業時間必須輸入");
		}
		
		if(a.getIntroduction() == null || a.getIntroduction().trim().length() == 0) {
			errors.put("introduction", "介紹必須輸入");
		}
		
		if(a.getPhone().trim().length() < 7 || a.getPhone().trim().length() == 0) {
			errors.put("phone", "電話格式錯誤");
		}
		
		if(!errors.isEmpty()) {
			Attractions aa = aService.findById(aid);
			m.addAttribute("a", aa);
			return "attractions/attractionsUpdate";
		}
		String fileName = mf.getOriginalFilename();
		byte[] b = mf.getBytes();
		long size = fileName.length();
		if(fileName != null && size != 0) {
			a.setAimage(b);
			a.setImageName(fileName);
		}else {
			Attractions ab = aService.findById(aid);
			a.setAimage(ab.getAimage());
			a.setImageName(ab.getImageName());
		}
		aService.update(a);
		
		m.addAttribute("aBean", a);
		
		return "attractions/attractionsSearch";
	}
	
	
	@DeleteMapping("/deleteattractions/{did}")
	@ResponseBody
	public List<Attractions> processDeleteAction(@PathVariable("did") int did) {
		aService.deleteById(did);
		List<Attractions> result = aService.findAll();
		return result;
	}
	
	//Output Json
	@GetMapping("/outputJson")
	public void outputFileJson(HttpServletResponse response) throws IOException {
	    List<Attractions> all = aService.findAll();
	    //建立新的物件列表，只保留需要的欄位
	    List<Attractions> list = new ArrayList<>();
	    for (Attractions a : all) {
	        Attractions newAttractions = new Attractions();
	        newAttractions.setAid(a.getAid());
	        newAttractions.setAname(a.getAname());
	        newAttractions.setAddress(a.getAddress());
	        newAttractions.setPhone(a.getPhone());
	        newAttractions.setIntroduction(a.getIntroduction());
	        list.add(newAttractions);
	    }
	    Gson gson = new GsonBuilder().setPrettyPrinting().create();
	    String json = gson.toJson(list);
	    String fileName = "Attractions.json";
	    response.setContentType("application/json");
	    response.setHeader("Content-Disposition", "attachment;filename=" + fileName);

	    try (OutputStream out = response.getOutputStream()) {
	        out.write(json.getBytes(StandardCharsets.UTF_8));
	    }
	    
	}
	
	//Output Csv
	@GetMapping(path = "/outputCsv")
	public void exportCsv(HttpServletResponse response) throws IOException {
	    String fileName = "Attractions.csv";
	    response.setContentType("text/csv; charset=BIG5");
	    response.setHeader("Content-Disposition", "attachment; filename=" + fileName);

	    List<Attractions> data = aService.findAll();
	    try (PrintWriter writer = response.getWriter()) {
	        writer.println("#,景點名稱,地址,電話,介紹");
	        for (Attractions bean : data) {
	            writer.println(bean.getAid() + "," + bean.getAname() + "," + bean.getAddress() + "," + bean.getPhone() + "," + bean.getIntroduction());
	        }
	    }
	}
	
	//output PDF
	@GetMapping(path = "/outputPdf")
	@ResponseBody
	public  byte[] searchorder(@RequestParam("key") String value) throws IOException {
		FileInputStream inputStream = new FileInputStream("src/main/resources/static/font/font.txt");
		byte[] data;
		data = new byte[inputStream.available()];
		inputStream.read(data);
		inputStream.close();
		return data;
	}
	
}
