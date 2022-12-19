package com.web.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
public class UserVo {
	
	private int no;
	private String id;
	private String password;
	private String name;

}
