package pl.coderslab.finalproject;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;

import javax.transaction.Transactional;
import java.util.List;

public interface RoomRepository extends JpaRepository<Room, Long> {
    Room findFirstById(Long id);
    Room findFirstByPlacesToSleep(Integer placesToSleep);


}
