package com.kangyonggan.archetype.cmscc.mapper;

import com.kangyonggan.archetype.cmscc.model.vo.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserMapper extends MyMapper<User> {

    /**
     * 保存用户角色
     *
     * @param username
     * @param roleCodes
     */
    void insertUserRoles(@Param("username") String username, @Param("roleCodes") List<String> roleCodes);

}