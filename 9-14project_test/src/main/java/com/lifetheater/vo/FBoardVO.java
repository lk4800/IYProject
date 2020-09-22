package com.lifetheater.vo;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class FBoardVO {
  private int fb_num;
  private String fb_title;
  private String fb_cont;
  private int fb_hit;
  private String fb_date;
  private String fb_img_url;
  private String email;
}
