package com.lifetheater.vo;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class PBoardVO {
  private int pb_num;
  private String pb_title;
  private String pb_cont;
  private int pb_hit;
  private String pb_date;
  private String pb_img_url;
  private String email;
}
