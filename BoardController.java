package com.ottt.ottt.controller.board;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ottt.ottt.dao.board.BoardDaoImpl;
import com.ottt.ottt.dao.login.LoginUserDao;
import com.ottt.ottt.domain.SearchItem;
import com.ottt.ottt.service.board.BoardServiceImpl;
import com.ottt.ottt.service.community.notice.ArticleServiceImpl;

@Controller
@RequestMapping("/board")
public class BoardController {
	
	@Autowired
	BoardServiceImpl boardService;
	@Autowired
	LoginUserDao loginUserDao;
	
	@GetMapping(value = "/board")
	public String boardList(HttpSession session, SearchItem sc, Model m) {
		
		
		return "/board/board";
		
	}

}
