package pl.coderslab.finalproject;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;

import javax.transaction.Transactional;
import java.util.List;

public interface ClientRepository extends JpaRepository<Client, Long> {
        Client findFirstById(Long id);

        List<Client> findAll();

        @Modifying
        @Transactional
        Client save(Client client);

        @Modifying
        @Transactional
        void delete(Client client);
}
