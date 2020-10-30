package com.edu.dto;

import lombok.Data;
import lombok.ToString;

//@Getter
//@Setter
//@ToString
@Data
@ToString(exclude = "val2")
public class SampleDTO {
	private String val1;
	private String val2;
	private String val3;
	
}
