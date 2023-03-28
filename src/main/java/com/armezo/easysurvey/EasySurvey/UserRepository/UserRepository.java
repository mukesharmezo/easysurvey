package com.armezo.easysurvey.EasySurvey.UserRepository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.armezo.easysurvey.EasySurvey.UserModel.UserMaster;


@Repository
public interface UserRepository extends JpaRepository<UserMaster, Long> {

}
