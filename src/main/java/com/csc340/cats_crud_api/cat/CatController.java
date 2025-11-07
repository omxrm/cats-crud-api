package com.csc340.cats_crud_api.cat;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import org.springframework.ui.Model;

@Controller // MVC Controller
public class CatController {

  @Autowired
  private CatService catService;

  /**
   * Endpoint to get all cats
   *
   * @return List of all cats
   */
  @GetMapping({"/cats", "/cats/"})
  public String getAllCats(Model model) {
    model.addAttribute("catsList", catService.getAllCats());
    model.addAttribute("title", "All Cats");
    return "cats-list"; // view name
  }

  /**
   * Endpoint to get a cat by ID
   *
   * @param id The ID of the cat to retrieve
   * @return The cat details view with the specified ID
   */
  @GetMapping("/cats/{id}")
  public String getCatById(@PathVariable long id, Model model) {
    model.addAttribute("cat", catService.getCatById(id));
    model.addAttribute("title", "Cat #: " + id);
    return "cat-details";
  }

  /**
   * Endpoint to get cats by name
   *
   * @param name The name of the cat to search for
   * @return List of cats with the specified name
   */
  @GetMapping("/cats/search")
  public String getCatsByName(@RequestParam String name, Model model) {
    if (name != null) {
      model.addAttribute("catsList", catService.getCatsByName(name));
      model.addAttribute("title", "Cats by Name: " + name);
      return "cats-list";
    } else {
      return "redirect:/cats/";
    }
  }

  /**
   * Endpoint to get cats by breed
   *
   * @param breed The breed to search for
   * @return List of cats with the specified breed
   */
  @GetMapping("/cats/breed/{breed}")
  public Object getCatsByBreed(@PathVariable String breed, Model model) {
    model.addAttribute("catsList", catService.getCatsByBreed(breed));
    model.addAttribute("title", "Cats by Breed: " + breed);
    return "cats-list";
  }

  /**
   * Endpoint to show the create form for a new cat
   * 
   * @param model The model to add attributes to
   * @return The view name for the create form
   */
  @GetMapping("/cats/createForm")
  public Object showCreateForm(Model model) {
    Cat cat = new Cat();
    model.addAttribute("cats", cat);
    model.addAttribute("title", "Create New Cat");
    return "cats-create";
  }

  /**
   * Endpoint to add a new cat
   *
   * @param cat The cat to add
   * @return The added cat
   */
  @PostMapping("/cats")
  public Object addCat(Cat cat) {
    Cat newCat = catService.addCat(cat);
    return "redirect:/cats/" + newCat.getCatId();
  }

  /**
   * Endpoint to show the update form for a cat
   * 
   * @param id The ID of the cat to update
   * @param cat the model to add attributes to
   * @return The view name for the update form
   */
  @GetMapping("/cats/update/{id}")
  public Object showUpdateForm(@PathVariable Long id, Model model) {
    Cat cat = catService.getCatById(id);
    model.addAttribute("cat", cat);
    model.addAttribute("title", "Edit Cat: " + id);
    return "cats-update";
  }

  /**
   * Endpoint to update a cat
   *
   * @param id  The ID of the cat to update
   * @param cat The updated cat information
   * @return The updated cat
   */
  @PostMapping("/cats/update/{id}")
  public Object updateCat(@PathVariable Long id, Cat cat) {
    catService.updateCat(id, cat);
    return "redirect:/cats/" + id;
  }

  /**
   * Endpoint to delete a cat
   *
   * @param id The ID of the cat to delete
   * @return List of all cats
   */
  @GetMapping("/cats/delete/{id}")
  public Object deleteCat(@PathVariable Long id) {
    catService.deleteCat(id);
    return "redirect:/cats";
  }
}