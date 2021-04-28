package com.app.main.paypal;

import java.io.*;
import java.net.*;
import javax.servlet.http.HttpServletRequest;

public class PayPalSucess {

	public static PayPalResult getPayPal(HttpServletRequest request, PayPalConfig payPalConfig) {
		PayPalResult payPalResult = new PayPalResult();
		String[] temp = null;
		String res = "";
		try {
			String transId = request.getParameter("tx");
			String authToken = payPalConfig.getAuthToken();
			String query = "cmd=_notify-synch&tx=" + transId + "&at=" + authToken;
			String url = payPalConfig.getPosturl();
			URL u = new URL(url);
			HttpURLConnection req = (HttpURLConnection) u.openConnection();
			req.setRequestMethod("POST");
			req.setDoOutput(true);
			req.setDoInput(true);
			req.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
			req.setFixedLengthStreamingMode(query.length());

			OutputStream outputStream = req.getOutputStream();
			outputStream.write(query.getBytes());
			outputStream.close();

			BufferedReader in = new BufferedReader(new InputStreamReader(req.getInputStream()));
			res = in.readLine();
			if (res.equals("SUCCESS")) {
				while ((res = in.readLine()) != null) {
					temp = res.split("=");
					if (temp.length == 1)
						continue;
					temp[1] = URLDecoder.decode(temp[1], "UTF-8");
					if (temp[0].equals("mc_gross")) {
						payPalResult.setMc_gross(temp[1]);
					}
					if (temp[0].equals("protection_eligibility")) {
						payPalResult.setProtection_eligibility(temp[1]);
					}
					if (temp[0].equals("address_status")) {
						payPalResult.setAddress_status(temp[1]);
					}

					if (temp[0].equals("tax")) {
						payPalResult.setTax(temp[1]);
					}

					if (temp[0].equals("payer_id")) {
						payPalResult.setPayer_id(temp[1]);
					}
					if (temp[0].equals("address_street")) {
						payPalResult.setAddress_city(temp[1]);
					}
					if (temp[0].equals("payment_date")) {
						payPalResult.setPayment_date(temp[1]);
					}
					if (temp[0].equals("payment_status")) {
						payPalResult.setPayment_status(temp[1]);
					}
					if (temp[0].equals("charset")) {
						payPalResult.setCharset(temp[1]);
					}
					if (temp[0].equals("address_zip")) {
						payPalResult.setAddress_zip(temp[1]);
					}
					if (temp[0].equals("mc_shipping")) {
						payPalResult.setMc_shipping(temp[1]);
					}
					if (temp[0].equals("mc_handling")) {
						payPalResult.setMc_handling(temp[1]);
					}
					if (temp[0].equals("first_name")) {
						payPalResult.setFirst_name(temp[1]);
					}
					if (temp[0].equals("mc_fee")) {
						payPalResult.setMc_fee(temp[1]);
					}
					if (temp[0].equals("address_country_code")) {
						payPalResult.setAddress_country_code(temp[1]);
					}
					if (temp[0].equals("address_name")) {
						payPalResult.setAddress_name(temp[1]);
					}
					if (temp[0].equals("custom")) {
						payPalResult.setCustom(temp[1]);
					}
					if (temp[0].equals("payer_status")) {
						payPalResult.setPayer_status(temp[1]);
					}
					if (temp[0].equals("business")) {
						payPalResult.setBusiness(temp[1]);
					}
					if (temp[0].equals("address_country")) {
						payPalResult.setAddress_country(temp[1]);
					}
					if (temp[0].equals("num_cart_items")) {
						payPalResult.setNum_cart_items(temp[1]);
					}
					if (temp[0].equals("mc_handling1")) {
						payPalResult.setMc_handling1(temp[1]);
					}
					if (temp[0].equals("mc_handling2")) {
						payPalResult.setMc_handling2(temp[1]);
					}
					if (temp[0].equals("address_city")) {
						payPalResult.setAddress_city(temp[1]);
					}
					if (temp[0].equals("payer_email")) {
						payPalResult.setPayer_email(temp[1]);
					}
					if (temp[0].equals("mc_shipping1")) {
						payPalResult.setMc_shipping1(temp[1]);
					}
					if (temp[0].equals("mc_shipping2")) {
						payPalResult.setMc_shipping2(temp[1]);
					}
					if (temp[0].equals("tax1")) {
						payPalResult.setTax1(temp[1]);
					}
					if (temp[0].equals("tax2")) {
						payPalResult.setTax2(temp[1]);
					}
					if (temp[0].equals("txn_id")) {
						payPalResult.setTxn_id(temp[1]);
					}
					if (temp[0].equals("payment_type")) {
						payPalResult.setPayment_type(temp[1]);
					}
					if (temp[0].equals("last_name")) {
						payPalResult.setLast_name(temp[1]);
					}
					if (temp[0].equals("address_state")) {
						payPalResult.setAddress_state(temp[1]);
					}

					if (temp[0].equals("receiver_email")) {
						payPalResult.setReceiver_email(temp[1]);
					}

					if (temp[0].equals("payment_fee")) {
						payPalResult.setPayment_fee(temp[1]);
					}

					if (temp[0].equals("receiver_id")) {
						payPalResult.setReceiver_id(temp[1]);
					}
					if (temp[0].equals("pending_reason")) {
						payPalResult.setPending_reason(temp[1]);
					}
					if (temp[0].equals("txn_type")) {
						payPalResult.setTxn_type(temp[1]);
					}
					if (temp[0].equals("mc_gross_1")) {
						payPalResult.setMc_gross_1(temp[1]);
					}
					if (temp[0].equals("mc_currency")) {
						payPalResult.setMc_currency(temp[1]);
					}
					if (temp[0].equals("mc_gross_2")) {
						payPalResult.setMc_gross_2(temp[1]);
					}
					if (temp[0].equals("residence_country")) {
						payPalResult.setResidence_country(temp[1]);
					}
					if (temp[0].equals("transaction_subject")) {
						payPalResult.setTransaction_subject(temp[1]);
					}
					if (temp[0].equals("payment_gross")) {
						payPalResult.setPayment_gross(temp[1]);
					}
				}
				in.close();
			}
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
			payPalResult = null;
		}
		return payPalResult;
	}
}
