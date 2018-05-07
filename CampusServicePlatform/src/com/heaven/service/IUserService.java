package com.heaven.service;

import java.util.List;

import com.heaven.model.Classroom;
import com.heaven.model.Department;
import com.heaven.model.Major;
import com.heaven.model.User;
/**
 * user Service 层接口
 * @author HEAVEN
 *
 */
public interface IUserService {
	/**
	 * 按id删除
	 * @param id
	 * @return
	 */
	int deleteByPrimaryKey(Integer id);
	/**
	 * 插入对象
	 * @param record
	 * @return
	 */
    int insert(User record);
    /**
     * 按需插入
     * @param record
     * @return
     */
    int insertSelective(User record);
    /**
     * 按id查询
     * @param id
     * @return
     */
    User selectByPrimaryKey(Integer id);
    /**
     * 按id按需更新
     * @param record
     * @return
     */
    int updateByPrimaryKeySelective(User record);
    /**
     * 按id按需更新（带长字段）
     * @param record
     * @return
     */
    int updateByPrimaryKeyWithBLOBs(User record);
    /**
     * 按id全部更新
     * @param record
     * @return
     */
    int updateByPrimaryKey(User record);
    /**
     * 登陆
     * @param user
     * @return
     */
	User checkLogin(User user);
	
	/**
	 * 得到所有的系别
	 * @return
	 */
	List<Department> selectAllDepartment();
	
	/**
	 * 得到所有的专业
	 * @return
	 */
	List<Major> selectAllMajor();
	
	/**
	 * 得到所有班级
	 * @return
	 */
    List<Classroom> selectAllClassroom();
    /**
     * 重置密码按email查询
     * @param email
     * @return
     */
	User selectByEmail(String email);

	/**
	 * 重置密码验证id和密码
	 * @param email
	 * @return
	 */
	User selectByIdAndPass(User user);

	
}
