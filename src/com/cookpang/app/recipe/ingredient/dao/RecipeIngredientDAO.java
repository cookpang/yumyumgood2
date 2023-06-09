package com.cookpang.app.recipe.ingredient.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;


import com.cookpang.app.recipe.ingredient.dto.RecipeIngredientDTO;


import com.cookpang.app.recipe.ingredient.vo.RecipeIngredientVO;
import com.cookpang.app.user.dto.UserDTO;
import com.mybatis.config.MyBatisConfig;

public class RecipeIngredientDAO {

	public SqlSession sqlSession;
	
	public RecipeIngredientDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	
	public void insert(RecipeIngredientDTO recipeIngredientDTO) {
		sqlSession.insert("recipeIngredient.insert", recipeIngredientDTO);
	}


	public List<RecipeIngredientVO> getRecipeIngredients(int postNumber) {
		return sqlSession.selectList("recipeIngredient.getRecipeIngredients", postNumber);
	}

	public void delete(int postNumber) {
		sqlSession.delete("recipeIngredient.delete", postNumber);
	}

}
