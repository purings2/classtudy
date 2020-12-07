package com.edu.admin.cotroller;


import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.edu.admin.domain.AdminBoardDTO;
import com.edu.admin.service.AdminBoardService;

@Controller // 컨트롤러 빈으로 등록하는 어노테이션
@RequestMapping("/adboard/*") // AdminController에서 공통적으로 사용될 url mapping
public class AdminBoardController {
	
	//로깅을 위한 변수 logger를 선언한다.
	private static final Logger LOGGER
		= LoggerFactory.getLogger(AdminBoardController.class);
    
	@Inject
	AdminBoardService adminBoardService;
	
	@RequestMapping(value="/board", method=RequestMethod.GET)
	public String getAdminBoard(Model model) throws Exception {
		LOGGER.info("adminController  admin/board().....");
		model.addAttribute("board", adminBoardService.boardListService());
		return "/adboard/board"; // => WEB-INF/views/admin/test2.jsp
	}
    
    @RequestMapping("/detail/{boardNo}") 
    private String boardDetail(@PathVariable int boardNo, Model model) throws Exception{
        
        model.addAttribute("detail", adminBoardService.boardDetailService(boardNo));
        
        return "/adboard/detail";
    }
  
    
  //테스트 페이지
  	@RequestMapping(value="/insert", method=RequestMethod.GET)
  	public String boardInsertForm() throws Exception {
  		LOGGER.info("adminController  adboard/insert().....");
  		return "/adboard/insert"; // => WEB-INF/views/admin/test2.jsp
  	}
    @RequestMapping(value="/insertProc", method=RequestMethod.POST)
    private String boardInsertProc(HttpServletRequest request) throws Exception{
        
    	AdminBoardDTO board = new AdminBoardDTO();
        
        board.setTitle(request.getParameter("title"));
        board.setContent(request.getParameter("content"));
        board.setWriter(request.getParameter("writer"));
        
        adminBoardService.boardInsertService(board);


		return "redirect:/adboard/board";
    }
    
    
    @RequestMapping("/update/{boardNo}") //게시글 수정폼 호출  
    private String boardUpdateForm(@PathVariable int boardNo, Model model) throws Exception{
        
        model.addAttribute("detail", adminBoardService.boardDetailService(boardNo));
        
        return "update";
    }
    
    @RequestMapping("/updateProc")
    private int boardUpdateProc(HttpServletRequest request) throws Exception{
        
    	AdminBoardDTO board = (AdminBoardDTO) request.getParameterMap();
        
        return adminBoardService.boardUpdateService(board);
    }
 
    @RequestMapping("/delete/{boardNo}")
    private String boardDelete(@PathVariable int boardNo) throws Exception{
        
    	adminBoardService.boardDeleteService(boardNo);
        
        return "redirect:/adboard/board";
    }
	@RequestMapping(value="/memberList", method=RequestMethod.GET)
	public String getMember(Model model) throws Exception {
		
		model.addAttribute("memberList", adminBoardService.memberListService());
        
		return "/adboard/memberList"; // => WEB-INF/views/admin/test2.jsp
	}
	
	 @RequestMapping("/memberDelete/{memberId}")
	    private String memberDelete(@PathVariable String memberId) throws Exception{
	        
	    	adminBoardService.memberDeleteService(memberId);
	        
	        return "redirect:/adboard/memberList";
	    }
	
}















