package pl.coderslab.finalproject.Booking;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import pl.coderslab.finalproject.Client.Client;

import javax.transaction.Transactional;
import java.util.List;

public interface BookingRepository extends JpaRepository<Booking, Long> {
    Booking findFirstById(Long id);
    List<Booking> findAll();

    List<Booking> findAllByClient(Client client);

    @Modifying
    @Transactional
    Booking save(Booking booking);

    @Modifying
    @Transactional
    void delete(Booking booking);

 /*   @Modifying
    @Transactional
    @Query("update Booking b set b.client= :client WHERE b.id = :id")
    void update(@Param(value = "client") Client client, @Param(value = "id") Long id);*/
}
