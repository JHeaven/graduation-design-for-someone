package com.heaven.service;

import java.util.List;

import com.heaven.model.Friend;
import com.heaven.model.ShareFile;
/**
 * 好友service接口
 * @author HEAVEN
 *
 */
public interface IFriendService {
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
    int insert(Friend record);
    /**
     * 按需插入
     * @param record
     * @return
     */
    int insertSelective(Friend record);
    /**
     * 按id查询
     * @param id
     * @return
     */
    Friend selectByPrimaryKey(Integer id);
    /**
     * 按id按需更新
     * @param record
     * @return
     */
    int updateByPrimaryKeySelective(Friend record);
    /**
     * 按id全部更新
     * @param record
     * @return
     */
    int updateByPrimaryKey(Friend record);
    /**
     * 给我的好友申请
     * @param toId
     * @return
     */
    List<Friend> selectMeetMyFriend(Integer toId);
    /**
     * 修改状态
     * @param record
     * @return
     */
    int updateState(Friend record);
    
    /**
     * 查看我的所有好友
     * @param toId
     * @return
     */
    List<Friend> selectAllMyFriend(Integer toId);
    
}
