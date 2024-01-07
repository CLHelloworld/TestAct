package com.lee.activity.model;

import javax.persistence.Column;
import javax.persistence.Table;

@Table(name = "activity_type")
public class ActTypeItem {
    @Column(name = "act_type_id")
    Integer actTypeId;
    @Column(name = "act_type_name")
    String actTypeName;
}
