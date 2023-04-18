package pl.coderslab.finalproject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

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
        Booking booking = new Booking();
        model.addAttribute("booking", booking);
        return "addBooking";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String saveBooking(Booking booking) {
        System.out.println(booking.getStartDate());
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
}
