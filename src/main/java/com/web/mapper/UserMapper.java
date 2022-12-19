package com.web.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.web.vo.UserVo;

@Mapper
public interface UserMapper {
	
	public UserVo login(UserVo userVo) throws Exception;

}
