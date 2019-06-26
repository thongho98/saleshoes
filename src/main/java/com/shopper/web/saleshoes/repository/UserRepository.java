package com.shopper.web.saleshoes.repository;

        import com.shopper.web.saleshoes.domain.Users;
        import org.springframework.data.jpa.repository.JpaRepository;

        import java.util.Optional;

public interface UserRepository extends JpaRepository<Users, Long> {

    Optional<Users> findByUsernameAndPassword(String username, String password);
}
