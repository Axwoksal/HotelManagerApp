package pl.coderslab.finalproject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@Controller
public class ClientController {

    private final BookingRepository bookingRepository;
    private final RoomRepository roomRepository;
    private final ClientRepository clientRepository;

    public ClientController(BookingRepository bookingRepository, ClientRepository clientRepository, RoomRepository roomRepository) {

        this.bookingRepository = bookingRepository;
        this.roomRepository = roomRepository;
        this.clientRepository = clientRepository;
    }

    @RequestMapping(value = "/addClientsData/{id}", method = RequestMethod.GET)
    public String formAddClient(@PathVariable Long id, Model model) {
        Booking booking = bookingRepository.findFirstById(id);
        Client client = new Client();
        model.addAttribute("client", client);
        model.addAttribute("booking", booking);
        return "addClientsData";
    }

    @RequestMapping(value = "/addClientsData", method = RequestMethod.POST)
    public String saveClient(Booking booking, Client client) {
        List<Booking> bookings = bookingRepository.findAllByClient(client);
        bookings.add(booking);
        client.setBookings(bookings);
        clientRepository.save(client);
        return "redirect:/all-bookings";
    }

    @GetMapping("/deleteClient/{id}")
    public String deleteClient(@PathVariable Long id) {
        Client client = clientRepository.findFirstById(id);
        clientRepository.delete(client);
        return "redirect:/all-clients";
    }

    @GetMapping("/all-clients")
    public String allClient(Model model) {
        List<Client> clients = clientRepository.findAll();
        model.addAttribute("clients", clients);
        return "listOfClients";
    }

}
