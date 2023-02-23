package tw.hotel.gift.controller;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.IOUtils;
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

import tw.hotel.gift.model.souvenirBean;
import tw.hotel.gift.service.souvenirService;

@Controller
//@RequestMapping("/users")
public class DisplayAllController {
	@Autowired
	private souvenirService Sservice;
	
	//顯示圖片
	@RequestMapping("/getsouimage.controller/{souvenir_id}")
    @ResponseBody
    public byte[] processByteArrayImageAction(@PathVariable("souvenir_id") int souvenir_id,HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException {

		souvenirBean sBean = (souvenirBean) Sservice.findById(souvenir_id);
        Blob pBlob =sBean.getSpic();
        InputStream inputStream = pBlob.getBinaryStream();

        return IOUtils.toByteArray(inputStream);
    }
	
	//顯示所有 商品(souvenirBean)
	@RequestMapping(path ="/giftdisplay.controller", method = RequestMethod.GET)
	 public String searchAction(@ModelAttribute("souvenirBean") souvenirBean hb,Model hModel)  {
		  List<souvenirBean> classlist = Sservice.findByAll();
		  hModel.addAttribute("beans", classlist);
		  return "Gift/gift";
	 }
	
	//根據 商品id(sid) 顯示所有 商品資訊
	@RequestMapping(path ="/giftdetail.controller/{sid}", method = RequestMethod.GET)
	 public String searchDetail(@PathVariable("sid") int id,Model hModel)  {
		souvenirBean sBean = Sservice.findById(id);
		hModel.addAttribute("bean", sBean);
		  return "Gift/giftDetail";
	 }
//	@PostMapping(path = "/giftdetail.controller")
//	 public String searchDetail(@RequestParam("sid") String idStr,Model hModel)  {
//		int id = Integer.parseInt(idStr);
//		souvenirBean sBean = Sservice.findById(id);
//		hModel.addAttribute("bean", sBean);
//		  return "Gift/giftDetail";
//	 }
	@RequestMapping(path ="/test", method = RequestMethod.GET)
	 public String testorder()  {
//		souvenirBean sBean = Sservice.findById(id);
//		hModel.addAttribute("bean", sBean);
		  return "Gift/show";
	 }
}
