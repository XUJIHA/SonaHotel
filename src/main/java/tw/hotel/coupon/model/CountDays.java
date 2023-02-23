package tw.hotel.coupon.model;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class CountDays {

	public static String CountBetween(Date beginDate, Date endDate) {

		DateFormat df = new SimpleDateFormat("yyyy-MM-dd");

		String st = df.format(beginDate); // 開始日期
		String et = df.format(endDate); // 結束日期
		String result = "";
		try {
			Date d1 = df.parse(st);
			Date d2 = df.parse(et);

			int sy = Integer.valueOf(st.split("-")[0]);
			int sm = Integer.valueOf(st.split("-")[1]);

			int ey = Integer.valueOf(et.split("-")[0]);
			int em = Integer.valueOf(et.split("-")[1]);

			long diff = d2.getTime() - d1.getTime();

			// 判斷日期區間內有多少個閏月
			int num_runyue = 0;
			for (int i = sy; i < ey + 1; i++) {
				if (i % 4 == 0) {
					num_runyue++;
				}
			}
			// 闰月不在起始年的月范围
			if (sm >= 2 && sy % 4 == 0) {
				num_runyue--;
			}
			// 闰月不在结束始年的月范围
			if (em <= 2 && ey % 4 == 0) {
				num_runyue--;
			}

			long days = diff / (1000 * 60 * 60 * 24);
			// 把所有年都整理成365天
			days = days - num_runyue;

			if (days / 365 == 0) {
				result = days % 365 + " 天";
			} else {
				if (days % 365 == 0) {
					result = days / 365 + " 年 整";
				} else {
					result = days / 365 + " 年 " + days % 365 + " 天";
				}
			}
//			result = days / 365 + " 年 " + days % 365 + " 天";

		} catch (Exception e) {
			System.out.println("Count days error...");
		}
		return result;
	}
}
