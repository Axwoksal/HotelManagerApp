package pl.coderslab.finalproject;

import lombok.*;

import javax.persistence.*;

@ToString(exclude={"bookings"})
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Table(name="rooms")
@Entity
public class Room {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(unique=true)
    private Long number;

    private Integer placesToSleep;
}