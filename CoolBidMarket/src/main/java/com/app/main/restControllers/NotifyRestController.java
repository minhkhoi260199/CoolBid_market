package com.app.main.restControllers;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.app.main.models.AmountTime;
import com.app.main.models.Category;
import com.app.main.models.CustomAmountTime;
import com.app.main.models.CustomCategory;
import com.app.main.models.CustomNotify;
import com.app.main.models.CustomerProduct;
import com.app.main.models.Notify;
import com.app.main.models.Product;
import com.app.main.models.ReturnCategoryAmountTime;
import com.app.main.models.ReturnListNotify;
import com.app.main.models.ReturnProductObject;
import com.app.main.models.Users;
import com.app.main.services.AmountTimeService;
import com.app.main.services.CategoryService;
import com.app.main.services.NotifyService;
import com.app.main.services.ProductService;
import com.app.main.services.StatusService;
import com.app.main.services.UserService;

@RestController
@RequestMapping("api/notify")
public class NotifyRestController {
	
	@Autowired
	UserService userService;
	@Autowired
	ProductService productService;
	@Autowired
	CategoryService categoryService;
	@Autowired
	AmountTimeService amountTimeService;
	@Autowired
	NotifyService notifyService;
	@Autowired 
	StatusService statusService;
	
	@RequestMapping(value="getNotify", method = RequestMethod.GET)
	public ResponseEntity<?> getNotify(Authentication authentication){
		try {
			if (authentication != null) {
				Users user = userService.findUserByUsername(authentication.getName());
				List<CustomNotify> customNotifies = notifyService.getListNotify(user.getId(), 10);
				int totalNotify = notifyService.getTotalNotify(user.getId(), 10);
				ReturnListNotify returnListNotify = new ReturnListNotify();
				returnListNotify.setNotifies(customNotifies);
				returnListNotify.setTotalNotify(totalNotify);
				return new ResponseEntity<>(returnListNotify, HttpStatus.OK);
			}
			return new ResponseEntity<>(null, HttpStatus.OK);
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
	}
	
	@RequestMapping(value = "totalNotify", method=RequestMethod.GET)
	public ResponseEntity<?> totalNotify(Authentication authentication){
		try {
			if (authentication != null) {
				Users user = userService.findUserByUsername(authentication.getName());
				int totalNotify = notifyService.getTotalNotify(user.getId(), 10);
				return new ResponseEntity<>(totalNotify, HttpStatus.OK);
			}
			return new ResponseEntity<>(0, HttpStatus.OK);
		} catch (Exception e) {
			System.out.println(e.getMessage());
			return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
	}
	
	@RequestMapping(value = "updateNofity", method=RequestMethod.GET)
	public ResponseEntity<?> updateNofity(@RequestParam(value = "data", required = false) String data , Authentication authentication){
		System.out.println(data);
		try {
			if (authentication != null && data != null) {
				String[] intStrings = data.split("[,\s]+");
				for(String intString : intStrings) {
					int id = Integer.parseInt(intString);
					Notify notify = notifyService.getNotifyById(id);
					notify.setStatus(statusService.findById(11));
					notifyService.save(notify);
				}
			}
			return new ResponseEntity<>(HttpStatus.OK);
		} catch (Exception e) {
			return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
	}
}
