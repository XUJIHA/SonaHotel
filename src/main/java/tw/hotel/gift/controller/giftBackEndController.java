package tw.hotel.gift.controller;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.rowset.serial.SerialBlob;
import javax.sql.rowset.serial.SerialException;

import org.apache.commons.io.IOUtils;
import org.hibernate.annotations.Polymorphism;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import tw.hotel.gift.model.souvenirBean;
import tw.hotel.gift.service.souvenirService;

@Controller
@RequestMapping("/admin")
public class giftBackEndController {
	@Autowired
	private souvenirService sService;
	
	//顯示圖片
	@RequestMapping("/getsouimage.controller/{souvenir_id}")
    @ResponseBody
    public byte[] processByteArrayImageAction(@PathVariable("souvenir_id") int souvenir_id,HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException {

		souvenirBean sBean = (souvenirBean) sService.findById(souvenir_id);
        Blob pBlob =sBean.getSpic();
        InputStream inputStream = pBlob.getBinaryStream();

        return IOUtils.toByteArray(inputStream);
    }
	
	//後臺顯示所有商品
	@GetMapping("/maintaingift.controller")
	public String displayAllGift(@ModelAttribute("souvenirBean") souvenirBean sBean,Model hModel){
		List<souvenirBean> claassList = sService.findByAll();
		hModel.addAttribute("beans",claassList);
//		return "Gift/giftMaintain";
		return"Gift/giftBackendShowAll";
//		return"Gift/show";
	}
	
	//後臺新增商品
	@GetMapping("/giftpreinsert.controller")
	public String giftPreInsert() {
		return "Gift/giftBackendInsert";
//		return "Gift/giftInsert";
//		return "Gift/test";
	}
	
	@RequestMapping(path = "/giftinsert.controller",method = RequestMethod.POST)
	public String giftInsert(souvenirBean bean) {
		sService.save(bean);
		return "redirect:/admin/maintaingift.controller";
	}
	//後臺修改商品
	@RequestMapping(path = "/giftpreupdate.controller/{sid}",method = RequestMethod.GET)
    public String giftPreupdate(@PathVariable("sid") int id,Model theModel) {
		System.out.println("giftPreupdate.controller");
		souvenirBean sBean = sService.findById(id);
        theModel.addAttribute("bean", sBean);
//        return "Gift/giftUpdate";
        return "Gift/giftBackendEditById";
//        return "Gift/edit";
    }
	
	@PostMapping(path="/updategift/{souvenir_id}")
	public String giftUpdate(@PathVariable("souvenir_id") int souvenir_id,@RequestParam("sno")String sno ,@RequestParam("sname")String sname,
			@RequestParam("spic")MultipartFile img,@RequestParam("sdes")String sdes,
			@RequestParam("sprice")double sprice,@RequestParam("snum") String snum) throws IOException, SerialException, SQLException {
		
		souvenirBean s2 = sService.findById(souvenir_id);
		s2.setSno(sno);
		s2.setSname(sname);
		s2.setSdes(sdes);
		s2.setSnum(snum);
		s2.setSprice(sprice);
		String fileName = img.getOriginalFilename();
		long size = fileName.length();
		System.out.println("--------------------------------------------"+fileName);
		if(fileName != null && size != 0) {
			s2.setSpic(img);
			
			sService.updateSouvenir(s2);
			
		}else {
			s2.getSpic();
			sService.updateSouvenir(s2);
		}
		return "redirect:../maintaingift.controller";
	}
	@RequestMapping(path = "deletegift.controller", method = RequestMethod.POST)
	public String giftDelete(@RequestParam("sid") int id) {
		System.out.println("id"+id);
		sService.deleteById(id);
		 return "redirect:maintaingift.controller";
	}
}
