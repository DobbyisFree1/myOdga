package odga.bt.controller;


import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import odga.bt.domain.Member;
import odga.bt.domain.Support;
import odga.bt.domain.Touritems;
import odga.bt.service.AdminService;
import odga.bt.service.MemberService;
import odga.bt.vo.Chart;
import odga.bt.vo.GenderChart;

@Controller
@RequestMapping("/")
public class AdminController {
	@Autowired
	private AdminService service;
	@Autowired
	private MemberService mservice;
	
	@RequestMapping("dashboard.do")
    public ModelAndView chart() {
		List<Chart> areaC = service.areaChart();
		List<Member> memberC = service.memberChart();
		List<GenderChart> genderC = service.genderChart();
		Map<String, Object> statistic = service.getStatistics();
		List<Member> adminList = service.listAdmin();
		Touritems bestItem = service.bestTouritem();
		ModelAndView mv = new ModelAndView("dashboard","areaC",areaC);
		mv.addObject("memberC", memberC);
		mv.addObject("genderC", genderC);
		mv.addObject("statistic", statistic);
		mv.addObject("admin", adminList);
		mv.addObject("bestItem", bestItem);
		return mv;
    }
	// 회占쏙옙占쏙옙占쏙옙트
	@RequestMapping("/memberList.do")
	public ModelAndView m_listing() {
		List<Member> m_list = service.m_listS();
		ModelAndView mv = new ModelAndView("member_list", "m_list", m_list);
			
			return mv;	
	}
   @RequestMapping("/map.do") //占쌍쇽옙
   public String map() {
      return "map"; 
   }

   @RequestMapping("/admin_info.do") //占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙
   public String user() {
      return "admin_info"; 
   }
	// �쉶�썝�젙蹂� �닔�젙
	@RequestMapping(value = "/admin_info.do", method = RequestMethod.POST)
	private String updateS(Member member, @RequestParam String m_newpwd, @RequestParam MultipartFile file, HttpSession session, RedirectAttributes rttr) throws Exception {
		Member member1 = member;
		if(file.getSize()!=0) {
			   member1 = mservice.saveStore(member, file); 
			   String m_ofname = file.getOriginalFilename(); 
			   System.out.println("###"+member1.getM_fname()+m_ofname);

				member1.setM_pwd(m_newpwd);
				
				member1.setM_ofname(m_ofname);
				System.out.println("�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�뾽�뜲�씠�듃�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾");
				System.out.println(member.getM_pwd());
				if(session.getAttribute("LOGINUSER") == null) {
					System.out.println("�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾濡쒓렇�씤�릺�뼱�엳�꽕?�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾");
					return "redirect:../login.do";
					//return null;
				}
				session.setAttribute("LOGINUSER", mservice.updateS(member1));
				rttr.addFlashAttribute("msg", "�쉶�썝�젙蹂� �닔�젙 �셿猷�");
				return "redirect:admin_info.do"; 
				//return null;
		}else {
			member1.setM_pwd(m_newpwd);
			if(session.getAttribute("LOGINUSER") == null) {
				System.out.println("�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾濡쒓렇�씤�릺�뼱�엳�꽕?�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾�쁾");
					return "redirect:../login.do";
					//return null;
			}
			session.setAttribute("LOGINUSER", mservice.updateS(member1));
			rttr.addFlashAttribute("msg", "�쉶�썝�젙蹂� �닔�젙 �셿猷�");
			return "redirect:admin_info.do";
			//return null;
		}
	}
   @GetMapping("/support_list.do") //占쏙옙占쏙옙占싹깍옙 占쏙옙占쏙옙트
	public ModelAndView notifications() {
		List<Support> notifications = service.notificationsS();
		ModelAndView mv = new ModelAndView("support_list", "notifications", notifications);
		return mv;
	}
   @GetMapping("/support_content.do") 
	public ModelAndView content(long s_id) {
		System.out.println("#subject: " + s_id);
		Support support = service.selectByTitle(s_id);
		ModelAndView mv = new ModelAndView("support_content", "support", support);
		return mv;
	}
  
  //support_reply.jsp 
  @GetMapping("/reply.do")
	public String reply(Support support) {
	    System.out.println("@@@@@");
		int origin_no1 = support.getOrigin_no();
	    support.setOrigin_no(origin_no1);

		return "support_reply";
	}
  	@PostMapping("/reply.do")
	public String support_reply(Support support) {
	   System.out.println("####");
	    service.insertreS(support);	
		return "redirect:support_list.do";
	}
  
	@GetMapping("support_delete.do")
	public String delete(@RequestParam long s_id) {
		service.deleteS(s_id);
		return "redirect:support_list.do";
	}
  
}
