package com.heaven.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.heaven.dao.ClassroomMapper;
import com.heaven.dao.DepartmentMapper;
import com.heaven.dao.MajorMapper;
import com.heaven.dao.UserMapper;
import com.heaven.model.Classroom;
import com.heaven.model.Department;
import com.heaven.model.Major;
import com.heaven.model.User;
import com.heaven.service.IUserService;
import com.heaven.utils.MD5;
/**
 * user Service ≤„ µœ÷
 * @author HEAVEN
 *
 */
@Service
public class UserServiceImpl implements IUserService {
	@Resource
	UserMapper serMapper = null;
	@Resource
	DepartmentMapper departmentMapper = null;
	@Resource
	MajorMapper majorMapper = null;
	@Resource
	ClassroomMapper classroomMapper = null;
	
	@Override
	public int deleteByPrimaryKey(Integer id) {
		return serMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insert(User record) {
		return serMapper.insert(record);
	}

	@Override
	public int insertSelective(User record) {
		record.setLoginPass(MD5.encryption(record.getLoginPass()));
		return serMapper.insertSelective(record);
	}

	@Override
	public User selectByPrimaryKey(Integer id) {
		return serMapper.selectByPrimaryKey(id);
	}

	@Override
	public int updateByPrimaryKeySelective(User record) {
		return serMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKeyWithBLOBs(User record) {
		return serMapper.updateByPrimaryKeyWithBLOBs(record);
	}
	
	@Override
	public int updateByPrimaryKey(User record) {
		return serMapper.updateByPrimaryKey(record);
	}

	@Override
	public User checkLogin(User user) {
		return serMapper.checkLogin(user);
	}

	@Override
	public List<Department> selectAllDepartment() {
		return departmentMapper.selectAllDepartment();
	}

	@Override
	public List<Major> selectAllMajor() {
		return majorMapper.selectAllMajor();
	}

	@Override
	public List<Classroom> selectAllClassroom() {
		return classroomMapper.selectAllClassroom();
	}

	@Override
	public User selectByEmail(String email) {
		return serMapper.selectByEmail(email);
	}

	@Override
	public User selectByIdAndPass(User user) {
		return serMapper.selectByIdAndPass(user);
	}

}
