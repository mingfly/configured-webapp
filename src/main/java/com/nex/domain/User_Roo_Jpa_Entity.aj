// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.nex.domain;

import com.nex.domain.User;
import javax.persistence.Entity;
import javax.persistence.Table;

privileged aspect User_Roo_Jpa_Entity {
    
    declare @type: User: @Entity;
    
    declare @type: User: @Table(name = "user");
    
}
