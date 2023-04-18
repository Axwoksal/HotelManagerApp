package pl.coderslab.finalproject;

import lombok.*;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.time.LocalDate;

@ToString(exclude={"client", "room"})
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Table(name="bookings")
@Entity
public class Booking {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate startDate;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate endDate;

    private Integer numberOfGuests;

    @ManyToOne(cascade = CascadeType.ALL, fetch=FetchType.EAGER)
    private Client client;

    private String notes;
    @ManyToOne
    /*(fetch=FetchType.EAGER)*/
    private Room room;

    private Double price;
}
