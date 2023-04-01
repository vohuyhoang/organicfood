package organicfood.controller;

import java.util.UUID;

import org.springframework.stereotype.Controller;

@Controller
public class BaseController {
	
	public static String generateKey() {
		UUID uuid = UUID.randomUUID();
		return uuid.toString();
	}
}