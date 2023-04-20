package pl.coderslab.finalproject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.time.LocalDate;
import java.util.ArrayList;
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
        model.addAttribute("rooms", roomRepository.findAll());
        model.addAttribute("booking", new Booking());
        return "addBooking";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String saveBooking(@Valid Booking booking, Model model, BindingResult result) {
        if (result.hasErrors()) {
            return "addBooking";
        }
        model.addAttribute("clients", clientRepository.findAll());
        model.addAttribute("rooms", roomRepository.findAll());
        bookingRepository.save(booking);
        return "redirect:/all-bookings";
    }

        @GetMapping("/all-bookings")
    public String allBookings(Model model) {
            List<Booking> bookings = bookingRepository.findAll();
            model.addAttribute("bookings", bookings);
            return "listOfBookings";
        }

    @GetMapping("/updateBooking/{id}")
    public String showUpdateBookingForm(@PathVariable Long id, Model model) {
        model.addAttribute("booking", bookingRepository.findFirstById(id));
        return "updateBooking";
    }

    @PostMapping(value = "/updateBooking")
    public String updateBooking(@Valid Booking booking, BindingResult result) {
        if (result.hasErrors()) {
            return "updateBooking";
        }
        bookingRepository.save(booking);
        return "redirect:/all-bookings";
    }


    @GetMapping("/deleteBooking/{id}")
    public String deleteBooking(@PathVariable Long id) {
        Booking booking = bookingRepository.findFirstById(id);
        bookingRepository.delete(booking);
        return "redirect:/all-bookings";
        }

    @GetMapping("/free-rooms")
    public String showFreeRoomsForm() {
        return "freeRoomsForm";
    }

    @GetMapping("/display-free-rooms")
    public String displayFreeRooms(HttpServletRequest request, Model model) {
        LocalDate date1 = LocalDate.parse(request.getParameter("date1"));
        LocalDate date2 = LocalDate.parse(request.getParameter("date2"));
        Integer numberOfGuests = Integer.parseInt(request.getParameter("numberOfGuests"));
        List<Booking> bookings = bookingRepository.findAll();
        List<Room> allRooms = roomRepository.findAll();
        List<Room> freeRooms = new ArrayList<>();
        List<Room> roomsFromBookings = new ArrayList<>();
        for (Booking booking : bookings) {
            if (!(booking.getRoom() == null)) {
                Room bookedRoom = booking.getRoom();
                roomsFromBookings.add(bookedRoom);
            }
        }
        for (Room room: allRooms) {
            if (!roomsFromBookings.contains(room)&&room.getPlacesToSleep() >= numberOfGuests){
                    freeRooms.add(room);
            }
        }

        for (Booking booking : bookings) {
            if (booking.getStartDate().isBefore(date1) || booking.getStartDate().isAfter(date2)) {
                if (booking.getEndDate().isBefore(date1) || booking.getEndDate().isAfter(date2)) {
                    Room freeRoom = booking.getRoom();
                    if (!freeRooms.contains(freeRoom)&&freeRoom.getPlacesToSleep()>numberOfGuests) {
                        freeRooms.add(freeRoom);
                    }
                    }
                }
            }
        model.addAttribute("freeRooms", freeRooms);
        return "listOfFreeRooms";
    }


    @ModelAttribute("clients")
    public Collection<Client> clients() {
        return this.clientRepository.findAll();
    }

    @ModelAttribute("rooms")
    public Collection<Room> rooms() {
        return this.roomRepository.findAll();
    }
}
