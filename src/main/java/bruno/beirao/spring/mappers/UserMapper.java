package bruno.beirao.spring.mappers;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import bruno.beirao.spring.model.User;

public interface UserMapper {

    @Select("SELECT * FROM user ")
    public List<User> getUsers();
	
    @Select("SELECT * FROM user WHERE upper(username) like #{search}"
	    + " OR upper(name) like #{search}"
	    + " OR upper(email) like #{search}")
    List<User> findUser(@Param("search") String search);
}