package tw.hotel.coupon.model;

public class CodeGenerator {

	public static String generateCode() {
		String code = "";
		for (int i = 0; i < 6; i++) {
			int p;
			while (true) {
				p = (int) (Math.random() * 2 + 1);
				if (p == 1) {
					char q = (char) (int) ((Math.random() * 26) + 65);
					code += q;
					break;
				}
				if (p == 2) {
					int q = (int) (Math.random() * 10);
					code += q;
					break;
				}
			}
		}
//		System.out.println("Code = [" + code + "]");
		return code;
	}
}
// 數字 0-9 => Ascii code 48-57
// 字母 A-Z => Ascii code 65-90
// (int)(Math.random()*26) return 0-26 隨機double值 不含26
