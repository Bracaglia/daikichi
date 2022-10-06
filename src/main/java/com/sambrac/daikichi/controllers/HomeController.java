package com.sambrac.daikichi.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;


@Controller
public class HomeController {

	@RequestMapping("/daikichi") // Model: a container to store data and pass that data to the view engine
	public String index() {
		return "index.jsp";
	}
	@RequestMapping("/handle")
	public String handle(@RequestParam(value="num") int num,
						 @RequestParam(value="city") String city,
						 @RequestParam(value="realPerson") String realPerson,
						 @RequestParam(value="hobby") String hobby,
						 @RequestParam(value="compliment") String compliment,
						 HttpSession session
						 ){
		session.setAttribute("num", num);
		session.setAttribute("city", city);
		session.setAttribute("realPerson", realPerson);
		session.setAttribute("hobby", hobby);
		session.setAttribute("compliment", compliment);
		System.out.println(city);
		return "redirect:/show";
	}
	@RequestMapping("/show")
	public String show(){
		return "show.jsp";
	}

	@RequestMapping("/lotto/{number}")
     public String lotto(@PathVariable int number) {
        return number % 2 == 0 ? "You will take a grand journey in the near future, but be weary of tempting offers." : "You have enjoyed the fruits of your labor but now is a great time to spend time with family and friends.";
    }
		@RequestMapping("/travel/{city}")
			public String showLesson(@PathVariable("city") String city) {
				return "Congratulations! you will travel to  " + city + "!";
			}
		@RequestMapping("/welcome")
		public String welcome() {
		return "Welcome";
		}
		@RequestMapping("/hello")
			public String hello() {
			return "Today you will find luck in all your endeavors!";
			}
	
		@RequestMapping("/goodbye")
		public String goodbye() {
		return "Tomorrow, an opportunity will arise, so be sure to be open to new ideas!";
		}
	}
