package tw.hotel.loginlogout.controller;

import java.awt.Color;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

 
import com.lowagie.text.*;
import com.lowagie.text.pdf.*;

import tw.hotel.loginlogout.model.HotelBean;

public class UserPDFExporter {
    private List<HotelBean> listUsers;
     
    public UserPDFExporter(List<HotelBean> listUsers) {
        this.listUsers = listUsers;
    }
 
    private void writeTableHeader(PdfPTable table) throws DocumentException, IOException {
        PdfPCell cell = new PdfPCell();
        cell.setBackgroundColor(Color.ORANGE);
        cell.setPadding(5);
        BaseFont bfChinese = BaseFont.createFont("STSong-Light", "UniGB-UCS2-H", BaseFont.NOT_EMBEDDED); 
        Font font = new Font(bfChinese, 12, Font.NORMAL);
//        Font font = FontFactory.getFont(FontFactory.HELVETICA);
        font.setColor(Color.WHITE);

        cell.setPhrase(new Phrase("編號", font));       
        table.addCell(cell);
         
        cell.setPhrase(new Phrase("姓名", font));
        table.addCell(cell);
         
        cell.setPhrase(new Phrase("EMAIL", font));
        table.addCell(cell);
         
        cell.setPhrase(new Phrase("電話號碼", font));
        table.addCell(cell);
         
        cell.setPhrase(new Phrase("性別", font));
        table.addCell(cell);  
        
        cell.setPhrase(new Phrase("國家", font));
        table.addCell(cell);  
        
        cell.setPhrase(new Phrase("地址", font));
        table.addCell(cell);  
        
        cell.setPhrase(new Phrase("身分證字號(護照號碼)", font));
        table.addCell(cell);  
        
        cell.setPhrase(new Phrase("生日", font));
        table.addCell(cell); 
        
        cell.setPhrase(new Phrase("註冊日期", font));
        table.addCell(cell); 
    }
     
    private void writeTableData(PdfPTable table) throws DocumentException, IOException {
    	BaseFont bfChinese = BaseFont.createFont("STSong-Light", "UniGB-UCS2-H", BaseFont.NOT_EMBEDDED); 
        Font font = new Font(bfChinese, 12, Font.NORMAL);
        font.setSize(10);
        
        for (HotelBean user : listUsers) {
            table.addCell(new Phrase(String.valueOf(user.getUserid()), font));
            table.addCell(new Phrase(user.getUsername(), font));
            table.addCell(new Phrase(user.getUseremail(), font));
            table.addCell(new Phrase(user.getUserphone(), font));
            table.addCell(new Phrase(user.getUsergender(), font));
            table.addCell(new Phrase(user.getUsercountry(), font));
            table.addCell(new Phrase(user.getUseraddress(), font));
            table.addCell(new Phrase(user.getUseridentity(), font));
            table.addCell(new Phrase(user.getUserbirthday(), font));
            table.addCell(new Phrase(user.getUserregistration(), font));
        }
    }
     
    public void export(HttpServletResponse response) throws DocumentException, IOException {
        Document document = new Document(PageSize.A4.rotate());
        PdfWriter writer = PdfWriter.getInstance(document, response.getOutputStream());
        writer.setInitialLeading(12.5f);
//        PdfWriter.getInstance(document, response.getOutputStream());

        document.open();
        BaseFont bfChinese = BaseFont.createFont("STSong-Light", "UniGB-UCS2-H", BaseFont.NOT_EMBEDDED);
        Font font = new Font(bfChinese, 12, Font.NORMAL);
//        Font font = FontFactory.getFont(FontFactory.HELVETICA_BOLD);
        font.setSize(15);
        font.setColor(Color.BLACK);
        
        Paragraph p = new Paragraph("會員總覽", font);
        p.setAlignment(Paragraph.ALIGN_CENTER);
        
        document.add(p);
         
        PdfPTable table = new PdfPTable(10);
        table.setWidthPercentage(100f);
        table.setWidths(new float[] {1.5f, 1.5f, 4.5f, 3.0f, 1.5f,1.5f, 4.0f, 5.5f, 3.0f, 3.0f});
        table.setSpacingBefore(10);
         
        writeTableHeader(table);
        writeTableData(table);
         
        document.add(table);
         
        document.close();
         
    }
}
