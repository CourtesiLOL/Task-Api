package com.courtesilol.taskApi.repository;

import com.courtesilol.taskApi.model.entity.User;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author javier
 */
@Repository
public interface UserRepository extends CrudRepository<User, String>{

}
