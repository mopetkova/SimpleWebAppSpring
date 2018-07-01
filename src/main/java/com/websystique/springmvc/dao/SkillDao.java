package com.websystique.springmvc.dao;

import java.util.List;

import com.websystique.springmvc.model.Skill;

public interface SkillDao {

    List<Skill> allSkills();

    Skill findById(Integer skillIs);

    Skill findByName(String name);
}
