package pl.coderslab.finalproject;

import lombok.*;
import org.hibernate.validator.constraints.Range;
import org.hibernate.validator.constraints.ScriptAssert;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import javax.validation.constraints.AssertTrue;
import javax.validation.constraints.Future;
import javax.validation.constraints.NotNull;
import java.time.LocalDate;

@ToString(exclude={"client", "room"})
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Table(name="bookings")
@Entity
@CompareDate(before = "startDate", after="endDate", message = "The arrival date must be before the departure date")
public class Booking {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @NotNull
    @Future
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate startDate;
    @NotNull
    @Future
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate endDate;
    @NotNull
    @Range(min = 2, max = 5)
    private Integer numberOfGuests;

    @NotNull
    @ManyToOne
    private Client client;

    private String notes;
    @ManyToOne(fetch = FetchType.EAGER, cascade = CascadeType.MERGE)
    private Room room;

    private Double price;

    private boolean breakfast;

   /* @AssertTrue
    public boolean geIsValid() {
        return endDate.isAfter(startDate);

    }*/
}
