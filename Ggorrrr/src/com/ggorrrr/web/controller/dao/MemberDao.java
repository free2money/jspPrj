package com.ggorrrr.web.controller.dao;

import java.util.List;

import com.ggorrrr.web.controller.entity.Member;

public interface MemberDao {
	
	  List<Member> getMemberList(); //��üȸ���������� ���ȸ������Ʈ
	  List<Member> getMemberList(String field, String query); 	//��üȸ������ �˻�

	  int insert(Member member);	//ȸ������
	  int update(Member member);	//�������,�г��Ӻ���
	  int deletes(int[] ids); 		//��üȸ������ �ϰ�����
	  int delete(int id);			//my�׸� ȸ��Ż��
	  Member get(int id) ;		    //my�׸�, �α���
	  String MyFavorite(int id);    //���ã��޴� ��������.

}
