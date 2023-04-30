package pl.coderslab.finalproject.Client;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.finalproject.Booking.BookingRepository;
import pl.coderslab.finalproject.Room.RoomRepository;

import javax.validation.Valid;
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

    @RequestMapping(value = "/addClientsData", method = RequestMethod.GET)
    public String formAddClient(Model model) {
        model.addAttribute("client", new Client());
        return "addClientsData";
    }

    @RequestMapping(value = "/addClientsData", method = RequestMethod.POST)
    public String saveClient(@Valid Client client, BindingResult result) {
        if (result.hasErrors()) {
            return "addClientsData";
        }
        clientRepository.save(client);
        return "redirect:/all-clients";
    }

    @GetMapping("/updateClient/{id}")
    public String showUpdateClientForm(@PathVariable Long id, Model model) {
        model.addAttribute("client", clientRepository.findFirstById(id));
        return "updateClientsData";
    }

    @PostMapping(value = "/updateClient")
    public String updateClient(@Valid Client client, BindingResult result) {
        if (result.hasErrors()) {
            return "updateClientsData";
        }
        clientRepository.save(client);
        return "redirect:/all-clients";
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
