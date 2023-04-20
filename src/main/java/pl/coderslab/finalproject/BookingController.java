package pl.coderslab.finalproject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.Collection;
import java.util.List;
import java.util.Objects;

@Controller
public class BookingController {

    private final BookingRepository bookingRepository;
    private final RoomRepository roomRepository;
    private final ClientRepository clientRepository;

    public BookingController(BookingRepository bookingRepository, ClientRepository clientRepository, RoomRepository roomRepository) {

        this.bookingRepository = bookingRepository;
        this.roomRepository = roomRepository;
        this.clientRepository = clientRepository;
    }

    @GetMapping("/")
        public String hello() {
            return "hello";
        }


    @RequestMapping(value = "/add", method=RequestMethod.GET)
    public String showForm(Model model) {
        model.addAttribute("clients", clientRepository.findAll());
        model.addAttribute("booking", new Booking());
        return "addBooking";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String saveBooking(@Valid Booking booking, Model model, BindingResult result) {
        if (result.hasErrors()) {
            return "addBooking";
        }
        model.addAttribute("client", clientRepository.findAll());
        Integer guests = booking.getNumberOfGuests();
        Double price = guests.doubleValue()*60D;
        Room room = roomRepository.findFirstByPlacesToSleep(guests);
        booking.setPrice(price);
        booking.setRoom(room);
        bookingRepository.save(booking);
        return "redirect:/all-bookings";
    }

        @GetMapping("/all-bookings")
    public String allBookings(Model model) {
            List<Booking> bookings = bookingRepository.findAll();
            model.addAttribute("bookings", bookings);
            return "listOfBookings";
        }

        @GetMapping("/deleteBooking/{id}")
    public String deleteBooking(@PathVariable Long id) {
        Booking booking = bookingRepository.findFirstById(id);
        bookingRepository.delete(booking);
        return "redirect:/all-bookings";
        }

    @ModelAttribute("clients")
    public Collection<Client> clients() {
        return this.clientRepository.findAll();
    }
}
