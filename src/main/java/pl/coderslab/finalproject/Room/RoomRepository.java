package pl.coderslab.finalproject.Room;

import org.springframework.data.jpa.repository.JpaRepository;

public interface RoomRepository extends JpaRepository<Room, Long> {
    Room findFirstById(Long id);
    Room findFirstByPlacesToSleep(Integer placesToSleep);


}
