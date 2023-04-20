package pl.coderslab.finalproject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;

public class ClientConverter implements Converter<String, Client> {

        @Autowired
        private ClientRepository clientRepository;

        @Override
        public Client convert(String source) {
            return clientRepository.findFirstById(Long.parseLong(source));
        }
    }
