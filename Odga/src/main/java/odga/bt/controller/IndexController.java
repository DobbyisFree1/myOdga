package odga.bt.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import odga.bt.domain.Review;
import odga.bt.service.ReviewService;


@Controller
public class IndexController {

   @Autowired
   private ReviewService rservice;
	
   @RequestMapping("/")
   public ModelAndView index() {
	  List<Review> review = rservice.selectBestReviewS();
	  ModelAndView mv = new ModelAndView("index","review", review);
	  
	  return mv;
   }
   @RequestMapping("/index.do")
   public ModelAndView index2() {
	  List<Review> review = rservice.selectBestReviewS();
	  //ModelAndView mv = new ModelAndView();
	  ModelAndView mv = new ModelAndView("index","review", review);
	 // mv.setViewName("index");
	  //mv.addObject("review", review);
	  return mv;
	}
   @RequestMapping("/use")
   public String use() {
      return "use"; 
   }
   @RequestMapping("/login.do")
   public String login() {
      return "login"; 
   }
}