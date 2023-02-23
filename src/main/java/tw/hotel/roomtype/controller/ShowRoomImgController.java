package tw.hotel.roomtype.controller;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import tw.hotel.roomtype.model.RoomsBean;
import tw.hotel.roomtype.service.RoomTypeService;

@Controller
public class ShowRoomImgController {

	@Autowired
	private RoomTypeService rService;

	@GetMapping("/showroomimg.controller")
	public void processAction(@RequestParam("roomId") String roomId, HttpServletResponse response) {
		List<RoomsBean> beans = rService.findById(roomId);
		RoomsBean bean = null;
		for (RoomsBean b : beans) {
			bean = b;
		}
		try {
			Blob blob = bean.getImg();
			InputStream is = blob.getBinaryStream();
			OutputStream os = response.getOutputStream();
			int len = 0;
			byte[] bytes = new byte[8192];
			while ((len = is.read(bytes)) != -1) {
				os.write(bytes, 0, len);
				os.flush();
			}
			os.close();
			is.close();
		} catch (IOException | SQLException e) {
			e.printStackTrace();
		}
	}
}
