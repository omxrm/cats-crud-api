package com.csc340.cats_crud_api.cat;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PathVariable;

@Service
public class CatService {

  @Autowired
  private CatRepository catRepository;

  /**
   * Method to get all cats
   *
   * @return List of all cats
   */
  public Object getAllCats() {
    return catRepository.findAll();
  }

  /**
   * Method to get a cat by ID
   *
   * @param catId The ID of the cat to retrieve
   * @return The cat with the specified ID
   */
  public Cat getCatById(@PathVariable long catId) {
    return catRepository.findById(catId).orElse(null);
  }

  /**
   * Method to get cats by name
   *
   * @param name The name of the cat to search for
   * @return List of cats with the specified name
   */
  public Object getCatsByName(String name) {
    return catRepository.getCatsByName(name);
  }

  /**
   * Method to get cats by breed
   *
   * @param breed The breed to search for
   * @return List of cats with the specified breed
   */
  public Object getCatsByBreed(String breed) {
    return catRepository.getCatsByBreed(breed);
  }

  /**
   * Method to add a new cat
   *
   * @param cat The cat to add
   */
  public Cat addCat(Cat cat) {
    return catRepository.save(cat);
  }

  /**
   * Method to update a cat
   *
   * @param catId The ID of the cat to update
   * @param cat   The updated cat information
   */
  public Cat updateCat(Long catId, Cat cat) {
    return catRepository.save(cat);
  }

  /**
   * Method to delete a cat
   *
   * @param catId The ID of the cat to delete
   */
  public void deleteCat(Long catId) {
    catRepository.deleteById(catId);
  }
}