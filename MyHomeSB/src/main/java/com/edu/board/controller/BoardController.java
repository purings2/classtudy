package com.edu.board.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;

import com.edu.board.domain.BoardDTO;
import com.edu.board.domain.FileDTO;
import com.edu.board.service.BoardService;

@Controller
@RequestMapping("/board")
public class BoardController {
	
	@Resource(name="com.edu.board.service.BoardService")
	BoardService mBoardService;
	
	//웹 브라우저에서 http://localhost:8088/board/insert 로 호출한다.
	@RequestMapping("/insert")
	private String boardInsertForm() {
		System.out.println("Controller insert......");
		return "/board/insert";
	}
	
	// Controller 에서 Multipart 를 @RequestParet 어노테이션을 통해 별도의 설정없이 사용할 수 있다.
	@RequestMapping("/insertProc")
	private String boardInsertProc(HttpServletRequest request, @RequestPart MultipartFile files) throws Exception {
		
		//게시글 등록 화면에서 입력한 값들을 실어나르기 위해 BoardVO를 생성한다.
		BoardDTO board 	= new BoardDTO();
		FileDTO	file	= new FileDTO();
		
		board.setSubject(request.getParameter("subject"));
		board.setContent(request.getParameter("content"));
		board.setWriter (request.getParameter("writer"));
		
		if(files.isEmpty()) {	// 업로드할 파일이 없는 경우
			mBoardService.boardInsertService(board);	// 게시글만 올린다.
		} else {	// 업로드할 파일이 있는 경우
			//FilenameUtils : commons-io defendency를 사용.
			String 	fileName = files.getOriginalFilename();
			String 	fileNameExtension = FilenameUtils.getExtension(fileName).toLowerCase();
			File	destinationFile;
			String	destinationFileName;
			// fileUrl = "uploadFiles 폴더의 위치";
			// uploadFiles 폴더의 위치 확인 : uploadFiles 우클릭 -> Properties -> Resource - > Location
			String	fileUrl = "C:/workspaceSP/sboard/src/main/webapp/WEB-INF/uploadFiles/"; 
			
			do {
				destinationFileName = RandomStringUtils.randomAlphanumeric(32) + "." + fileNameExtension;
				destinationFile     = new File(fileUrl + destinationFileName);
			} while(destinationFile.exists());
			
			
			// MultipartFile.transferTo() : 요청 시점의 임시 파일을 로컬 파일 시스템에 영구적으로 복사해준다.
			destinationFile.getParentFile().mkdirs();
			files.transferTo(destinationFile);
			
			mBoardService.boardInsertService(board);	// 게시글 올리기
			
			// 파일관련 자료를 Files 테이블에 등록한다.
			file.setBno(board.getBno());
			file.setFileName(destinationFileName);
			file.setFileOriName(fileName);
			file.setFileUrl(fileUrl);
			
			mBoardService.fileInsertService(file);
		}
		
		return "redirect:/board/list";
	}
	
	//게시글 목록 보여주기
	@RequestMapping("/list")
	private String boardList(Model model) throws Exception {
		//게시글 목록 보여주기 화면으로 가기 전에 보여줄 데이터를 가져와서 model에 담든다.
		model.addAttribute("list", mBoardService.boardListService());
		return "/board/list";
	}
	
	//게시글 번호에 해당하는 상세정보화면
	@RequestMapping("/detail/{bno}")
	private String boardDetail(@PathVariable int bno, Model model) throws Exception {
		//bno에 해당하는 자료를 찾아와서 model에 담는다.
		model.addAttribute("detail", mBoardService.boardDetailService(bno));	//게시글의 정보를 가져와서 저장한다.
		model.addAttribute("files" , mBoardService.fileDetailService(bno));		//파일의 정보를 가져와서 저장한다.
		return "/board/detail";
	}
	
	//댓글을 달 수 있는 상세 정보 화면
	@RequestMapping("/detailComment/{bno}")
	private String boardDetailComment(@PathVariable int bno, Model model) throws Exception {
		//bno에 해당하는 자료를 찾아와서 model에 담는다.
		model.addAttribute("detail", mBoardService.boardDetailService(bno));	//게시글의 정보를 가져와서 저장한다.
		model.addAttribute("files" , mBoardService.fileDetailService(bno));		//파일의 정보를 가져와서 저장한다.
		return "/board/detailComment";
	}
	
	//게시글 수정 화면
	@RequestMapping("/update/{bno}")
	private String boardUpdateForm(@PathVariable int bno, Model model) throws Exception {
		model.addAttribute("detail", mBoardService.boardDetailService(bno));
		return "/board/update";
	}
	
	//게시글 수정화면에서 수정한 자료를 업데이트 한다.
	@RequestMapping("/updateProc")
	private String boardUpdateProc(HttpServletRequest request) throws Exception {
		//서비스에게 넘계줄 자료를 저장한다.
		BoardDTO board = new BoardDTO();
		board.setSubject(request.getParameter("subject"));
		board.setContent(request.getParameter("content"));
		board.setBno(Integer.parseInt(request.getParameter("bno")));
		
		mBoardService.boardUpdateService(board);
		
		return "redirect:/board/detail/" + request.getParameter("bno");
	}
	
	//글 번호에 해당하는 자료를 삭제한다.
	@RequestMapping("/delete/{bno}")
	private String boardDelete(@PathVariable int bno) throws Exception {
		mBoardService.boardDeleteService(bno);
		return "redirect:/board/list";
	}
	
	//파일 다운로드
	@RequestMapping("/fileDown/{bno}")
    private void fileDown(@PathVariable int bno, HttpServletRequest request, HttpServletResponse response) throws Exception{
        
        request.setCharacterEncoding("UTF-8");
        FileDTO fileDTO = mBoardService.fileDetailService(bno);
        
        //파일 업로드된 경로 
        try {
            String fileUrl = fileDTO.getFileUrl();
             fileUrl += "/";
            String savePath = fileUrl;
            String fileName = fileDTO.getFileName();
            
            //실제 내보낼 파일명 
            String oriFileName = fileDTO.getFileOriName();
            InputStream in = null;
            OutputStream os = null;
            File file = null;
            boolean skip = false;
            String client = "";
            
            
            //파일을 읽어 스트림에 담기  
            try{
                file = new File(savePath, fileName);
                in = new FileInputStream(file);
            } catch (FileNotFoundException fe) {
            	skip = true;
            }
            
            client = request.getHeader("User-Agent");
            
            //파일 다운로드 헤더 지정 
            response.reset();
            response.setContentType("application/octet-stream");
            response.setHeader("Content-Description", "JSP Generated Data");
            
            if (!skip) {
                // IE
                if (client.indexOf("MSIE") != -1) {
                    response.setHeader("Content-Disposition", "attachment; filename=\""
                            + java.net.URLEncoder.encode(oriFileName, "UTF-8").replaceAll("\\+", "\\ ") + "\"");
                    // IE 11 이상.
                } else if (client.indexOf("Trident") != -1) {
                    response.setHeader("Content-Disposition", "attachment; filename=\""
                            + java.net.URLEncoder.encode(oriFileName, "UTF-8").replaceAll("\\+", "\\ ") + "\"");
                } else {
                    // 한글 파일명 처리
                    response.setHeader("Content-Disposition",
                            "attachment; filename=\"" + new String(oriFileName.getBytes("UTF-8"), "ISO8859_1") + "\"");
                    response.setHeader("Content-Type", "application/octet-stream; charset=utf-8");
                }
                response.setHeader("Content-Length", "" + file.length());
                os = response.getOutputStream();
                byte b[] = new byte[(int) file.length()];
                int leng = 0;
                while ((leng = in.read(b)) > 0) {
                    os.write(b, 0, leng);
                }
            } else {
                response.setContentType("text/html;charset=UTF-8");
                System.out.println("<script language='javascript'>alert('파일을 찾을 수 없습니다');history.back();</script>");
            }
            in.close();
            os.close();
        } catch (Exception e) {
            System.out.println("ERROR : " + e.getMessage());
        }
        
    }
	

	//게시글 목록 보여주기(Date Picker)
	@RequestMapping("/listDate")
	private String listDate(Model model) throws Exception {
		//게시글 목록 보여주기 화면으로 가기 전에 보여줄 데이터를 가져와서 model에 담든다.
		model.addAttribute("list", mBoardService.boardListService());
		return "/board/listDate";
	}
	
	//게시글 목록 보여주기(Date Picker)
	@RequestMapping("/normal")
	private String normal(Model model) throws Exception {
		//게시글 목록 보여주기 화면으로 가기 전에 보여줄 데이터를 가져와서 model에 담든다.
		model.addAttribute("list", mBoardService.boardListService());
		return "/board/normal";
	}
	

	
}























