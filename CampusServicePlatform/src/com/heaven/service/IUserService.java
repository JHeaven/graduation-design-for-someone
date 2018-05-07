package com.heaven.service;

import java.util.List;

import com.heaven.model.Classroom;
import com.heaven.model.Department;
import com.heaven.model.Major;
import com.heaven.model.User;
/**
 * user Service ��ӿ�
 * @author HEAVEN
 *
 */
public interface IUserService {
	/**
	 * ��idɾ��
	 * @param id
	 * @return
	 */
	int deleteByPrimaryKey(Integer id);
	/**
	 * �������
	 * @param record
	 * @return
	 */
    int insert(User record);
    /**
     * �������
     * @param record
     * @return
     */
    int insertSelective(User record);
    /**
     * ��id��ѯ
     * @param id
     * @return
     */
    User selectByPrimaryKey(Integer id);
    /**
     * ��id�������
     * @param record
     * @return
     */
    int updateByPrimaryKeySelective(User record);
    /**
     * ��id������£������ֶΣ�
     * @param record
     * @return
     */
    int updateByPrimaryKeyWithBLOBs(User record);
    /**
     * ��idȫ������
     * @param record
     * @return
     */
    int updateByPrimaryKey(User record);
    /**
     * ��½
     * @param user
     * @return
     */
	User checkLogin(User user);
	
	/**
	 * �õ����е�ϵ��
	 * @return
	 */
	List<Department> selectAllDepartment();
	
	/**
	 * �õ����е�רҵ
	 * @return
	 */
	List<Major> selectAllMajor();
	
	/**
	 * �õ����а༶
	 * @return
	 */
    List<Classroom> selectAllClassroom();
    /**
     * �������밴email��ѯ
     * @param email
     * @return
     */
	User selectByEmail(String email);

	/**
	 * ����������֤id������
	 * @param email
	 * @return
	 */
	User selectByIdAndPass(User user);

	
}
