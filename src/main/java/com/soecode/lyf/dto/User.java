package com.soecode.lyf.dto;

import jdk.nashorn.internal.objects.annotations.Getter;
import jdk.nashorn.internal.objects.annotations.Setter;
import lombok.Data;

@Data
public class User {
	private String userName;
	private String passWord;
	private String nickName;

}
