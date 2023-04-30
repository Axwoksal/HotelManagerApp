package pl.coderslab.finalproject.Client;

import lombok.*;
import pl.coderslab.finalproject.Booking.Booking;

import javax.persistence.*;
import javax.validation.constraints.*;
import java.util.List;
@ToString(exclude={"bookings"})
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Table(name="clients")
@Entity
public class Client {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Size(min=2, max=30, message="The size should be between 2 and 30 characters")
    private String firstName;

    @Size(min=2, max=30, message="The size should be between 2 and 30 characters")
    private String lastName;

@NotBlank
    @Email
    private String email;

    @Pattern(regexp = "\\+\\d{10,13}", message="The phone number should consists of the country calling code and up to 10 digits")
    private String phone;

    @OneToMany
    private List<Booking> bookings;

    public void setId(Long id) {
        this.id = id;
    }

    public Long getId() {
        return id;
    }
}
