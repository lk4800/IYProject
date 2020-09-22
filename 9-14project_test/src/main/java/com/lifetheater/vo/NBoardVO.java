package com.lifetheater.vo;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class NBoardVO {
  private int nb_num;
  private String nb_title;
  private String nb_cont;
  private int nb_hit;
  private String nb_date;
  private String nb_img_url;
  private String email;
}
