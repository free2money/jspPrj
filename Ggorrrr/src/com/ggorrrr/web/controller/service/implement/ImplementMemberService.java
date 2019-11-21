package com.ggorrrr.web.controller.service.implement;

import java.util.List;

import com.ggorrrr.web.controller.dao.MemberDao;
import com.ggorrrr.web.controller.dao.jdbc.JdbcMemberDao;
import com.ggorrrr.web.controller.entity.Member;
import com.ggorrrr.web.controller.service.MemberService;

public class ImplementMemberService implements MemberService {

	private MemberDao memberDao;

	public ImplementMemberService() {
		memberDao = new JdbcMemberDao();
	}

	// 회원인지확인
	@Override
	public boolean isValidMember(String id, String pwd) {

		Member member = memberDao.get(id);

		System.out.println(member);

		// 사용자가 없을시
		if (member == null)
			return false;
		// 사용자의 패스워드가 틀릴시
		else if (!member.getPwd().equals(pwd))
			return false;
		// 사용자 패스워드가 맞을시
		return true;
	}

	// 아이디중복확인
	@Override
	public boolean isDuplicatedId(String id, String user_id) {

		Member member = memberDao.get(id);

		if (member.getUser_id().equals(user_id))
			return false;
		else
			return true;

	}

	// 전체회원관리-회원리스트
	@Override
	public List<Member> getMemberList() {
		return memberDao.getMemberList();
	}

	// 전체회원리스트-검색
	@Override
	public List<Member> getMemberList(String field, String query) {
		// TODO Auto-generated method stub
		return memberDao.getMemberList(field, query);
	}

	// 회원가입
	@Override
	public int insert(Member member) {
		return memberDao.insert(member);
	}

	// 비번변경,닉네임변경,위치정보동의변경
	@Override
	public int update(Member member) {
		return memberDao.update(member);
	}

	// 전체회원관리-회원일괄삭제
	@Override
	public int deletes(int[] ids) {
		int i = 0;

		for (; i < ids.length; i++) {
			memberDao.delete(ids[i]);
		}
		return i;
	}

	// 회원탈퇴
	@Override
	public int delete(int id) {
		return memberDao.delete(id);
	}

	// my그먹,로그인
	@Override
	public Member get(int id) {
		return memberDao.get(id);
	}

}
