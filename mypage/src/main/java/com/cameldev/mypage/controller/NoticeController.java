package com.cameldev.mypage.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.cameldev.mypage.domain.CommentVO;
import com.cameldev.mypage.domain.NoticeDTO;
import com.cameldev.mypage.domain.NoticeForm;
import com.cameldev.mypage.domain.StarVO;
import com.cameldev.mypage.domain.majorDTO;
import com.cameldev.mypage.service.CommentService;
import com.cameldev.mypage.service.NotcieServiceImpl;
import com.cameldev.mypage.service.NoticeService;
import com.cameldev.mypage.service.StarService;
import com.cameldev.mypage.service.majorService;


@Controller
@RequestMapping(value = "/notice")
public class NoticeController {
	
	@Inject
	NoticeService noticeservice;
	CommentService commentservice;
	@Inject
	StarService starService;
	
	@RequestMapping(value = "/noticeList", method=RequestMethod.GET)
	public void getNoticeList(Model model) throws Exception{
		List<NoticeDTO>list=null;
		list=noticeservice.list();
		model.addAttribute("noticelist",list);
	}
	@RequestMapping(value = "/noticeList2", method=RequestMethod.GET)
	public void getNoticeList2(Model model) throws Exception{
		List<NoticeDTO>list=null;
		list=noticeservice.list2();
		model.addAttribute("noticelist2",list);
	}
	@RequestMapping(value = "/noticeList3", method=RequestMethod.GET)
	public void getNoticeList3(Model model) throws Exception{
		List<NoticeDTO>list=null;
		list=noticeservice.list3();
		model.addAttribute("noticelist3",list);
	}
	
	
	
	@RequestMapping(value="/noticeList/read/{noticeno}")
	public String read(Model model,@PathVariable String noticeno) {
		//model.addAttribute("CommentVO", commentservice.commmentselect(noticeno));
		
		model.addAttribute("noticeDTO",noticeservice.read(noticeno));
		return "/notice/read";
	}
	@RequestMapping(value="/noticeList2/read2/{noticeno}")
	public String read2(Model model,@PathVariable String noticeno) {
		model.addAttribute("noticeDTO",noticeservice.read2(noticeno));
		return "/notice/read2";
	}
	
	@RequestMapping(value="/noticeList3/read3/{noticeno}")
	public String read3(Model model,@PathVariable String noticeno) {
		model.addAttribute("noticeDTO",noticeservice.read3(noticeno));
		return "/notice/read";
	}
	
	@RequestMapping(value="/noticeList/read/",method=RequestMethod.GET)
	public String commentread(Model model,@PathVariable String noticeno) {
		model.addAttribute("CommentVO", commentservice.commmentselect(noticeno));
		//model.addAttribute("noticeDTO",noticeservice.read(noticeno));
		return "/notice/read";
	}
	
	/*
	 * @RequestMapping(value = "/noticeList/read", method=RequestMethod.GET) public
	 * void NoticeComment(Model model, @PathVariable String noticeno) throws
	 * Exception{ List<CommentVO>list=null; list=noticeservice.comlist(noticeno);
	 * model.addAttribute("commentlist",list); }
	 */
	//북마크 처리
		@RequestMapping(value = "/starPost", method = RequestMethod.POST) 
		public String addstar( RedirectAttributes redirectAttributes,HttpSession session, StarVO starVO, String noticeno) throws Exception { 
			int memberno=(int) session.getAttribute("mno");
			starVO.setMemberno(memberno);
			
			starService.addstar(starVO);
			noticeno = starVO.getNoticeno();
			redirectAttributes.addFlashAttribute("msg", "APPLYED");
		    return "redirect:/notice/noticeList/read/"+noticeno; 
		    
		   }
		
		//북마크 처리
				@RequestMapping(value = "/addstar", method = RequestMethod.POST) 
				public String addstar2( RedirectAttributes redirectAttributes,HttpSession session, StarVO starVO, String noticeno) throws Exception { 
					int memberno=(int) session.getAttribute("mno");
					starVO.setMemberno(memberno);
					
					starService.addstar(starVO);
					noticeno = starVO.getNoticeno();
					redirectAttributes.addFlashAttribute("msg", "APPLYED");
				    return "redirect:/notice/noticeList2/read2/"+noticeno; 
				    
				   }

}