package pl.coderslab.finalproject;

import lombok.*;

import javax.persistence.*;
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
    private String firstName;
    private String lastName;

    private String email;

    private String phone;

    @OneToMany(mappedBy="client", orphanRemoval = true, cascade = CascadeType.ALL)
    private List<Booking> bookings;

    public void setId(Long id) {
        this.id = id;
    }

    public Long getId() {
        return id;
    }
}
